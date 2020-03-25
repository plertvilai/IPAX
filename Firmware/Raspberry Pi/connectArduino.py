#!/usr/bin/env python

import serial
import time
import RPi.GPIO as GPIO
import subprocess

led_pin = 21 #LED indicator pin for pressure status
hall_pin = 11
GPIO.setmode(GPIO.BCM)
GPIO.setup(led_pin, GPIO.OUT)
GPIO.output(led_pin, GPIO.HIGH) #default is ON
GPIO.setup(hall_pin, GPIO.IN)

ser = serial.Serial('/dev/ttyAMA0',9600)

#get initial battery level first
# file = open('/home/pi/PUV/battLeft.txt', 'r')
# battStr = file.read() #get battery level in fraction (e.g. 80% = 0.8)
# battPercent = float(battStr) #convert to float
# file.close()

# totalBatt = 44400.0 #total battery in mWh
# batt = totalBatt*battPercent #get current battery level in mWh
# eta = 0.8 #dc-dc efficiency

#flush all serial out first
ser.reset_input_buffer()
#flushing again
read_serial=ser.readline()
time.sleep(0.1)
	

def readSerialCheck():
	'''Read a serial line with error checking.'''
	read_serial=ser.readline()
	if ',' in read_serial:
		array = read_serial.split(',')
		if len(array)>=9:
			return read_serial
		else:
			readSerialCheck()
	else:
		readSerialCheck()

def setTime():
	'''Set Raspberry Pi Time from Arduino serail input.'''
	read_serial=readSerialCheck()
	unixString = read_serial.split(',')[0] #get unix time in string format
	unixT = int(unixString)
	#check whether time is correct
	while(unixT < 1554324665 or unixT > 2554324665):
		read_serial=readSerialCheck()
		unixString = read_serial.split(',')[0] #get unix time in string format
		unixT = int(unixString)
	command = 'sudo date +%%s -s @%s' %unixString
	subprocess.call(command,shell=True)
	return


#setTime()

filename = '/home/pi/PUV/ipaxData.csv'
while True:	
	read_serial = readSerialCheck()
	# Arduino serial output format
	# 'unixtime,vbatt,ibatt,vled,iled,ipi,temp,rh,pressure,waterTemp,waterPressure'
	# all in bit values
	# reading is polled every second

	#calculate battery level left
	# current = float(read_serial.split(',')[2]) #convert batt current reading to float
	# current = current*3.22 #change from bit to mA
	# batt = batt - current/3600 #note that unit is mWh; each current reading is for 1s consumption
	# battPercent_new = batt/totalBatt
	# file = open('/home/pi/PUV/battLeft.txt', 'w')
	# file.write(str(battPercent_new))
	# file.close()

	# write data to file
	# data format CSV file
	# unix time, battery percent, temperature, pressure, RH, pwoer data from Arduino
	file = open(filename, 'a')
	file.write(read_serial) #read serial has built-in \r\n
	file.close()

	pressure = float(read_serial.split(',')[8]) #convert batt current reading to float
	if pressure < -500:
		GPIO.output(led_pin, GPIO.LOW) #turn LED off when pressure drops below -500mbar
	else:
		GPIO.output(led_pin, GPIO.HIGH) #turn on otherwise



#!/usr/bin/python

#Automatic deployment for Pi Underwater Explorer Rev04.c
#updated March 17, 2020
#P. Lertvilai

# Pi takes an image every 30s and take a video every 5 mins 
# The ON/OFF cycle is controlled by Arduino on control board
# Pi does not have access to I2C line on the control board. All I2C data are transferred from Arduino through UART.
# Pi has access to a separate DS3231 RTC, which directly tells Pi the current time as hwclock

from ipaxClass import *
import time
from time import sleep
from datetime import datetime

def setDelay():
	tnow = datetime.now()
	if tnow.hour>18 or tnow.hour<6:
		return 60*5 #delay for 5 mins at night
	else:
		return 60*60 #delay for an hour during the day
	
	

#-------------------Initialization-----------------------------------#
ipax = IPAX()
if not ipax.initialize():
	print "PUE fails to initialize."

print 'Initialization success!'

def takePicture():
	
	ipax.torchOFF()
	ipax.cameraInit(shutter_speed=500,resolution = (3280,2464)) #use high resolution for still images
	ipax.ledON()
	ipax.oneShot('/home/pi/PUV/image/')
	ipax.cameraRelease() #free camera resource
	ipax.ledOFF()

def recordVid(recT):
	ipax.torchOFF()
	ipax.cameraInit(shutter_speed=750,resolution=(1640,1232)) #use 720p for video
	ipax.ledON()
	ipax.videoRec('/home/pi/PUV/image/',recT)
	ipax.cameraRelease() #free camera resource
	ipax.ledOFF()

def printInfo(delay):
	'''print info on log file.'''
	tnow = datetime.now()
	print('%d' %time.time())
	print('%d:%d' %(tnow.hour,tnow.minute))
	print('%d' %delay)
	return 
#-------------------Main Loop of the program---------------------------#
#for still image
#delayT = 20 #take still images every 20s
#vidT = 10*60/delayT #take video every 20 mins
#count = 0

#for videos
delayT = 10*60 #take video every 15 mins
vidT = 5 #take long video every hour
count = 0

time.sleep(30) #wait one minute for the power to stabilize
print(vidT)

while(1): 
	#delayT = setDelay()
	print(count)
	
	#takePicture()
	
	if count >= vidT:
		recordVid(60)
		count = 0
	else:
		count = count+1
		recordVid(30)

	time.sleep(delayT)
	#takePicture()
	

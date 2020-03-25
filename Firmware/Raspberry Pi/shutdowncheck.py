#!/usr/bin/python
 
import RPi.GPIO as GPIO
import os, time

shdn_pin = 10 
ard_pin = 24
GPIO.setmode(GPIO.BCM)
GPIO.setup(shdn_pin, GPIO.IN)
GPIO.setup(ard_pin, GPIO.IN)
 
while True:
	if (GPIO.input(shdn_pin)):
		os.system("sudo shutdown -h now")
		break
	if (GPIO.input(ard_pin)):
		os.system("sudo shutdown -h now")
		break
	time.sleep(0.5)
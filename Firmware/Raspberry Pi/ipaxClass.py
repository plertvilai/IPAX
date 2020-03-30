#!/usr/bin/python

# Library for IPAX
# P. Lertvilai
# Updated for Control Board Rev04 
# March 17, 2020

import io
import os
import time
#import cv2
import picamera
import numpy as np
import RPi.GPIO as GPIO
import datetime as dt

#------------------------pin assignment------------------------------#
#for IPAX, on-board led on pin 21 is controlled by connectArduino.py instead

button_pin = 10 #for push button
fan_pin = 27 #for fan control; not used in PUE v4.0
peri_pin = 17 #3.3V peripheral control; not useby Pi; Arduino controls all power management.
led_en_pin = 18 #low side control of LED
torch_pin = 19 # torch mode control for LED
# LED flash mode is pin 26; controlled directly through camera hardware
#hall_pin = 11 #for interrupt by Hall sensor; unused on Pi


class IPAX():

	def __init__(self):
		#GPIO
		self.buttonState = 0 #read button state at the beginning
		self.ledState = 0 #led pin state

		#file IO
		self.imageN = 30
		self.framerate = 50

		#get the next available still image number
		i = 0
		while os.path.exists("/home/pi/PUV/image/img%.5d_0.jpg" % i):
			i += 1
		self.imNum = i #use for still images

		#get the next available video number
		i = 0
		while os.path.exists("/home/pi/PUV/image/video%.5d.h264" % i):
			i += 1
		self.vidNum = i

		#camera
		self.camera = 0

		#time keeping
		self.time = time.time()
		self.recStart = 0
		self.recEnd = 0

		#others
		self.mode = 0

	def initialize(self):
		'''Initialize the GPIO pins of the instrument.
		Needs to be run at first for GPIO to function properly.
		Then, read the configuration file and set varaibles accordingly.'''
		GPIO.setmode(GPIO.BCM)
		GPIO.setup(button_pin, GPIO.IN)
		GPIO.setup(fan_pin, GPIO.OUT)
		GPIO.output(fan_pin, GPIO.LOW)
		GPIO.setup(led_en_pin, GPIO.OUT)
		GPIO.output(led_en_pin, GPIO.LOW)
		GPIO.setup(peri_pin, GPIO.OUT)
		GPIO.output(peri_pin, GPIO.HIGH) #3.3V CTL is active LOW 
		GPIO.setup(torch_pin, GPIO.OUT)

		self.buttonState = GPIO.input(button_pin)
		self.ledState = 0
		
		return True

	def ledON(self):
		'''Turn LED on.'''
		self.ledState = 1
		GPIO.output(led_en_pin, GPIO.HIGH)
		return True

	def ledOFF(self):
		'''Turn LED off.'''
		self.ledState = 0
		GPIO.output(led_en_pin, GPIO.LOW)
		return True

	def torchON(self):
		'''turn LED on torch mode.'''
		GPIO.output(torch_pin, GPIO.HIGH)
		return True

	def torchOFF(self):
		'''turn LED on torch mode.'''
		GPIO.output(torch_pin, GPIO.LOW)
		return True

	def cameraInit(self,shutter_speed=2500,resolution = (3280,2464),iso=200,awb_gains=(1.1,2.5)):
		'''Initialize camera.'''
		self.camera = picamera.PiCamera()
		self.camera.shutter_speed = shutter_speed #in microseconds
		self.camera.iso = iso
		self.camera.awb_mode = 'off'
		self.camera.awb_gains = awb_gains
		self.camera.resolution = resolution
		self.camera.flash_mode = 'on'
		self.camera.framerate = 30
		time.sleep(2) #wait for gain adjustment
		self.camera.exposure_mode = 'off'
		return True


	def cameraRelease(self):
		'''Release camera resources.'''
		print 'Closing camera'
		self.camera.close()
		#time.sleep(5)
		return True

	def oneShot(self,directory):
		'''Take one long exposure shot'''
		#self.ledON() #turn LED ON
		self.torchOFF() #make sure that torch mode is OFF
		#self.camera.capture(directory+'img%.5d_0.jpg'%(self.imNum))
		self.camera.capture(directory+'%d.jpg'%(time.time()))
		#self.ledOFF() #turn led off
		return True

	def videoRec(self,directory,recT):
		'''Take one long exposure shot'''
		#self.ledON() #turn LED ON
		self.torchOFF() #make sure that torch mode is OFF
		#self.camera.capture(directory+'img%.5d_0.jpg'%(self.imNum))
		self.camera.start_recording(directory+'%d.h264'%(time.time()))
		self.camera.wait_recording(recT)
		self.camera.stop_recording()
		#self.ledOFF() #turn led off
		return True

	def doubleShot(self,directory):
		'''Take two consecutive images. For use with PIV'''
		#self.ledON() #turn LED ON
		self.torchOFF() #make sure that torch mode is OFF
		self.camera.capture_sequence([directory+'img%.5d_0.jpg'%(self.imNum),directory+'img%.5d_1.jpg'%(self.imNum)])
		#self.ledOFF() #turn led off
		return True

	def recordInfo(self,directory,pressure,temp):
		'''Record image info to files.
		Mode == 0 -> video mode; else burst shot mode.'''
		file = open(directory+'stillAux.csv','a') 
		file.write('%.1f,%d,%.2f,%.2f\n'%(time.time(),self.imNum,pressure,temp))
		return True

	def incrementImNum(self):
		self.imNum = self.imNum+1

	def checkButtonStat(self):
		'''Check whether the button is released.
		3 is the default state where button is not pressed.
		1 is when button is kept pressed.
		4 button release
		2 button initial press'''
		buttonPress = GPIO.input(button_pin) #read button
		if buttonPress and self.buttonState: #if the button is pressed (from being pressed)
			self.buttonState = 1 #change button state
			return 1
		elif buttonPress and not self.buttonState: #if the button is pressed (from not being pressed)
			self.buttonState = 1
			return 2
		elif not buttonPress and not self.buttonState: #if the button is not pressed (from not being pressed)
			self.buttonState = 0
			return 3
		elif not buttonPress and self.buttonState: #if the button is not pressed (from being pressed)
			self.buttonState = 0
			return 4
		else:
			return 5

	def readButton(self):
		return GPIO.input(button_pin)

	def buttonCommand(self,timeOut=3):
		'''Accept command from one button.
		The timeout is in second and default to 3s.'''
		start = time.time()
		count = 0
		while(time.time()-start<timeOut):
			if self.checkButtonStat() == 2: #if button is pressed from not pressed
				count = count+1
				time.sleep(0.3) #for debouncing
			time.sleep(0.1) 
		return count

	def checkTime(self,second):
		'''check whether time has passed in second.'''
		if time.time()-self.time>second:
			self.time = time.time()
			return True
		else:
			return False
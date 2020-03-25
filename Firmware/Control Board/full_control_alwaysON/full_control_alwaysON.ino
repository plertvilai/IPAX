/* IPAX
 *  Arduino Script for testing and 
 *  for keeping the system ON all the time without low power mode
 *  March, 2020
 *  P. Lertvilai
 */

#include <DS3232RTC.h> //for DS3231 RTC
#include "LowPower.h" // for low power mode

/******MS5837 Pressure Sensor*************/
#include <Wire.h>
#include "MS5837.h"
MS5837 sensor;
/******BME280 Environmental Sensor*************/
#include <SparkFunBME280.h>
BME280 bme280Sensor; // Global temp/humidity/pressure sensor object

/**********TYSY01 Temperature Sensor***************/
#include "TSYS01.h"
#include <Wire.h>
TSYS01 temp_sensor;

/**********MCP9808 Temperature Sensor***************/
#include "Adafruit_MCP9808.h"
// Create the MCP9808 temperature sensor object
Adafruit_MCP9808 tempsensor = Adafruit_MCP9808();


//analog pin assigments
const int ibatt_pin = A0;
const int vbatt_pin = A1;
const int iled_pin = A2;
const int vled_pin = A6;
const int ipi_pin = A7;
int analog_pins[5] = {vbatt_pin,ibatt_pin,vled_pin,iled_pin,ipi_pin}; //collection of all analog pins


//digital pin assigments
const int pi_en_pin = 9; //control power to pi (but not 5V reg)
const int peri_en_pin = 8; //control 3.3V power to peripherals; ACTIVE LOW
const int hall_pin = 3; //for interrupts with hall sensor
const int signal_led_pin = 4; //on-board 0603 LED
const int alarm_pin = 2; //alarm from DS3231 RTC
const int pi_shdn_pin = 10; //pi shutdown control; HIGH = shutdown
const int fan_pin = 6; // for controlling fan


// for deployment mode
volatile int mode = 0;

// deploy time
// Note that RTC uses UTC TIME!!!
// UTC = PST + 7
int h_stt = 1; //deploy from 6pm to 6am 
int h_end = 13;
int m_stt = 17;
int m_end = 18;

// deploy status
int pi_status = 0; //indicate whether Pi is ON or not; default to OFF

void setup() {
  Serial.begin(9600);
  Serial.println("PUE Control Rev04");
  //digital pin setup 
  // all power control pins are INACTIVE by default
  pinMode(pi_en_pin,OUTPUT);
  digitalWrite(pi_en_pin,LOW);
  pinMode(signal_led_pin,OUTPUT);
  digitalWrite(signal_led_pin,HIGH);
  pinMode(pi_shdn_pin,OUTPUT);
  digitalWrite(pi_shdn_pin,LOW); 
  delay(1000);
  
  //peripheral control; the pin is active LOW
  pinMode(peri_en_pin,OUTPUT);
  digitalWrite(peri_en_pin,LOW);  //3.3V ON

  //initialize MS5837 sensor
  ms5837begin();
  // Initialize the BME280 sensor for temperture, pressure, humidity
  initBME280();

  mcp9808begin();
  // hall sensor interrupt
  attachInterrupt(digitalPinToInterrupt(hall_pin), pinISR, FALLING);

  //initialize TSYS01
  Wire.begin();
  temp_sensor.init();
  
  // RTC setup; print the time
  setSyncProvider(RTC.get);
  digitalWrite(signal_led_pin,LOW);
  Serial.println(now());
  printTime();
  
  delay(1000);
  //turn on RPi
  turnonPi();
  delay(2000);
}

void loop() {
  Serial.print(voltRead());
  sendData();
  delay(1000);
}
 




/***********************Helper Functions************************************/
void printTime(){
  Serial.print(hour());
  Serial.print(":");
  Serial.print(minute());
  Serial.print(":");
  Serial.println(second());
}

float battRead(){
  // read battery voltage
  float val = analogRead(vbatt_pin);
  return val/1024.0*3.3*2;
}

String voltRead(){
  /****** Read analog pins *******/
  //read values of all analog pins and construct a string to send via serial
  int n = sizeof(analog_pins)/sizeof(analog_pins[0]); //determine size of analog_pins first
  String dataString = String(now()); //initialize string here
  dataString += ",";
  for(int i=0;i<n;i++){
    //iterate over all analog pins
    int sensor = analogRead(analog_pins[i]); //read from each pin
    dataString += String(sensor); //add data to string
    dataString += ","; //delimited with a comma
  }

  return dataString;
}

void sendData(){
  // send BME280 data

  Serial.print(bme280Sensor.readTempC());
  Serial.print(",");
  Serial.print(bme280Sensor.readFloatHumidity());
  Serial.print(",");
  Serial.print(bme280Sensor.readFloatPressure());
  Serial.print(",");
  
  // send MS5837 data
  sensor.read(); //read data from MS5837
  Serial.print(sensor.temperature());
  Serial.print(",");
  Serial.print(sensor.pressure());
  Serial.print(",");

  // send TYSY01 data
  temp_sensor.read();
  Serial.print(temp_sensor.temperature());
  Serial.print(","); 
  
  // send MCP9808 data
  //tempsensor.wake();
  //Serial.print(tempsensor.readTempC()); //last one has to be println
  //Serial.print(",");
  Serial.println(millis());
  //Serial.println(0);
}

void shutdownPi(int thres){
  // send shutdown signal to RPi and then wait for current to drop and then cut pwr
  //Serial.println("shutdown"); //shutdown command
  digitalWrite(pi_shdn_pin,HIGH);

  digitalWrite(signal_led_pin,HIGH);
  
  delay(15000); //wait for Pi to shutdown
  //while(analogRead(ipi_pin)>thres) //wait for Pi to shutdown
  digitalWrite(pi_en_pin,LOW); //cut off power
  digitalWrite(signal_led_pin,LOW);
  pi_status = 0;
  digitalWrite(pi_shdn_pin,LOW);

}

void turnonPi(){
  //turn on RPi
  digitalWrite(pi_en_pin,HIGH);
  pi_status = 1;
}

void pinISR(){
  // hall ISR function
  digitalWrite(signal_led_pin,HIGH);
  delay(200);
  digitalWrite(signal_led_pin,LOW);
}

void blinkSignal(int n){
  for(int i=0;i<n;i++){
    digitalWrite(signal_led_pin,HIGH);
    delay(100);
    digitalWrite(signal_led_pin,LOW);
    delay(100);
  }
}

bool checkTimeHour(int hh_start, int hh_end){
  //check whether the time is between the specified hour
  int hh = hour(); // get current hour
  if(hh_end>=hh_start){
    //if the hour does not roll over a day
    return hh>=hh_start&&hh<=hh_end;
  }
  else{
    //if hour rolls over a day
    return hh>=hh_start||hh<=hh_end;
  }
}

bool checkTimeMin(int mm_start, int mm_end){
  //check whether the time is between the specified hour
  int mm = minute(); // get current hour
  if(mm_end>mm_start){
    //if the hour does not roll over a day
    return mm>=mm_start&&mm<=mm_end;
  }
  else{
    //if hour rolls over a day
    return mm>=mm_start||mm<=mm_end;
  }
}

/*******************I2C Sensors********************/

void mcp9808begin(){
  //initialize MCP9808 temperature sensor for LED temp monitoring
  tempsensor.begin(0x1F);
  tempsensor.setResolution(3);
}
void ms5837begin(){
  // Initialize MS5837 pressure sensor
  
  Wire.begin();

  // Initialize pressure sensor
  // Returns true if initialization was successful
  // We can't continue with the rest of the program unless we can initialize the sensor
  if (!sensor.init()) {
    Serial.println("MS5837 Init failed!");
  }
  else {
    Serial.println("MS5837 Init succeeded!");
  }
  
  sensor.setModel(MS5837::MS5837_30BA);
  sensor.setFluidDensity(1029); // kg/m^3 (997 freshwater, 1029 for seawater)
}


void initBME280()
{


    //commInterface can be I2C_MODE or SPI_MODE
    //specify chipSelectPin using arduino pin names
    //specify I2C address.  Can be 0x77(default) or 0x76
  
    //For I2C, enable the following and disable the SPI section
    bme280Sensor.settings.commInterface = I2C_MODE;
    bme280Sensor.settings.I2CAddress = 0x77;
  
    //For SPI enable the following and dissable the I2C section
    //bme280Sensor.settings.commInterface = SPI_MODE;
    //bme280Sensor.settings.chipSelectPin = 10;
  
    //runMode can be:
    //  0, Sleep mode
    //  1 or 2, Forced mode
    //  3, Normal mode
    bme280Sensor.settings.runMode = 3; //Forced mode
  
    //tStandby can be:
    //  0, 0.5ms
    //  1, 62.5ms
    //  2, 125ms
    //  3, 250ms
    //  4, 500ms
    //  5, 1000ms
    //  6, 10ms
    //  7, 20ms
    bme280Sensor.settings.tStandby = 0;
  
    //filter can be off or number of FIR coefficients to use:
    //  0, filter off
    //  1, coefficients = 2
    //  2, coefficients = 4
    //  3, coefficients = 8
    //  4, coefficients = 16
    bme280Sensor.settings.filter = 0;
  
    //tempOverSample can be:
    //  0, skipped
    //  1 through 5, oversampling *1, *2, *4, *8, *16 respectively
    bme280Sensor.settings.tempOverSample = 1;
  
    //pressOverSample can be:
    //  0, skipped
    //  1 through 5, oversampling *1, *2, *4, *8, *16 respectively
    bme280Sensor.settings.pressOverSample = 1;
  
    //humidOverSample can be:
    //  0, skipped
    //  1 through 5, oversampling *1, *2, *4, *8, *16 respectively
    bme280Sensor.settings.humidOverSample = 1;
    delay(10);  //Make sure sensor had enough time to turn on. BME280 requires 2ms to start up.         Serial.begin(57600);
  
    //Calling .begin() causes the settings to be loaded
    bme280Sensor.begin();

}

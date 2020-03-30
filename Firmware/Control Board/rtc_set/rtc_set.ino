#include <DS3232RTC.h>      // https://github.com/JChristensen/DS3232RTC

const int pwr_pin = 8;
const int led_pin = 4;

void setup() {
  // put your setup code here, to run once:
  pinMode(pwr_pin,OUTPUT);
  digitalWrite(pwr_pin,LOW);
  pinMode(led_pin,OUTPUT);
  digitalWrite(led_pin,HIGH);
  delay(1000);
  setSyncProvider(RTC.get);
  RTC.set(1585329620);
  digitalWrite(led_pin,LOW);

  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
    Serial.print(now());
    Serial.print("   ");
    Serial.print(hour());
    printDigits(minute());
    printDigits(second());
    Serial.print(' ');
    Serial.print(day());
    Serial.print(' ');
    Serial.print(month());
    Serial.print(' ');
    Serial.print(year());
    Serial.println();
    delay(1000);
}

void printDigits(int digits)
{
    // utility function for digital clock display: prints preceding colon and leading 0
    Serial.print(':');
    if(digits < 10)
        Serial.print('0');
    Serial.print(digits);
}

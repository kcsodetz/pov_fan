//This sketch was created using the pov.py module to 
//fill the I2C EEPROM on the POV fan
//
//LED on Pin 13 blinks once data transfer is complete
//
//Connections required:
//	Fan			Arduino
//	DATA  <--->	Analog Pin 4
//	CLK   <--->	Analog Pin 5
//	Vcc   <--->	3.3V
//	GND   <--->	GND


#include <Wire.h>

void setup()
{
  Wire.begin();        // join i2c bus (address optional for master)
  pinMode(13, OUTPUT);    
}

void loop()
{ 
  Wire.beginTransmission(0x50);
  Wire.write(0);
  Wire.write(1);
  // ####################BOILER UP!####################
  Wire.write(10);
  //----------!----------
  Wire.write(0xFF);
  Wire.write(0xFF);
  Wire.write(0x86);
  Wire.write(0xFF);
  Wire.write(0xFF);
  //----------P----------
  Wire.write(0xCF);
  Wire.write(0xB7);
  Wire.write(0xB7);
  Wire.write(0xB7);
  Wire.write(0x80);
  //----------U----------
  Wire.write(0x81);
  Wire.write(0xFE);
  Wire.write(0xFE);
  Wire.write(0xFE);
  Wire.endTransmission();
  delay(500);
  Wire.beginTransmission(0x50);
  Wire.write(16);
  Wire.write(0x81);
  //---------- ----------
  Wire.write(0xFF);
  Wire.write(0xFF);
  Wire.write(0xFF);
  Wire.write(0xFF);
  Wire.write(0xFF);
  //----------R----------
  Wire.write(0xDE);
  Wire.write(0xAD);
  Wire.write(0xAB);
  Wire.write(0xB7);
  Wire.write(0x80);
  //----------E----------
  Wire.write(0xB6);
  Wire.write(0xB6);
  Wire.write(0xB6);
  Wire.write(0xB6);
  Wire.write(0x80);
  Wire.endTransmission();
  delay(500);
  Wire.beginTransmission(0x50);
  Wire.write(32);
  //----------L----------
  Wire.write(0xFE);
  Wire.write(0xFE);
  Wire.write(0xFE);
  Wire.write(0xFE);
  Wire.write(0x80);
  //----------I----------
  Wire.write(0xBE);
  Wire.write(0xBE);
  Wire.write(0x80);
  Wire.write(0xBE);
  Wire.write(0xBE);
  //----------O----------
  Wire.write(0xE3);
  Wire.write(0xDD);
  Wire.write(0xBE);
  Wire.write(0xDD);
  Wire.write(0xE3);
  //----------B----------
  Wire.write(0xF9);
  Wire.endTransmission();
  delay(500);
  Wire.beginTransmission(0x50);
  Wire.write(48);
  Wire.write(0xC6);
  Wire.write(0xB6);
  Wire.write(0xB6);
  Wire.write(0x80);
  Wire.endTransmission();

  while(1){
    digitalWrite(13, HIGH);   // set the LED on
    delay(1000);              // wait for a second
    digitalWrite(13, LOW);    // set the LED off
    delay(1000);              // wait for a second
  }
}

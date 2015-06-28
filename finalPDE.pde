//This sketch was created using writePOV.m to fill the I2C EEPROM on the POV fan
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
Wire.send(0);
Wire.send(6);
Wire.send(15);
	Wire.send(0x80);
	Wire.send(0xF9);
	Wire.send(0xE3);
	Wire.send(0xCF);
	Wire.send(0x80);
	Wire.send(0xE0);
	Wire.send(0xDB);
	Wire.send(0xBB);
	Wire.send(0xDB);
	Wire.send(0xE0);
	Wire.send(0xBF);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0xB7);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(16);
	Wire.send(0x80);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0x83);
	Wire.send(0xFD);
	Wire.send(0xFE);
	Wire.send(0xFD);
	Wire.send(0x83);
	Wire.send(0xE3);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(32);
	Wire.send(0xCF);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xF3);
	Wire.send(0xB5);
	Wire.send(0xB6);
	Wire.send(0xBC);
	Wire.send(0xC3);
	Wire.send(0x80);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(48);
	Wire.send(0xF9);
	Wire.send(0xE3);
	Wire.send(0xCF);
	Wire.send(0x80);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0x80);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xBF);
	Wire.send(0xBF);
	Wire.send(0x80);
	Wire.send(0xBF);
	Wire.send(0xBF);
	Wire.send(0xD9);
	Wire.send(0xB6);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(64);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xCD);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xBF);
	Wire.send(0xBF);
	Wire.send(0x80);
	Wire.send(0xBF);
	Wire.send(0xBF);
Wire.send(20);
	Wire.send(0xBF);
	Wire.send(0xBF);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(80);
	Wire.send(0x80);
	Wire.send(0xBF);
	Wire.send(0xBF);
	Wire.send(0xD9);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xCD);
	Wire.send(0xDE);
	Wire.send(0xAD);
	Wire.send(0xAB);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xE2);
	Wire.send(0xDD);
	Wire.send(0xBA);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(96);
	Wire.send(0xDD);
	Wire.send(0xE3);
	Wire.send(0xCF);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xE3);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
	Wire.send(0x80);
	Wire.send(0xF9);
	Wire.send(0xE3);
	Wire.send(0xCF);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(112);
	Wire.send(0x80);
	Wire.send(0x80);
	Wire.send(0xDF);
	Wire.send(0xEF);
	Wire.send(0xDF);
	Wire.send(0x80);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0x80);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xEB);
	Wire.send(0xF7);
	Wire.send(0x80);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(128);
	Wire.send(0x81);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0xFD);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0x80);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0x80);
	Wire.send(0xF7);
	Wire.send(0xF7);
	Wire.send(0xF7);
	Wire.send(0x80);
	Wire.send(0xF3);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(144);
	Wire.send(0xB5);
	Wire.send(0xB6);
	Wire.send(0xBC);
	Wire.send(0xC3);
	Wire.send(0xBF);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xE3);
	Wire.send(0xDD);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(160);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0x80);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
	Wire.send(0xF9);
	Wire.send(0xC6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xE0);
	Wire.send(0xDB);
	Wire.send(0xBB);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(176);
	Wire.send(0xDB);
	Wire.send(0xE0);
Wire.send(6);
	Wire.send(0x9E);
	Wire.send(0xAE);
	Wire.send(0xB6);
	Wire.send(0xBA);
	Wire.send(0xBC);
	Wire.send(0x8F);
	Wire.send(0xEF);
	Wire.send(0xE0);
	Wire.send(0xEF);
	Wire.send(0x8F);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(192);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0x80);
	Wire.send(0xFD);
	Wire.send(0xFB);
	Wire.send(0xFD);
	Wire.send(0x80);
	Wire.send(0x83);
	Wire.send(0xFD);
	Wire.send(0xFE);
	Wire.send(0xFD);
	Wire.send(0x83);
	Wire.send(0x81);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0xFE);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(208);
	Wire.send(0x81);
Wire.send(11);
	Wire.send(0xDE);
	Wire.send(0xAD);
	Wire.send(0xAB);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0x81);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0xFE);
	Wire.send(0x81);
	Wire.send(0xE3);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0xDD);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(224);
	Wire.send(0xE3);
	Wire.send(0xBF);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0x80);
	Wire.send(0xF9);
	Wire.send(0xE3);
	Wire.send(0xCF);
	Wire.send(0x80);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x50);
Wire.send(240);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xDE);
	Wire.send(0xAD);
	Wire.send(0xAB);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xDD);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(0);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
	Wire.send(0xD9);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xCD);
Wire.send(11);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0x83);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(16);
	Wire.send(0xFD);
	Wire.send(0xFE);
	Wire.send(0xFD);
	Wire.send(0x83);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0x80);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xBF);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xFF);
	Wire.send(0xFF);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(32);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0x80);
	Wire.send(0xF9);
	Wire.send(0xE3);
	Wire.send(0xCF);
	Wire.send(0x80);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(48);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xDE);
	Wire.send(0xAD);
	Wire.send(0xAB);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
	Wire.send(0xD9);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(64);
	Wire.send(0xCD);
Wire.send(10);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0x80);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xD9);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(80);
	Wire.send(0xCD);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0xFF);
	Wire.send(0x80);
	Wire.send(0xF9);
	Wire.send(0xE3);
	Wire.send(0xCF);
	Wire.send(0x80);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(96);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0x80);
	Wire.send(0xDE);
	Wire.send(0xAD);
	Wire.send(0xAB);
	Wire.send(0xB7);
	Wire.send(0x80);
	Wire.send(0xDD);
	Wire.send(0xBE);
	Wire.send(0xBE);
	Wire.send(0xDD);
	Wire.send(0xE3);
	Wire.send(0xD9);
Wire.endTransmission();
delay(500);
Wire.beginTransmission(0x51);
Wire.send(112);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xB6);
	Wire.send(0xCD);
Wire.endTransmission();

  while(1){
    digitalWrite(13, HIGH);   // set the LED on
    delay(1000);              // wait for a second
    digitalWrite(13, LOW);    // set the LED off
    delay(1000);              // wait for a second
  }
}


//USE WITH ESP8266 Node-MCU
//Ayush Ghosh Oct 13, 2020

#include <SPI.h>
#include <RF24.h>
#define D1 5 // CE to pin3 NRF
#define D2 4 // CSN to pin4 NRF
#define D5 14 // SCK to pin5 NRF
#define D6 12 // MISO to pin7 NRF
#define D7 13 // MOSI to pin6 NRF
//#define D8 15 // CSN to pin4 NRF onlyif is present a PullDown resistor 3.3/4.7 Kohm

int counter = 0;

RF24 radio(D1, D2); //CE-CSN

void setup(void){
  radio.begin() ;
  radio.setPALevel(RF24_PA_MAX) ;
  radio.setChannel(0x76) ;
  radio.openWritingPipe(0xF0F0F0F0E1LL) ;
  radio.enableDynamicPayloads() ;
  radio.powerUp() ;
  
}

void loop(void){
  const char text[] = "Hello World!" ;
  radio.write(&text, sizeof(text)) ;
  delay(100) ;
  
}
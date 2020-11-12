//Use with ESP8266 Node-MCU
//By Ayush Ghosh and Steven Feng

#include <SPI.h>
#include <RF24.h>
#define D1 5 // CE to pin3 NRF
#define D2 4 // CSN to pin4 NRF
#define D5 14 // SCK to pin5 NRF
#define D6 12 // MISO to pin7 NRF
#define D7 13 // MOSI to pin6 NRF
//#define D8 15 // CSN to pin4 NRF onlyif is present a PullDown resistor 3.3/4.7 Kohm

const byte numChars = 6;
char joyMsg[numChars]; // an array to store the received data
boolean newData = false;

RF24 radio(D1, D2); //CE-CSN


void recvSerial() {
 static byte ndx = 0;
 char startMarker = 'A';
 char endMarker = 'S';
 char rc;
 
while (Serial.available() > 0 && newData == false) {
 rc = Serial.read();
  if (rc == startMarker){
    ndx = 0;
    }
 if (rc != endMarker && rc != startMarker) {
 joyMsg[ndx] = rc;
 ndx++;
 if (ndx >= numChars) {
 ndx = numChars - 1;
 }
 }
 else {
 //receivedChars[ndx] = '\0'; // terminate the string
 ndx = 0;
 newData = true;
 }
 }
}

void setup(void){
  Serial.begin(9600) ;
  
  radio.begin() ;
  radio.setPALevel(RF24_PA_MAX) ;
  radio.setChannel(0x76) ;
  radio.openWritingPipe(0xF0F0F0F0E1LL) ;
  const uint64_t pipe = 0xE8E8F0F0E1LL ;
  radio.openReadingPipe(1, pipe) ;
  
  radio.enableDynamicPayloads() ;
  radio.powerUp() ;  
}

void loop(void){
  
  //Serial.println("Starting loop. Radio on.") ;
  
  char receivedMessage[6] = {0} ;

  recvSerial();

  if (newData){
    radio.write(joyMsg, sizeof(joyMsg)) ;
    newData = false;
    }
    
  radio.startListening() ;
  
  if (radio.available()){
    radio.read(receivedMessage, sizeof(receivedMessage));
  }
    radio.stopListening() ;
    String stringMessage(receivedMessage) ;
    //encode back to Windows
  
  delay(100) ;
  
}

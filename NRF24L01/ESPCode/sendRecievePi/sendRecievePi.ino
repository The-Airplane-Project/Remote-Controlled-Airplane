//Use with ESP8266 Node-MCU
//Ayush Ghosh Oct 13, 2020

#include <SPI.h>
#include <RF24.h>
#define D1 5 // CE to pin3 NRF
#define D2 4 // CSN to pin4 NRF
#define D5 14 // SCK to pin5 NRF
#define D6 12 // MISO to pin7 NRF
#define D7 13 // MOSI to pin6 NRF
//#define D8 15 // CSN to pin4 NRF onlyif is present a PullDown resistor 3.3/4.7 Kohm
char joyMsg[6];
int counter = 0;
String a = " ";
char radioCommand[5];
int availableBytes;
char text [6];
RF24 radio(D1, D2); //CE-CSN

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
  radio.startListening() ;
  //Serial.println("Starting loop. Radio on.") ;
  
  char receivedMessage[6] = {0} ;

 int j = 0;
 while(Serial.available())
 {
   joyMsg[j] = Serial.read();
   ++j;
 }
  
  if (radio.available()){
    radio.read(receivedMessage, sizeof(receivedMessage));
    //Serial.println(receivedMessage) ;
   //Serial.println("Turning off the radio.") ;
    radio.stopListening() ;
    
    String stringMessage(receivedMessage) ;
    //String a = "123456";
    //if (stringMessage == "1423"){//Recieved message "1423" from RPi     
      ///strcpy(text, a.c_str()); //Copy string into character array
      radio.write(joyMsg, sizeof(joyMsg)) ;
      //while (Serial.available()) {
      //Serial.println("We sent our message: hehe") ;
      //}
    //}
    
  }
  
  delay(100) ;
  
}

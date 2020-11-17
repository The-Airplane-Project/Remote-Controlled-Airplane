//Use with Arduino Test only
//By Ayush Ghosh and Steven Feng

#include <SPI.h>
#include <RF24.h>
#define D1 5 // CE to pin3 NRF
#define D2 4 // CSN to pin4 NRF
#define D5 14 // SCK to pin5 NRF
#define D6 12 // MISO to pin7 NRF
#define D7 13 // MOSI to pin6 NRF
//#define D8 15 // CSN to pin4 NRF onlyif is present a PullDown resistor 3.3/4.7 Kohm

const int MSG_LEN_SERIAL = 10;

const int RAW_SERIAL_SIZE = 8;

const int DATA_SIZE = 6;

//Serial data incoming and outgoing
uint8_t incoming_ser_msg[RAW_SERIAL_SIZE] = {0};
uint8_t outgoing_ser_msg[RAW_SERIAL_SIZE] = {0};

//Radio data incoming ans outgoing
char outgoingRadio[DATA_SIZE] = {0}; // an array to store the received data
char incomingRadio[DATA_SIZE] = {0};

boolean newData = false;

char send_to_serial[MSG_LEN_SERIAL] = {0};

bool incoming_msg = false;

RF24 radio(D1, D2); //CE-CSN


void recvSerial() {
  static byte ndx = 0;
  static char startMarker = 251;
  static char endMarker = 252;
  static char rc;
  static bool stop_loop = false;
  
  for (int i = 0; i < RAW_SERIAL_SIZE; i++) {
    incoming_ser_msg[i] = 0;
  }
  
  while(Serial.available()<=0){}
  while (Serial.available() > 0 && stop_loop == false) {
    rc = Serial.read();
    if (rc == startMarker){
      ndx = 0;
    }
    if(rc != endMarker&& rc != startMarker) {
      incoming_ser_msg[ndx] = rc;
      ndx++;
      
      if (ndx >= RAW_SERIAL_SIZE) {
        ndx = RAW_SERIAL_SIZE - 1;
      }
      
    }
    if (rc == endMarker){
    ndx = 0;
    stop_loop = true;
    }
  }
  stop_loop = false;
  newData = false;
  
  for (int i = 0; i < RAW_SERIAL_SIZE; i++) {
    if (incoming_ser_msg[i] != 0) {
      //Do the error checking with crc8 and then copy into outgoingRadio here
      if (incoming_serial_valid()){
        newData = true;
        break;  
      }
    }
  }
}

bool incoming_serial_valid(){
  for (int i = 0; i < DATA_SIZE; i++){
    outgoingRadio[i] = incoming_ser_msg[i];
  }
  uint8_t crc8_total = calc_crc8(outgoingRadio, uint8_t(sizeof(outgoingRadio)));
  
  if (crc8_total == (incoming_ser_msg[6] | incoming_ser_msg[7])){
    return true; //Data is valid and outgoingRadio will be sent
  }

  //Data is invalid so message wont be sent
  return false;
}
void encode_to_Serial(){
  char startMarker = 253;
  char endMarker = 254;
  
  //Clearing the message to be sent
  for (int i = 0; i < MSG_LEN_SERIAL; i++){
    send_to_serial[i] = 0;
  }
  
  send_to_serial[0] = startMarker;
  
  //Copying incoming radio into 
  for(int i = 0; i < DATA_SIZE; i++){
    send_to_serial[i+1] = incomingRadio[i];
    }
  //uint8_t crc8_msg[DATA_SIZE] = {0};
  //for (uint8_t i = 0; i < DATA_SIZE; i++) {
  //  crc8_msg[i] = incomingRadio[i];
  //}
  uint8_t crc8_total = calc_crc8(incomingRadio, uint8_t(sizeof(incomingRadio)));
  send_to_serial[DATA_SIZE+1] = (crc8_total & 0b11110000);
  send_to_serial[DATA_SIZE+2] = (crc8_total & 0b00001111);
  send_to_serial[DATA_SIZE+3] = endMarker;
}

uint8_t calc_crc8(uint8_t *datagram, uint8_t len) {
  uint8_t crc = 0;
  for (uint8_t i = 0; i < len; i++) {
    uint8_t inbyte = datagram[i];
    for (uint8_t j = 0; j < 8; j++) {
      uint8_t mix = (crc ^ inbyte) & 0x01;
      crc >>= 1;
      if (mix)
        crc ^= 0x8C;
      inbyte >>= 1;
    }
  }
  return crc;
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
  
  recvSerial();
  
  if (newData){
    radio.write(outgoingRadio, sizeof(outgoingRadio)) ;
    
    //Testing part
    incomingRadio[0] = outgoingRadio[0];
    incomingRadio[1] = outgoingRadio[1];
    incomingRadio[2] = outgoingRadio[2];
    incomingRadio[3] = outgoingRadio[3];
    incomingRadio[4] = outgoingRadio[4];
    incomingRadio[5] = outgoingRadio[5];
    
    //
    newData = false;
    }
    
  radio.startListening();
  
  if (radio.available()){
    //Deactivated cause of test
    //radio.read(incomingRadio, sizeof(incomingRadio));
    incoming_msg = true;
  }
    radio.stopListening();
    //delay(50);


    //testing part
    /*incomingRadio[0] = 250;
    incomingRadio[1] = 153;
    incomingRadio[2] = incoming_ser_msg[2];
    incomingRadio[3] = incoming_ser_msg[3];
    incomingRadio[4] = 212;
    incomingRadio[5] = random(0, 250);
    */

    //Testing part
    //int test = random (0, 1000);
    //if (test > 500){
    //incoming_msg = false;
    //}
    
    //incoming_msg = true;
    
    //
  if (incoming_msg){
    encode_to_Serial();
    for (int i = 0; i < MSG_LEN_SERIAL; i++){
      Serial.write(send_to_serial[i]);
    }
    Serial.flush();
    //delay(50);
    
  } 
    
    
}

/*
 * This code performs a register read cycle from the ENC28J60 Ethernet Controller chip. This acts as a method to check that the chip is functional.
 * AUTHOR: Sam Maxwell
 * DATE CREATED: 24/04/2018
 */

//LIBRARIES
#include <SPI.h>

//DEFINITIONS
#define ENC_CS 10   //The Arduino Pin used to control the Chip select line of the ENC28J60
#define ENC_R 17    //The ENC28J60 Reset Pin

//VARIABLES
int enc_addr = 0x0C;   //The address of the Control Register to be read
int enc_opcode = B000;  //The opcode used to read from a control Register

//SETUP CODE
void setup() {
  //Initializing the Serial Communication Library
  Serial.begin(115200);
  
  //Setting up the Control Pin of the ENC28J60
  pinMode(ENC_CS, OUTPUT);
  digitalWrite(ENC_CS, HIGH);

  //Setting the Reset Pin and Resetting the Chip
  pinMode(ENC_R, OUTPUT);
  digitalWrite(ENC_R, LOW);
  delay(1000);
  digitalWrite(ENC_R, HIGH);

  //Initializing the SPI BUS
  SPI.begin();

  //Informing the User that Initialization has been completed
  Serial.println("Initialization completed");
}

//MAIN CODE
void loop() {
  Serial.println("Beginning Register Read Cycle");
  
  digitalWrite(ENC_CS, LOW);  //Selecting the Ethernet Chip
  byte command_byte = B00000000 | (enc_opcode << 5);
  command_byte = command_byte | enc_addr;
  SPI.transfer(command_byte);
  Serial.print("Data Sent: ");
  Serial.println(command_byte, BIN);

  byte recieved_byte = SPI.transfer(0x00);

  digitalWrite(ENC_CS, HIGH);

  Serial.print("Data Recieved: ");
  Serial.println(recieved_byte, BIN);

  delay(10000);
}

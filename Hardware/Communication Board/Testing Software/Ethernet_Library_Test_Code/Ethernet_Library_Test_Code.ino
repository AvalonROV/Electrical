/*
 * This code initiates an interface with the ENC28J60 Ethernet Controller using the Arduino UIPEthernet library.
 * This code is specifically written for the Arduino Due and as such will not work with other Arduino Boards,
 * to ensure this code is compatible with your hardware you must ensure the Chip Select pin is set to the correct value.
 */

//MODULES
#include <SPI.h>
#include <UIPEthernet.h>
EthernetUDP udp;

//DEFINITIONS
//ENC28J60 Definitions
#define ENC_R 17
#define ENC_CS 10

//Ethernet and UDP Definitions
#define ETH_CS 10   //The digital pin on the Arduino Due used to control the Ethernet Controllers Chip Select Pin
#define ETH_BUFF_SIZE 1024  //The size of the buffer used to store communications with the Ethernet Controller
#define SRC_PRT 5000  //The Port the Arduino is listening on
#define SRC_IP 192,168,1,68 //The IP Address of the ROV
#define DST_PRT 9999  //The Port the Arduino is sending to
#define DST_IP 192,168,1,74 //The IP Address of the Control Computer

//FUNCTIONS
/*
 * PURPOSE: Sends a UDP Packet to a specified IP and Port with a specified message
 */
int send_packet(IPAddress ip, uint16_t port, char* message){
  int success = 0;  //Variable to track successful message transmission
  success = udp.beginPacket(ip, port);
  success = udp.println(message);
  success = udp.endPacket();
  return(success);
}

//VARIABLES
uint8_t mac[6] = {0x00,0x01,0x02,0x03,0x04,0x05};

//SETUP CODE
void setup(void){
  //Beginning Serial Interface for Debugging
  Serial.begin(115200);

  //Setting the Reset Pin and Resetting the ENC28J60
  pinMode(ENC_R, OUTPUT);
  digitalWrite(ENC_R, LOW);
  delay(1000);
  digitalWrite(ENC_R, HIGH);

  //Initializing Ethernet Controller
  Serial.println("Initializing Ethernet Controller");
  Ethernet.begin(mac, IPAddress(SRC_IP));
  int success = udp.begin(SRC_PRT);

  if(success == 0){
    Serial.println("Failed to Initialize UDP Port");
    while(1);
  }
  Serial.println("Ethernet Controller Initialized");
}

//MAIN LOOP CODE
void loop(){
  //Attempting to Send a Packet using the Ethernet Controller
  int success = send_packet(IPAddress(DST_IP), DST_PRT, "Hello world from the ROV!");
  Serial.println(success);
  delay(1000);
}


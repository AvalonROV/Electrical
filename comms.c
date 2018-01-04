
#include <SPI.h>
#include <Ethernet.h>
#include <EthernetUdp.h>

#define LOCALPORT 8000 // This is the port to listen on
#define LOCALIP 5 //This is the last quad of the ip address of the ROV
#define ARRYLEN 12 //This is the length of the array (send and receive) in bytes

EthernetUDP udp; //In all good practice this shouldn't be global, but the Arduino language means it has to be (unless we put our main loop in setup).

void commsSetup(void){ // Call this in setup
	IPAddress ip(192, 168, 1, LOCALIP);
	Ethernet.begin({0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED}, ip); // This uses the mac address from example code.
	udp.begin(LOCALPORT);
	
	return &udp;
}

bool comms(uint8_t* sendArry, uint8_t* receiveArry, uint8_t* tempArry){ // Returns 1 if the receive packet has changed. Should be run at least every ms.
	bool changeR = 0, changeS = 0; // Assume no change in the received data or in the sent data
	uint8_t oldArry[ARRYLEN];
	int i;
	if(millis()%10 == 0){
		for(i = 0; i < ARRYLEN; i++)
			oldArry[i] = receiveArry[i]; // Puts the current receive array into another array
		while(!udp.parsePacket()); // Does nothing until a packet is received
		udp.read(receiveArry, ARRYLEN); //Reads the packet into the array
		for(i = 0; i < ARRYLEN; i++){ // This checks for a difference in both the data to be sent and the data to send
			changeR = (oldArry[i] != receiveArry[i]) | changeR; 
			changeS = (tempArry[i] != sendArry[i]) | changeS;
		}
		if(changeS){
			udp.beginPacket(udp.remoteIP(), udp.remotePort()); //Starts a packet addressed to the sender of the last packet
			udp.write(sendArry, ARRYLEN); // Writes the array into the packet
			udp.endPacket(); //Closes packet
			for(i = 0; i < ARRYLEN; i++)
				tempArry[i] = sendArry[i]; // Changes the tempArry to match the old sendArry
		}
	}
	return changeR;
}


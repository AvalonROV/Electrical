#include "ESP8266WiFi.h"
#include <ESP8266Ping.h>

// WiFi parameters to be configured
const char* ssid = "Test";
const char* password = "0160824160";

void setup(void)
{ 
  Serial.begin(9600);
  // Connect to WiFi
  WiFi.begin(ssid, password);

  // while wifi not connected yet, print '.'
  // then after it connected, get out of the loop
  while (WiFi.status() != WL_CONNECTED) {
     delay(500);
     Serial.print(".");
  }
  //print a new line, then print WiFi connected and the IP address
  Serial.println("");
  Serial.println("WiFi connected");
  // Print the IP address
  Serial.println(WiFi.localIP());
}
void loop() {
  //Setting up the IP Address to Ping
  IPAddress ip (192, 168, 1, 1);
  Serial.println("\nRemote IP Setup");

  while(1){
    //Printing the Signal Strength to the Serial Monitor every second
    long rssi = WiFi.RSSI();
    Serial.print("RSSI:");
    Serial.println(rssi);
  
    //Checking if the device responds to a Ping
    bool ret = Ping.ping(ip);
    Serial.print("Ping Successful: ");
    Serial.println(ret);
  
    delay(1000); 
  }
}

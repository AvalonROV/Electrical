/*
 * This the firmware for the ESP8266 on the Avalon Communication Board. It performs wireless communications with a seismometer
 * as well as driving the ultrasonic transducer that is used to wirelessly communicate with the release mechanism circuit board.
 * The D-duino V4 Board is programmed using the ESP-Duino Board type.
 * DATE: 12/06/2018
 * AUTHOR: Sam Maxwell
 */
//LIBRARIES
#include "ESP8266WiFi.h"
#include "ESP8266HTTPClient.h"
#include <Wire.h>

//DEFINITIONS
//Ultrasonic Transducer Driver
#define ULTRA_PIN 5   //The pin used to control the ultrasonic transducer driver circuit
#define ULTRA_FREQ 25000    //The frequency the ultrasonic transducer is driven at in Hz
#define ULTRA_PULSE_TIME 1  //The pulse chain delay for the Ultrasonic Transducer in Seconds

//I2C Communications
#define SLV_ADDR 0x20   //The I2C Address of this device

//VARIABLES
//Ultrasonic Transducer
int ultra_delay_time = (1/ULTRA_FREQ) / 2;
int ultrasonic_pulse_code = B10101101;

//Seismometer Connection
const char* ssid = "UL2";
const char* password = "DarioACS124";
const char* web_address = "http://192.168.0.102:8080/index.html";
HTTPClient http;
String webpage_data;

//FUNCTIONS
//GENERAL
int read_bit(int b, int index){
  int result = 0;
  int and_byte = B00000001 << index;
  int result_byte = and_byte & b;
  if(result_byte > 0){
    result = 1;
  }
  return result;
}

//ULTRASONIC TRANSDUCER DRIVER
//Drives the Ultrasonic Transducer at the specified frequency (ULTRA_FREQ) for the specified pulse_time in seconds
void pulse_ultrasonic(){
  int current_time = micros();
  while(micros() - current_time < (ULTRA_PULSE_TIME / 1E6)){
    digitalWrite(ULTRA_PIN, LOW);
    delayMicroseconds(ultra_delay_time);
    digitalWrite(ULTRA_PIN, HIGH);
    delayMicroseconds(ultra_delay_time);
  }
}

//Sends a binary sequency wirelessly using the Ultrasonic Transducer
void bin_pulse_ultrasonic(byte pulse_chain){
  int index = 0;
  for (index; index < 8; index ++){
    if(read_bit(ultrasonic_pulse_code, index) == true){
      pulse_ultrasonic();
    }
    else{
      delayMicroseconds(ULTRA_PULSE_TIME / 1E6);
    }
  }
}

//SEISMOMETER
//Connects to the Seismometer WIFI Network
void connect_to_seis(const char* ssid, const char* password){
  //Connecting to the Seismometer WIFI
  WiFi.begin(ssid, password);

  //Waiting for the WIFI to connect
  Serial.println("Connecting to WIFI network");
  while (WiFi.status() != WL_CONNECTED) {
     delay(500);
     Serial.print(".");
  }
  Serial.println("Connected");

  //Printing the ESP IP Address
  Serial.print("IP Address: ");
  Serial.println(WiFi.localIP());
}

//Reads the Seismometer Webpage
String read_webpage(const char* web_address){
  String webpage_contents;
  
  //Connecting to the Webpage
  http.begin(web_address);
  int error = http.GET();

  //If no errors have occured in the http connection
  if (error == HTTP_CODE_OK){
    //Reading the webpage contents
    webpage_contents = http.getString();
    //Serial.print("Webpage Contents: ");
    //Serial.println(webpage_contents);
  }
  else{
    Serial.println("Cannot read webpage");
  }

  //Ending the HTTP Connection
  http.end();

  //Returning the Webpage Contents
  return webpage_contents;
}

//Extracts the information from the Seismometer Webpage
String get_webpage_data(String webpage_contents){
  int start_index = webpage_contents.indexOf("<p>") + 3;
  int end_index = webpage_contents.indexOf("\n", start_index) + 1;
  String data_string = webpage_contents.substring(start_index, end_index);
  return data_string;
}

//I2C COMMUNICATION
//Sends webpage data over I2C on request
void send_i2c_data(void){
  char buff[100];
  webpage_data.toCharArray(buff, 100); 
  Wire.write(buff);
  Serial.println("Data Requested");
}

//SETUP
void setup(void){
  //Beginning Serial Communications
  Serial.begin(9600);

  //Connecting to the Seismometer WIFI Network
  connect_to_seis(ssid, password);

  //Beginning I2C Communications
  Wire.begin(SLV_ADDR);

  //Assigning the I2C Request Event Function
  Wire.onRequest(send_i2c_data);
}

//MAIN CODE
void loop(void){
  //Reading the Webpage
  String webpage_contents = read_webpage(web_address);
  webpage_data = get_webpage_data(webpage_contents);
  Serial.println(webpage_data);
  delay(100);
}


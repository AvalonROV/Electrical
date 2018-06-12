/*
 * This program tests the operation of the Analogue Video Switching on the Avalon Communications Board. For more information please visit the Avalon Github
 * DATE: 11/06/2018
 * AUTHOR: Sam Maxwell
 */

//DEFINITIONS
#define VID_CTRL_1 A6
#define VID_CTRL_2 A7

//FUNCTIONS
void switch_camera(int cam_index){
  switch(cam_index){
    case 0:
      //Switching to Camera One
      Serial.println("hHi");
      digitalWrite(A6, LOW);
      digitalWrite(A7, HIGH);
      break;
    case 1:
      //Switching to Camera Two
      digitalWrite(A6, HIGH);
      digitalWrite(A7, LOW);
      break;
    case 2:
      //Switching to Camera Three
      digitalWrite(A6, HIGH);
      digitalWrite(A7, HIGH);
      break;
  }
}

//SETUP CODE
void setup(void){
  //Beginning Serial Communications
  Serial.begin(9600);
  
  //Defining the Pin States of the Control Pins
  pinMode(A6, OUTPUT);
  pinMode(A7, OUTPUT);

  //Initially setting to camera one
  switch_camera(0);
}

//MAIN CODE
void loop(void){
  for(int index = 0; index < 3; index ++){
    //Switching Camera Feed Every Five Second
    delay(5000);
    Serial.print("Camera Index: ");
    Serial.println(index);
    switch_camera(index);
  }
}


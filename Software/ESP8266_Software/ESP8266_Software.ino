/*
 * This the firmware for the ESP8266 on the Avalon Communication Board. It performs wireless communications with a seismometer
 * as well as driving the ultrasonic transducer that is used to wirelessly communicate with the release mechanism circuit board.
 * DATE: 12/06/2018
 * AUTHOR: Sam Maxwell
 */

//DEFINITIONS
//Ultrasonic Transducer Driver
#define ULTRA_PIN 5   //The pin used to control the ultrasonic transducer driver circuit
#define ULTRA_FREQ 25000    //The frequency the ultrasonic transducer is driven at in Hz
#define ULTRA_PULSE_TIME 1  //The pulse chain delay for the Ultrasonic Transducer in Seconds

//VARIABLES
//Ultrasonic Transducer
int ultra_delay_time = (1/ULTRA_FREQ) / 2;
byte ultrasonic_pulse_code = B10101101;

//FUNCTIONS
//Ultrasonic Transducer Driver
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
    byte current_state = pulse_chain[index];
    if(current_state == true){
      pulse_ultrasonic();
    }
    else{
      delayMicroseconds(ULTRA_PULSE_TIME / 1E6);
    }
  }
}


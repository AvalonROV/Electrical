#include <SPI.h>         // needed for Arduino versions later than 0018
#include <Ethernet.h>
#include <EthernetUdp.h>         // UDP library from: bjoern@cs.stanford.edu 12/30/2008
#include <Wire.h>
#include <SoftwareSerial.h>

SoftwareSerial BTSerial(12, 11); // RX | TX

#define gr_speed 100
#define fun_speed 255
#define led_brightness 50

byte mac[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
IPAddress ip(192, 168, 1, 5);
unsigned int localPort = 8000;
unsigned int localPort2 = 12345;
EthernetUDP Udp;


int gr_dir = 2;
int gr_pwm = 3;
int fun_dir = 4;
int fun_pwm = 5;
int leds = 6;
char packetBuffer[60];

void gripper(char a)
{
  //Serial.println(a);
  if (a == '1')
  {
    Serial.println("LOW");
    analogWrite(gr_pwm, gr_speed);
    digitalWrite(gr_dir, LOW);
  }
  else if (a == '2')
  {
    Serial.println("HIGH");
    analogWrite(gr_pwm, gr_speed);
    digitalWrite(gr_dir, HIGH);
  }
  else
    analogWrite(gr_pwm, 0);
}

void funnel(char a)
{
  if (a == '1')
  {
    analogWrite(fun_pwm, fun_speed);
    digitalWrite(fun_dir, LOW);
  }
  else if (a == '2')
  {
    analogWrite(fun_pwm, fun_speed);
    digitalWrite(fun_dir, HIGH);
  }
  else
    analogWrite(fun_pwm, 0);
}

void light(char a)
{
  if (a == '1')
    analogWrite(leds, led_brightness);
  else
    analogWrite(leds, 0);
  delay(10);
}

void setup()
{
  Ethernet.begin(mac, ip);
  Udp.begin(localPort);

  Wire.begin();
  Serial.begin(57600);

  pinMode(gr_dir, OUTPUT);
  pinMode(gr_pwm, OUTPUT);
  pinMode(fun_dir, OUTPUT);
  pinMode(fun_pwm, OUTPUT);
  pinMode(leds, OUTPUT);

  
  /*Serial.println("Checking I2C connection...");

  
  Wire.beginTransmission(8);
  Wire.write(2);
  byte error = Wire.endTransmission();
  if (!error)
  {
    Serial.println("I2C connection established.");
    /*Udp.beginPacket(Udp.remoteIP(), Udp.remotePort());
      Udp.write("I2C connection established.");
      Udp.endPacket();
  }*/
  
  Serial.println("Starting...");

  pinMode(9, OUTPUT);  // this pin will pull the HC-05 pin 34 (key pin) HIGH to switch module to AT mode
  digitalWrite(9, LOW);
  //BTSerial.begin(9600);
}

void loop()
{
  if (Udp.parsePacket())
  {
    Udp.read(packetBuffer, 60);
    Serial.println(packetBuffer);
  }

  gripper(packetBuffer[40]);
  funnel(packetBuffer[37]);
  light(packetBuffer[43]);
  char BT_status = packetBuffer[49];

  if(BT_status == '1')
  {
    if(BTSerial.available())
    {
      Serial.write(BTSerial.read());
      //Udp.beginPacket(Udp.remoteIP(), 12345);
      //Udp.write(BTSerial.read());
      //Udp.endPacket();
    }
  }
  Wire.beginTransmission(8);
  Wire.write(packetBuffer);
  Wire.endTransmission();

  //for (int i = 0; i < 50; i++)
  //  packetBuffer[i] = '0';
  
  delay(10);
}

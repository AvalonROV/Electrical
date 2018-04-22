#include <SPI.h>         // needed for Arduino versions later than 0018
#include <Ethernet.h>
#include <EthernetUdp.h>
#include <Servo.h>

byte mac[] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
IPAddress ip(192, 168, 1, 5);
unsigned int localPort = 8000;
EthernetUDP Udp;

char packetBuffer[60];
String tmp = "";

Servo T1, T2, T3, T4, T5, T6;

#define gripper 8
#define lift_bag 9

void setup()
{
  Ethernet.begin(mac, ip);
  Udp.begin(localPort);

  pinMode(gripper, OUTPUT);
  pinMode(lift_bag, OUTPUT);
  
  Serial.begin(57600);

  T1.attach(2);
  T2.attach(3);
  T3.attach(4);
  T4.attach(5);
  T5.attach(6);
  T6.attach(7);

  T1.writeMicroseconds(1500);
  T2.writeMicroseconds(1500);
  T3.writeMicroseconds(1500);
  T4.writeMicroseconds(1500);
  T5.writeMicroseconds(1500);
  T6.writeMicroseconds(1500);

  Serial.println("Starting...");
}

int Motor(int index, int flip) // if thruster spins in wrong direction set flip to 1, else set it to 0
{
  int x;
  //tmp = str(packetBuffer[index]) + str(packetBuffer[index+1]) +str(packetBuffer[index+2])+str(packetBuffer[index+3]);
  //x=tmp.toInt();
  x = ((packetBuffer[index] - '0') * 1000);
  x += ((packetBuffer[index + 1] - '0') * 100);
  x += ((packetBuffer[index + 2] - '0') * 10);
  x += (packetBuffer[index + 3] - '0');
  if (x < 1100 || x > 1900)
    x = 1500;
  Serial.println(x);
  return x;
}

void loop()
{
  if (Udp.parsePacket())
  {
    Udp.read(packetBuffer, 60);
    Serial.println(packetBuffer);
  }
  T1.writeMicroseconds(Motor(1, 0));
  T2.writeMicroseconds(Motor(7, 0));
  T3.writeMicroseconds(Motor(13, 0));
  T4.writeMicroseconds(Motor(19, 0));
  T5.writeMicroseconds(Motor(25, 0));
  T6.writeMicroseconds(Motor(31, 0));

  digitalWrite(gripper, (packetBuffer[32] == '1')? HIGH:LOW);
  digitalWrite(lift_bag,(packetBuffer[33] == '1')? HIGH:LOW);
  
  //for (int i = 0; i < 50; i++)
  //  packetBuffer[i] = '0';

  delay(10);
}

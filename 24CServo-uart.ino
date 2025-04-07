#include <Arduino.h>

bool UARTWrite(unsigned char reg_addr,unsigned char date)
{
  unsigned char date1 = 0;
  unsigned char date2 = 0;
  unsigned char date3 = 0;
  reg_addr = 64 + reg_addr;
  date1 = date/100 + 48;
  date2 = (date%100)/10 + 48;
  date3 = date%10 + 48;
  Serial.write(0x24);
  Serial.write(reg_addr);
  Serial.write(date1);
  Serial.write(date2);
  Serial.write(date3);
  Serial.write(0x23);
  delay(100);
  return true;  
}

void setup(){
  Serial.begin(9600);
} 

void loop(){
  UARTWrite(1,0);
  delay(2000);
  UARTWrite(1,180);
  delay(2000);
   
}

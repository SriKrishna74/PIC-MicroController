/*#include<pic.h>
#define _XTAL_FREQ 20000000
void main()
{
  TRISA0 = 1;
  TRISB0 = 0;
  ADCON1 = 0b00000000;
 while(1)
 {
   if(RA0 == 1)
   {
      RB0 = 1;
   }
  else
   {
     RB0 = 0;
   }
 }
}*/
/*#include<pic.h>
//#define _XTAL_FREQ 20000000
void main()
{
 //PORTB = 0X00;
 TRISB = 0b11111111;
 TRISD = 0b00000000;
  while(1)
 {
  if(RB0 == 1)
   {
     RD0 = 1;
   }
  else if(RB1 && RB2 == 1)
   {
     RD0 = 0;
     RD1 = 1;
   }
  else if(RB3 || RB4 == 1)
   {
     RD0 = 0;
     RD1 = 0;
     RD2 = 1;
   }
  else if(RB5 == 1)
   {
      RD0=0;
      RD1=0;
      RD2=0; 
   }
 }
}*/

#include <pic.h>

void main()
{
    TRISB = 0b11111111; // Set PORTB pins as inputs
    TRISD = 0b00000000; // Set PORTD pins as outputs
    
    while(1)
    {
        if(RB0 == 1)
        {
            RD0 = 1;
            RD1 = 0;
            RD2 = 0;
        }
        else if(RB1 == 1 && RB2 == 1)
        {
            RD0 = 0;
            RD1 = 1;
            RD2 = 0;
        }
        else if(RB3 == 1 || RB4 == 1)
        {
            RD0 = 0;
            RD1 = 0;
            RD2 = 1;
        }
        else
        {
            RD0 = 0;
            RD1 = 0;
            RD2 = 0;
        }
    }
}

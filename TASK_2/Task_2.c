#include<pic.h>
#define _XTAL_FREQ 20000000

void main()
{
 TRISB0 = 1; // RB0 AS INPUT
 TRISB1 = 0; // RB1 AS OUTPUT
 int count = 0;
  while(1)
  { 
    int count = 0;
   if(RB0 == 1)
   { 
    while(RB0==0)
    {
    int count = count+1;
    } 
if(count == 1)
{ 
  RB1 = 1;
}
else if(count == 2)
{
 RB1 = 0;
}
else if(count == 3)
{
 RB1 = 1;
}
else 
{
RB1 = 0;
}
}
}
}
  

/*#include <pic.h>
#define _XTAL_FREQ 20000000

void main()
{
    PORTB = 0X00;
    TRISB0 = 1; // RB0 as input
    TRISB1 = 0; // RB1 as output
    int count = 0;

    while(1)
    {
        if(RB0 == 1)
        {
            __delay_ms(50); // Debounce delay
            if(RB0 == 1) {
                count++;
                if(count > 3) {
                    count = 0; // Reset count
                }
            }
        }

        switch(count) {
            case 1:
            case 3:
                RB1 = 1;
                break;
            default:
                RB1 = 0;
                break;
        }
    }
}
*/
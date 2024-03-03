#include <pic.h>

void main()
{
    ADCON1 |= 0b00000110; // Configure all pins as digital I/O
    
    TRISA0 = 1;
    TRISA1 = 0; 
    
    while(1)
    {
        if(RA0 == 0)
        {
            RA1 = 1;
        }
        else
        {
            RA1 = 0;
        }
    }
}

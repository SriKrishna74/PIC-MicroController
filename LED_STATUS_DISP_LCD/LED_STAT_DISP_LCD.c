#include<pic.h>
#define _XTAL_FREQ 20000000

#define RS RB0
#define RW RB1
#define EN RB2

void lcd_data(unsigned char data)
{ 
  PORTB = (data&0xF0);
  RW = 0;
  RS = 1;
  EN = 1;
  __delay_ms(5);
  EN = 0;
  PORTB = ((data<<4)&0xF0);
  RW = 0;
  RS = 1;
  EN = 1;
  __delay_ms(5);
  EN = 0;
}

void lcd_cmd(unsigned char cmd)
{
  PORTB = (cmd&0xF0);
  RW = 0;
  RS = 0;
  EN = 1;
  __delay_ms(5);
  EN = 0;
  PORTB = ((cmd<<4)&0xF0);
  RW = 0;
  RS = 0;
  EN = 1;
  __delay_ms(5);
  EN = 0;
}
void lcd_string(const unsigned char *string)
{
  while(*string)
  {
    lcd_data(*string++);
  }
}
void init()
{
  lcd_cmd(0x02);
  lcd_cmd(0x28);
  lcd_cmd(0x06);
  lcd_cmd(0x0c);
  lcd_cmd(0x01);
}
void main()
{
  TRISB = 0x00;
  TRISC = 0x0F;	
  init();
  lcd_cmd(0x80);
  lcd_string("LED STATUS");
  lcd_cmd(0XC0);
  lcd_string("LED1:");
  lcd_cmd(0xc9);
  lcd_string("LED2:");
  lcd_cmd(0xd0);
  lcd_string("LED3:");
  lcd_cmd(0xd9);
  lcd_string("LED4:");
	while(1)
	{ 
		if(RC0 == 1)
		{
			RC4 = 1;
			lcd_cmd(0xc5);
			lcd_string("ON ");
		}
		else
		{
		   RC4 = 0;
		   lcd_cmd(0xc5);
		   lcd_string("OFF");
		}
		
		if(RC1 == 1)
		{
			RC5 = 1;
			lcd_cmd(0xcC);
			lcd_string("ON ");
		}
		else
		{
		   RC5 = 0;
		   lcd_cmd(0xcC);
		   lcd_string("OFF");
		}
		
		if(RC2 == 1)
		{
			RC6 = 1;
			lcd_cmd(0xD5);
			lcd_string("ON ");
		}
		else
		{
		   RC6 = 0;
		   lcd_cmd(0xD5);
		   lcd_string("OFF");
		}
		
		if(RC3 == 1)
		{
			RC7 = 1;
			lcd_cmd(0xDC);
			lcd_string("ON ");
		}
		else
		{
		   RC7 = 0;
		   lcd_cmd(0xDC);
		   lcd_string("OFF");
		}
		
     
}
}

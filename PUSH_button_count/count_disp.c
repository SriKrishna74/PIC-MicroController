#include<pic.h>
#include<stdio.h>
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
  TRISC0 = 1;
  init();
  int count = 0;
  lcd_cmd(0x80);
  lcd_string("COUNT DISPLAY");
	while(1)
	{ 
      //lcd_cmd(0xc0);
      if(RC0 == 1)
      {
	     lcd_cmd(0xc0);
	     count = count+1;
         lcd_data((count / 10) + 0x30);
         lcd_data((count % 10) + 0x30);
         while(RC0 == 1);
      }
}
}

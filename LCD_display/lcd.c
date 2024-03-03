//---------------- 4-bit data line--------------------------

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
  init();
	while(1)
	{ 
      //lcd_cmd(0x80);
      lcd_string("srikrishna");
      lcd_string(" G");
      //lcd_string('Pumo Tech' , 9);
      //lcd_cmd(0x90);
      //lcd_string('FUN1:' , 5);
      //lcd_cmd(0x9B);
      //lcd_string('FUN2:' , 5);
}
}

//--------------------- 8-bit data line-------------------------

/*#include<pic.h>
#define _XTAL_FREQ 20000000

#define RS RC0
#define RW RC1
#define EN RC2

void lcd_data(unsigned char data)
{ 
  PORTB = data;
  RW = 0;
  RS = 1;
  EN = 1;
  __delay_ms(50);
  EN = 0;
  
}

void lcd_cmd(unsigned char cmd)
{
  PORTB = cmd;
  RW = 0;
  RS = 0;
  EN = 1;
  __delay_ms(50);
  EN = 0;
}

void lcd_string(const unsigned char *string , unsigned char length)
{
  unsigned char i;
  for(i = 0;i<length;i++)
  {  
    lcd_data(string[i]);
  }
} 
void init()
{
  lcd_cmd(0x38);
  lcd_cmd(0x06);
  lcd_cmd(0x0c);
  lcd_cmd(0x01);
}
void main()
{
  TRISB = 0x00;
  TRISC = 0X00;
  init();
	while(1)
	{ 
      lcd_cmd(0x84);
      lcd_string("Pumo Tech",9);
      lcd_cmd(0x90);
      lcd_string("FUN1:",5);
      lcd_cmd(0x9B);
      lcd_string("FUN2:",5);
}
}*/
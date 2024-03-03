#include<pic.h>
#define _XTAL_FREQ 10000000
#define RS RC0
#define RW RC1
#define EN RC2

#define C1 RD0
#define C2 RD1
#define C3 RD2

#define R1 RC4
#define R2 RC5
#define R3 RC6
#define R4 RC7

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

void keypad()
{
	C1=1;C2=0;C3=0;
	if(R1==1)
	{
		lcd_data('1');
		while(R1==1);
	}
	if(R2==1)
	{
		lcd_data('4');
		while(R2==1);
	}
	if(R3==1)
	{
		lcd_data('7');
		while(R3==1);
	}
	if(R4==1)
	{
		lcd_data('*');
		while(R4==1);
	}
	
	C1=0;C2=1;C3=0;
	if(R1==1)
	{
		lcd_data('2');
		while(R1==1);
	}
	if(R2==1)
	{
		lcd_data('5');
		while(R2==1);
	}
	if(R3==1)
	{
		lcd_data('8');
		while(R3==1);
	}
	if(R4==1)
	{
		lcd_data('0');
		while(R4==1);
	}
	
	C1=0;C2=0;C3=1;
	
    if(R1==1)
	{
		lcd_data('3');
		while(R1==1);
	}
	if(R2==1)
	{
		lcd_data('6');
		while(R2==1);
	}
	if(R3==1)
	{
		lcd_data('9');
		while(R3==1);
	}
	if(R4 == 1)
	{
		lcd_data('#');
		while(R4==1);
	}
}
void main()
{
  TRISD0 = 0;
  TRISD1 = 0;
  TRISD2 = 0;
  PORTD = 0X00;
  TRISB = 0x00;
  TRISC = 0XF0;
  init();
  lcd_cmd(0x80);
  lcd_string("KEYPAD INPUT",12);
  lcd_cmd(0xC0);
  
	while(1)
	{ 
      keypad();
      
      
}
}
// Write a program to interface LPC2148 ARM7 processor to blink the LED's one after the other wim delay of 50000.000.
#include <LPC21xx.h> 
unsigned int delay;
int main(){
		PINSEL0 = 0x0000000; //11 configure Po-Oto PO-15 as GPIO
		PINSEL1 = 0x0000000; //11 configure PO.16 to PO-31 as GP10
		IO0DIR = 0x00FF0000; //11 configure PO-16.to. PO.23 as Output while(1)
		while(1){
				IO0CLR = 0X00FF0000; //II GEAR (0) PO-10 to PO-13 and PO18 to 10-21 LEDS ON
				for (delay=0; delay <500000; delay ++); 
				IO0SET = 0x00FF0000; // Set (1) PO-10to PO-13, P018 to PO-21, LED'S OFF
				for (delay=0; delay <500000; delay++); // delay 3
		}
}

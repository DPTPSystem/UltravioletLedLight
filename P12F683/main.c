/* DPTP SYSTEM - Levil�g�t� vez�rl�s
 * Email: don_peter@freemail.hu
 * K�sz�lt:   2014 December 5 P�ntek
 * PIC: PIC12F683
 * F�rd�t�:  HI-TECH C for PIC10/12/16
 */

#include <htc.h>
#include <stdio.h>
#include "header.h"
#define BUZZER	GPIO0			// Akt�v buzzer (csipog�)
#define _XTAL_FREQ 8000000		// 8 MHz
#include "functions.c"			// Felhaszn�l�i f�ggv�nyek
#define RELE	GPIO1			// Rel�
#define LED		GPIO5			// LED
#define START	GPIO4			// Start gomb
#define STOP	GPIO2			// Stop gomb
#define SETUP	GPIO3			// Setup gomb

unsigned char timer2count = 0;	// Timer2 sz�ml�l�
unsigned short taroltido = 0;	// Levil�g�t�si id� t�rol�s�ra
unsigned short idomeres = 0;	// Levil�g�t�si id� m�r�se
unsigned char beallitas = 0;	// Be�ll�t�shoz sz�ks�ges

void main(void){
	
	OSCCON = 0b01110001;
	OSCTUNE = 0b00001111;
	TRISIO = 0b00011100;
	GPIO = 0b00000000;
	CCP1CON = 0;
	CMCON0 = 7;
	ADCON0 = 0;
	ANSEL = 0;
	GPPU = 1;
	WPU4 = 1;
	INTCON = 0;				// �sszes interrupt l�b kikapcsolva
	PEIE   = 1;				// Peripheral interrupt enged�lyez�se
	GIE    = 1;				// Glob�lis interrupt enged�lyez�se
	
	//Timer2 be�ll�t�sa
	/*titt2 = 1 / (Fosc / 4 / <T2_prescaler> / (PR2+1) / <T2_postscaler> )
	T2_prescaler = 16, T2_postscaler = 10, PR2+1 = 250 azaz
	titt2 = 1 / (8E6 / 4 / 16 / 125 / 10 ) = 0.100 s*/
	PR2 = 125;
    T2CON = 0b01001111;
	TMR2IE = 0;
    PEIE = 1;
    GIE = 1;

	Buzzer(1);
	taroltido = EepromRead();
	
	if(!SETUP){
		while(!SETUP);
		Buzzer(5);
		taroltido = 0;
		beallitas = 1;
		TMR2IE = 1;
	}
	
	while (1){
		
		if(!START){
			while(!START);
			Buzzer(1);
			if(!SETUP){ // Manu�lis �zemm�d
				while(!SETUP);
				Buzzer(4);
				taroltido = 65535; // Maximum 18�ra 20 perc
			}	
			RELE = 1;
			TMR2IE = 1;
		}
		
		if(!STOP){
			if(beallitas){
				while(!STOP);
				TMR2IE = 0;
				beallitas = 0;
				timer2count = 0;
				idomeres = 0;
				EepromWrite(taroltido);
				Buzzer(10);
			}else{
				while(!STOP);
				TMR2IE = 0;
				RELE = 0;
				taroltido = EepromRead(); // alap id� be�ll�t�s bet�lt�se
				timer2count = 0;
				idomeres = 0;
				Buzzer(2);
			}
		}
		__delay_ms(20);
	}
 }
 
 // Megszak�t�s
 extern interrupt isr(void){
	if(beallitas){
		/*if(taroltido>254){
			TMR2IE = 0;
			EepromWrite(255);
			taroltido = EepromRead();
			beallitas = 0;
			timer2count = 0;
			Buzzer(10);
		}*/
		if(timer2count>99){
			LED = 1;
			__delay_ms(10);
			LED = 0;
			timer2count = 0;
			taroltido++;
		}
	}else{
		if(timer2count>99){
			LED = 1;
			__delay_ms(10);
			LED = 0;
			timer2count = 0;
			idomeres++;
		}
		if(taroltido<=idomeres){
			TMR2IE = 0;
			RELE = 0;
			idomeres = 0;
			timer2count = 0;
			Buzzer(2);
		}
	}
	timer2count++;
	TMR2IF = 0;
}

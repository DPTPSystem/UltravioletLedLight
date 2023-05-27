//Hang visszajez� Buzzer
 void Buzzer(unsigned char jelszam){
	 unsigned char i;
	 for(i=0; i<jelszam; i++){
		 BUZZER = 1;
		 __delay_ms(100);
		 BUZZER = 0;
		 __delay_ms(100);
	}
}

/*********************************************
+		Eeprom olvas�sa
**********************************************/
unsigned short EepromRead (void){
	unsigned short buffer;
	unsigned short result;
	EEADR = 0;			// Mem�ria c�mt�l kezdi az olvas�st
	RD = 1;				// Olvas�st vez�rl� bit
	buffer = EEDATA;	// Kiolvassuk az adatot
	__delay_ms(100);
	EEADR = 1;			// Mem�ria c�mt�l kezdi az olvas�st
	RD = 1;				// Olvas�st vez�rl� bit
	result = EEDATA;	// Kiolvassuk az adatot
	buffer = buffer << 8;
	result = result + buffer;
	return result;
}

/*********************************************
+		Eeprom �r�sa
**********************************************/
void EepromWrite (unsigned short adat){
	EEADR = 0;			// Mem�ria c�mt�l kezdj�k az �r�st
	EEDATA = adat>>8;
	WREN = 1;			// Flash Program / adat EEPROM �r�st enged�lyez� bit
	GIE = 0;			//Tiltjuk a interrupt-ot (megszak�t�st)
	EECON2 = 0x55;
	EECON2 = 0xAA;
	WR = 1;				// �r�st vez�rl� bit
	while (WR == 1);	//V�rakozunk az �r�s befejez�s�ig
	EEADR = 1;			// Mem�ria c�mt�l kezdj�k az �r�st
	EEDATA = adat;
	WREN = 1;			// Flash Program / adat EEPROM �r�st enged�lyez� bit
	GIE = 0;			//Tiltjuk a interrupt-ot (megszak�t�st)
	EECON2 = 0x55;
	EECON2 = 0xAA;
	WR = 1;				// �r�st vez�rl� bit
	while (WR == 1);	//V�rakozunk az �r�s befejez�s�ig
	GIE = 1;			// enged�lyezz�k az interrupt-ot (megszak�t�st)
	WREN = 0;			// Flash Program / adat EEPROM �r�st enged�lyez� bit
}


void Buzzer(unsigned char jelszam);
unsigned short EepromRead (void);
void EepromWrite (unsigned short adat);

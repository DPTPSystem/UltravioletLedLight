//Hang visszajezõ Buzzer
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
+		Eeprom olvasása
**********************************************/
unsigned short EepromRead (void){
	unsigned short buffer;
	unsigned short result;
	EEADR = 0;			// Memória címtõl kezdi az olvasást
	RD = 1;				// Olvasást vezérlõ bit
	buffer = EEDATA;	// Kiolvassuk az adatot
	__delay_ms(100);
	EEADR = 1;			// Memória címtõl kezdi az olvasást
	RD = 1;				// Olvasást vezérlõ bit
	result = EEDATA;	// Kiolvassuk az adatot
	buffer = buffer << 8;
	result = result + buffer;
	return result;
}

/*********************************************
+		Eeprom írása
**********************************************/
void EepromWrite (unsigned short adat){
	EEADR = 0;			// Memória címtõl kezdjük az írást
	EEDATA = adat>>8;
	WREN = 1;			// Flash Program / adat EEPROM írást engedélyezõ bit
	GIE = 0;			//Tiltjuk a interrupt-ot (megszakítást)
	EECON2 = 0x55;
	EECON2 = 0xAA;
	WR = 1;				// Írást vezérlõ bit
	while (WR == 1);	//Várakozunk az írás befejezéséig
	EEADR = 1;			// Memória címtõl kezdjük az írást
	EEDATA = adat;
	WREN = 1;			// Flash Program / adat EEPROM írást engedélyezõ bit
	GIE = 0;			//Tiltjuk a interrupt-ot (megszakítást)
	EECON2 = 0x55;
	EECON2 = 0xAA;
	WR = 1;				// Írást vezérlõ bit
	while (WR == 1);	//Várakozunk az írás befejezéséig
	GIE = 1;			// engedélyezzük az interrupt-ot (megszakítást)
	WREN = 0;			// Flash Program / adat EEPROM írást engedélyezõ bit
}


void Buzzer(unsigned char jelszam);
unsigned short EepromRead (void);
void EepromWrite (unsigned short adat);

# Ultraviolet LED Light
* DPTP SYSTEM - Levilágító vezérlés
* Készült:   2014 December 5 Péntek
* PIC: PIC12F683
* Fórdító:  HI-TECH C for PIC10/12/16

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-04_19_58_42.jpg "DPTP System levilágító")

# Miért
Az elképzelés azon okból kifolyólag született meg bennem, hogy az eddig a rézfelületre vasalós technikával felvitt nyákrajzolatok, -
melyeknél több esetben, részben vagy teljesen hibás végeredmény miatt kerültem a 0.6mm alatti vezetőméretet - minőségét egy szinttel feljebb 
emeljem. A fototechnikás eljárással jelentős mértékben javítható az otthoni körülmények között készíthető nyákok minősége.

# Alkatrész lista
1. 1db A4-es lapszkenner
2. 1db 6cm * 2,5cm-es nyákpanel (rajzolat pontos mérete: 5,5*2,2)
3. 1db 12v-os tápaljzat
4. 1db SMD TO252 LM7805-ös stabkocka
5. 1db SRA-12VDC (tekercs árama 70mA)
6. 1db 12v-os aktív buzzer (csipogó)
7. 1db SMD 1206 220R ellenállás
8. 1db normál 470R-os ellenállás (opcionális)
9. 2db SMD 1206 1K ellenállás
10. 4db SMD 1206 10K ellenállás
11. 2db SMD 1206 0R ellenállás
12. 2db SMD SOT23 BC846 NPN 100mA-es tranzisztor
13. 1db 5v-os 3mm-es piros LED (opcionális)
14. 1db 5v-os 3mm-es zöld LED
15. 2db SMD SOD80 1N4148 egyenirányító dióda
16. 1db SMD 1N4047 egyenirányító dióda
17. 1db SMD 1206 330nF-os kondenzátor
18. 1db SMD 1206 100nF-os kondenzátor
19. 1db SMD SO8 PIC12F683
20. 6db UV LED csík amelyen összességében 6*18db LED helyezkedik el (bármilyen lehet, de az egész max áramfelvétele nem haladhatja meg az 1A-t)
21. műnyomópapír, vezetékek és egyéb sallang
(Az 1A-es max áramfelvétel az 1N4047 dióda cseréjével növelhető)

# Kapcsolási rajzolat
Ha megbarátkoztunk az alkatrész listával, akkor nézzük meg a kapcsolás sematikus ábráját, ami csak első látásra lesz kicsit kusza.

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_levilagito_sematik_2.jpg "DPTP System levilágító")

Gondolom a terv különösebb magyarázatot nem igényel, minden adat megtalálható rajta, de ha még is lemaradt valami, akkor arra nyugodtan 
kérdezzetek rá. A sematikus rajzon a piros üzemjelző LED nem szerepel mivel az opcionális és azt utólag kötöttem be, hogy látható legyen, 
ha üzem alatt van a készülék. Ez utóbbiról már most elmondható, hogy hasznos tud lenni.

# Nyákterv
Egyoldalú SMD áramkör.
Látható, hogy a relé (kép bal oldalán) és a buzzer (jobb oldali kör) furat szerelt kivitelű, ez a két alkatrész a nyák túloldalára kerül, 
melyek a kapcsolás legnagyobb alkatói. A rajzolatot most pont úgy látjuk ahogyan majd vasalás után is látni kell, tehát kinyomtatás előtt
tükrözni kell.

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_levilagito_nyakterv.jpg "DPTP System levilágító")

# PCB elkészítése
A nyák rajzolatot ezúttal még vasalós technikával vittem fel a rézfelületre, amely most hiba nélkül sikerűt. A vasalós technikáról nem írnék 
most semmit, feltételezve, hogy minimum ismered ezt a módszert.

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-03_14_59_48.jpg "DPTP System levilágító")

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-03_15_23_24.jpg "DPTP System levilágító")

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-03_16_31_40.jpg "DPTP System levilágító")

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-03_18_23_43.jpg "DPTP System levilágító")

# Hardver
Mind eközben a szkennert is kipucoltam, gyakorlatilag mindent kiszereltem belőle kivéve a gombsort, amelyről a szükséges kábelek beforrasztásával 
lehoztam a 4 gomb érintkezőjét. Később persze csak 3 gomb lett felhasználva, mivel a PIC-nek nem volt több szabad lába. (de bőven elég ennyi) 
Miután teljesen kipucoltam, kialakítottam a szükséges csatlakozók (táp), LED-ek helyét, aztán már nem maradt más mint az UV LED szalag méretre 
vágása, amely 6x18db LED-et tartalmaz. A LED sorok beragasztása elött öntapadós aluszallaggal kibéleltem a doboz alját és erre ragasztottam 
fel a csíkokat, a párhuzam tartása miatt filccel feljelöltem a csíkok helyét. Az UV szalagok eleje és vége alá kapton szalagot ragasztottam, hogy 
elkerüljem az esetleges rövidzárlatokat az aluborítás miatt.

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-01_15_21_21.jpg "DPTP System levilágító")

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-05_20_52_10.jpg "DPTP System levilágító")

![DPTP System levilágító](https://github.com/DPTPSystem/UltravioletLedLight/blob/master/images/131744_2014-12-01_16_44_05.jpg "DPTP System levilágító")

# Program
Pontosan ugyanolyan egyszerű, mint maga a kapcsolás. Első indulásnál be kell állítani a levilágításhoz szükséges időt. Ezt úgy tehetjük meg,
hogy a SETUP gomb lenyomása mellett helyezzük áram alá a készüléket. Ekkor egy sípolással jelez a vezérlés, hogy áram alá került + SETUP gomb 
felengedésénél pedig 5 sípolással jelzi, hogy sikeresen időmérő módba állt. Az 5 sípolást követően a ZÖLD LED másodpercenként felvillan ezzel 
számolhatjuk a szükséges időt, ha elértük a beállítani kívánt időtartamát, akkor a STOP gomb megnyomásával leállítjuk és automatikusan mentődik 
az adat, ezt 10 sípolással nyugtázza is nekünk a program.
Minden további időbeállítást ugyanígy végzünk el.

START gombbal azonnal indíthatjuk a programot a beállított idő leteltével automatikusan kikapcsolja a levilágítást és ezt 2 sípolással nyugtázza 
is, továbbá lehetőségünk van a program manuális megszakítására, amelyet a STOP gomb lenyomásával érhetünk el. A készülék újbóli indítása után 
az utoljára beállított idő lesz az alapértelmezett. A programba beépítésre került egy speciális gombkombináció ami a manuális vezérlést teszi 
lehetővé. Ezt a programot a START és a SETUP gomb lenyomásával érhetjük el: START gombot lenyomva tartva a SETUP gombot is lenyomjuk és lent is 
tartjuk. Előbb a START gombot engedjük fel, ekkor a program 1-et sípol, ekkor felengedhetjük a SETUP gombot is ezt 4 további sípolással nyugtázza 
a rendszer és elindul a levilágítás. Ezen funkciónál maximum 18 óra és 20percig tart a levilágítás.
A STOP gombbal manuálisan bármikor megszakíthatjuk a programot és a rendszer vissza áll az alapértelmezetten elmentett időre.

A képeken a gombok még nincsenek elnevezve, de már készül rá a felirat.

# Kapcsolodó videós tartalmak
Egy videó is a használatáról: (a videó elkészültekor a manuális program még nem volt kész, így az nem került bemutatásra)

[![DPTP System - Levilágító](https://img.youtube.com/vi/170mpfvTVOU/0.jpg)](https://www.youtube.com/watch?v=170mpfvTVOU)


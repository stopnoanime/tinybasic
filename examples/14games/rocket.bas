10 REM "Rocket from 101 Basic Games"
20 REM "Ported to Stefan's BASIC in 2021"
30 PRINT
100 PRINT "LUNAR LANDING SIMULATION"
110 PRINT "----- ------- ----------":PRINT 
120 INPUT "DO YOU WANT INSTRUCTIONS (YES OR NO)? ";A$
130 IF A$="NO" OR A$="no" THEN 390
140 CLS 
150 PRINT 
200 PRINT "YOU ARE LANDING ON THE MOON AND AND HAVE"
210 PRINT "TAKEN OVER MANUAL CONTROL 1000 FEET"
215 PRINT "ABOVE A GOOD LANDING SPOT.": PRINT 
220 PRINT "YOU HAVE A DOWNWARD VELOCITY OF 50 FEET/SEC."
225 PRINT "150 UNITS OF FUEL REMAIN.": PRINT 
230 PRINT "HERE ARE THE RULES THAT GOVERN YOUR DESCENT"
240 PRINT "(1) AFTER EACH SECOND THE HEIGHT, VELOCITY, AND"
250 PRINT "    REMAINING FUEL WILL BE REPORTED BY YOUR"
255 PRINT "    ON-BOARD COMPUTER."
260 PRINT "(2) AFTER THE REPORT A '?' WILL APPEAR. ENTER"
270 PRINT "    THE NUMBER OF UNITS OF FUEL YOU WISH TO BURN"
280 PRINT "    DURING THE NEXT SECOND. EACH UNIT OF FUEL"
285 PRINT "    WILL SLOW YOUR DESCENT BY 1 FOOT/SEC."
310 PRINT "(3) THE MAXIMUM THRUST OF YOUR ENGINE IS "
315 PRINT "    30 FEET/SEC/SEC OR 30 UNITS OF FUEL"
320 PRINT "    PER SECOND."
330 PRINT "(4) WHEN YOU CONTACT THE LUNAR SURFACE. YOUR "
340 PRINT "    DESCENT ENGINE WILL AUTOMATICALLY SHUT DOWN"
345 PRINT "    AND YOU WILL BE GIVEN A REPORT OF YOUR "
350 PRINT "    LANDING SPEED AND REMAINING FUEL."
360 PRINT "(5) IF YOU RUN OUT OF FUEL THE '?' WILL NO"
370 PRINT "    LONGER APPEAR BUT YOUR SECOND BY SECOND"
380 PRINT "    REPORT WILL CONTINUE UNTIL YOU CONTACT THE"
385 PRINT "    LUNAR SURFACE.":PRINT 
390 PRINT "BEGINNING LANDING PROCEDURE..........":PRINT 
400 PRINT "G O O D  L U C K ! ! !"
420 PRINT
425 INPUT "Read to go - press return ", A$
426 CLS 
430 PRINT "SEC  FEET  SPEED  FUEL "
450 PRINT 
455 T=0: H=1000: V=50: F=150
490 PRINT #6,T,H,V,F;" I";
495 TAB(H/70): PRINT "*"
500 INPUT B
510 IF B<0 THEN 650
520 IF B>30 THEN B=30
530 IF B>F THEN B=F
540 V1=V-B+5
560 F=F-B
570 H=H-(V+V1)/2
580 IF H<=0 THEN 670
590 T=T+1
600 V=V1
610 IF F>0 THEN 490
615 IF B=0 THEN 640
620 PRINT "**** OUT OF FUEL ****"
640 PRINT #6,T,H,V,F;" I";
645 TAB(H/70): PRINT "*"
650 B=0
660 GOTO 540
670 PRINT "***** CONTACT *****"
680 H=H+(V1+V)/2
690 IF B=5 THEN 720
700 D=(-V+SQR(V*V+H*(10-2*B)))/(5-B)
710 GOTO 730
720 D=H/V
730 V1=V+(5-B)*D
760 PRINT "TOUCHDOWN AT"; T+D; "SECONDS."
770 PRINT "LANDING VELOCITY="; V1; "FEET/SEC."
780 PRINT F; "UNITS OF FUEL REMAINING."
790 IF V1<>0 THEN 810
800 PRINT "CONGRATULATIONS! A PERFECT LANDING!!"
805 PRINT "YOUR LICENSE WILL BE RENEWED.......LATER."
810 IF ABS(V1)<2 THEN 840
820 PRINT "***** SORRY, BUT YOU BLEW IT!!!!"
830 PRINT "APPROPRIATE CONDOLENCES WILL BE SENT TO YOUR NEXT OF KIN."
840 PRINT
850 INPUT "ANOTHER MISSION? "; A$
860 IF A$(1,1)="Y" OR A$(1,1)="y" THEN 390
870 PRINT: PRINT "CONTROL OUT.": PRINT 
999 END 

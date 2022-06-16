10 REM "TARGET"
20 REM "Ported by Stefan in 2022"
30 REM
40 IF NOT USR(0,3) THEN PRINT "FLOAT NEEDED": END
100 R=1: R1=57.296: P=3.14159
110 PRINT "YOU ARE THE WEAPONS OFFICER ON THE STARSHIP ENTERPRISE"
120 PRINT "AND THIS IS A TEST TO SEE HOW ACCURATE A SHOT YOU"
130 PRINT "ARE IN A THREE-DIMENSIONAL RANGE.  YOU WILL BE TOLD"
140 PRINT "THE RADIAN OFFSET FOR THE X AND Z AXES, THE LOCATION"
150 PRINT "OF THE TARGET IN THREE DIMENSIONAL RECTANGULAR COORDINATES,"
160 PRINT "THE APPROXIMATE NUMBER OF DEGREES FROM THE X AND Z"
170 PRINT "AXES, AND THE APPROXIMATE DISTANCE TO THE TARGET."
180 PRINT "YOU WILL THEN PROCEEED TO SHOOT AT THE TARGET UNTIL IT IS"
190 PRINT "DESTROYED!": PRINT: PRINT "GOOD LUCK!!":PRINT: PRINT
220 A=RND(1)*2*P: B=RND(1)*2*P: Q=INT(A*R1): W=INT(B*R1)
260 PRINT "RADIANS FROM X AXIS =";A;"   FROM Z AXIS =";B
280 P1=100000*RND(1)+RND(1): X=SIN(B)*COS(A)*P1: Y=SIN(B)*SIN(A)*P1
290 Z=COS(B)*P1
340 PRINT "TARGET SIGHTED: APPROXIMATE COORDINATES:  X=";X;"  Y=";Y;"  Z=";Z
345 R=R+1: IF R>5 THEN 390
350 ON R GOTO 355,360,365,370,375
355 P3=INT(P1*0.05)*20: GOTO 390
360 P3=INT(P1*0.1)*10: GOTO 390
365 P3=INT(P1*0.5)*2: GOTO 390
370 P3=INT(P1): GOTO 390
375 P3=P1
390 PRINT "     ESTIMATED DISTANCE:";P3
400 PRINT:PRINT "INPUT ANGLE DEVIATION FROM X, DEVIATION FROM Z, DISTANCE";
405 INPUT A1,B1,P2
410 PRINT: IF P2<20 THEN PRINT "YOU BLEW YOURSELF UP!!": GOTO 580
420 A1=A1/R1: B1=B1/R1: PRINT "RADIANS FROM X AXIS =";A1;"  ";
425 PRINT "FROM Z AXIS =";B1
480 X1=P2*SIN(B1)*COS(A1): Y1=P2*SIN(B1)*SIN(A1): Z1=P2*COS(B1)
510 D=SQR(POW(X1-X,2)+POW(Y1-Y,2)+POW(Z1-Z, 2)
520 IF D>20 THEN 670
530 PRINT: PRINT " * * * HIT * * *   TARGET IS NON-FUNCTIONAL": PRINT
550 PRINT "DISTANCE OF EXPLOSION FROM TARGET WAS ";D;" KILOMETERS."
570 PRINT: PRINT "MISSION ACCOMPLISHED IN ";R;" SHOTS."
580 R=0: FOR I=1 TO 5: PRINT: NEXT I: PRINT "NEXT TARGET...": PRINT
590 GOTO 220
670 X2=X1-X: Y2=Y1-Y: Z2=Z1-Z: IF X2<0 THEN 730
710 PRINT "SHOT IN FRONT OF TARGET ";X2;" KILOMETERS.": GOTO 740
730 PRINT "SHOT BEHIND TARGET ";-X2;" KILOMETERS."
740 IF Y2<0 THEN 770
750 PRINT "SHOT TO LEFT OF TARGET ";Y2;" KILOMETERS.": GOTO 780
770 PRINT "SHOT TO RIGHT OF TARGET ";-Y2;" KILOMETERS."
780 IF Z2<0 THEN 810
790 PRINT "SHOT ABOVE TARGET ";Z2;" KILOMETERS.": GOTO 820
810 PRINT "SHOT BELOW TARGET ";-Z2;" KILOMETERS."
820 PRINT "APPROX POSITION OF EXPLOSION:  X=";X1;"   Y=";Y1;"   Z=";Z1
830 PRINT "     DISTANCE FROM TARGET =";D: PRINT: PRINT: PRINT: GOTO 345
999 END

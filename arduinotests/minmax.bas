10 PINM AZERO ,0
20 M0=1024:M1=0
30 FOR I=1 TO 10
40 L=AREAD (AZERO )
50 IF M0>L THEN M0=L
60 IF M1<L THEN M1=L
70 DELAY 1000
80 NEXT I
90 PRINT "Minimum ",M0
100 PRINT "Maximum ",M1
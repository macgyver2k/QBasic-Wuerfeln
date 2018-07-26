DECLARE SUB wuerfel1 ()
DECLARE SUB wuerfel5 ()
DECLARE SUB wuerfel2 ()
DECLARE SUB wuerfel3 ()
DECLARE SUB wuerfel6 ()
DECLARE SUB wuerfel4 ()
col% = 10
total1% = 0
total2% = 0
SCREEN 12
10   CLS
20   LOCATE 13, 38: COLOR col%: PRINT "WöRFELN"
30   DRAW "c16bm150,150br10g10d80f10r80e10u80h10l80": CIRCLE (175, 200), 10, 16: PAINT (175, 200), 16, 16: CIRCLE (175, 225), 10, 16: PAINT (175, 225), 16, 16: CIRCLE (175, 175), 10, 16: PAINT (175, 175), 16, 16: CIRCLE (225, 200), 10, 16: PAINT (225, 200), 16, 16: CIRCLE (225, 225), 10, 16: PAINT (225, 225), 16, 16: CIRCLE (225, 175), 10, 16: PAINT (225, 175), 16, 16: DRAW "c16bm390,150br10g10d80f10r80e10u80h10l80": CIRCLE (440, 200), 10, 16: PAINT (440, 200), 16, 16: PLAY "c8d8e8c8d8e8b8a8g8f8e8p8d8p8c4": SLEEP 1
40   CLS
41   SCREEN 0: COLOR col%
59   LOCATE 10, 28: PRINT "Wieviele Spieler ? (1-2)"
60   A$ = INPUT$(1)
70   IF A$ = "1" THEN GOTO 90
80   IF A$ = "2" THEN GOTO 10000:  ELSE 60
90   CLS
100  LOCATE 10, 28: PRINT "Wie hei·t du Spieler 1 "; : INPUT name1$
101  IF name1$ = "mackro" THEN money1% = 2000: BEEP: CLS : GOTO 100
102  IF name1$ = "blue" THEN col% = 9: BEEP: CLS : GOTO 100
103  IF name1$ = "red" THEN col% = 12: BEEP: CLS : GOTO 100
104  IF name1$ = "yellow" THEN col% = 14: BEEP: CLS : GOTO 100
105  IF name1$ = "green" THEN col% = 10: BEEP: CLS : GOTO 100
110  CLS
120  IF spiel% = 0 THEN money1% = money1% + 100
130  IF spiel% = 0 THEN money2% = money2% + 100
140  CLS
141  SCREEN 0
142  COLOR col%: PRINT
145  spiel% = spiel% + 1
146  LOCATE 2, 35: PRINT "Spiel Nr.:"; spiel%; ""
150  LOCATE 25, 8: PRINT "Guthaben : "; money1%; "                   Guthaben : "; money2%; ""
160  SLEEP 1
165  e2% = money2% / 10
170  LOCATE 10, 20: COLOR col%: PRINT name1$; " :    Wieviel willst du setzen "; : INPUT e1%
180  IF e1% < money1% THEN GOTO 210
190  IF e1% = money1% THEN GOTO 211
200  IF e1% > money1% THEN GOTO 170
210  IF e1% < 1 THEN GOTO 170
211  money1% = money1% - e1%
212  money2% = money2% - e2%
213  jp% = e1% + e2%: jp% = jp% * 2
214  CLS
215  LOCATE 25, 8: PRINT "Guthaben : "; money1%; "         JackPott :"; jp%; "          Guthaben : "; money2%; ""
216  SLEEP 2
220  LOCATE 10, 20: PRINT name1$; " :   DrÅcke <W> um deinen 1. WÅrfel zu werfen !"
230  w1$ = INPUT$(1)
240  IF w1$ = "w" OR w1$ = "W" THEN GOTO 250:  ELSE GOTO 230
250  RANDOMIZE TIMER
260  wurf1.1% = INT(RND * 6) + 1
270  wurf1.2% = INT(RND * 6) + 1
280  PLAY "o4c16b16a16g16f16e16d16c16"
290  IF wurf1.1% = 1 THEN wuerfel1: total1% = total1% + 1
300  IF wurf1.1% = 2 THEN wuerfel2: total1% = total1% + 2
310  IF wurf1.1% = 3 THEN wuerfel3: total1% = total1% + 3
320  IF wurf1.1% = 4 THEN wuerfel4: total1% = total1% + 4
330  IF wurf1.1% = 5 THEN wuerfel5: total1% = total1% + 5
340  IF wurf1.1% = 6 THEN wuerfel6: total1% = total1% + 6
345  PRINT total1%: SLEEP 1
350  CLS
360  COLOR col%: LOCATE 10, 20: PRINT name1$; " :   DrÅcke <W> um deinen 2. WÅrfel zu werfen !"
361  w2$ = INPUT$(1)
362  IF w2$ = "w" OR w2$ = "W" THEN GOTO 365:   ELSE GOTO 361
365  CLS
366  PLAY "o4c16b16a16g16f16e16d16c16"
370  IF wurf1.2% = 1 THEN wuerfel1: total1% = total1% + 1
380  IF wurf1.2% = 2 THEN wuerfel2: total1% = total1% + 2
390  IF wurf1.2% = 3 THEN wuerfel3: total1% = total1% + 3
400  IF wurf1.2% = 4 THEN wuerfel4: total1% = total1% + 4
410  IF wurf1.2% = 5 THEN wuerfel5: total1% = total1% + 5
420  IF wurf1.2% = 6 THEN wuerfel6: total1% = total1% + 6
325  PRINT total1%
430  SLEEP 1
440  CLS
450  COLOR col%: LOCATE 10, 20: PRINT "Der Computer wirft jetzt seinen 1. WÅrfel !"
460  RANDOMIZE TIMER
470  wurf2.1% = INT(RND * 6) + 1
490  wurf2.2% = INT(RND * 6) + 1
500  PLAY "o4c16b16a16g16f16e16d16c16"
505  CLS
510  IF wurf2.1% = 1 THEN wuerfel1: total2% = total2% + 1
520  IF wurf2.1% = 2 THEN wuerfel2: total2% = total2% + 2
530  IF wurf2.1% = 3 THEN wuerfel3: total2% = total2% + 3
540  IF wurf2.1% = 4 THEN wuerfel4: total2% = total2% + 4
550  IF wurf2.1% = 5 THEN wuerfel5: total2% = total2% + 5
560  IF wurf2.1% = 6 THEN wuerfel6: total2% = total2% + 6
565  PRINT total2%: SLEEP 1
570  CLS
580  COLOR col%: LOCATE 10, 20: PRINT "Der Computer wirft jetzt seinen 2. WÅrfel !"
590  PLAY "o4c16b16a16g16f16e16d16c16"
610  CLS
620  IF wurf2.2% = 1 THEN wuerfel1: total2% = total2% + 1
630  IF wurf2.2% = 2 THEN wuerfel2: total2% = total2% + 2
640  IF wurf2.2% = 3 THEN wuerfel3: total2% = total2% + 3
650  IF wurf2.2% = 4 THEN wuerfel4: total2% = total2% + 4
670  IF wurf2.2% = 5 THEN wuerfel5: total2% = total2% + 5
680  IF wurf2.2% = 6 THEN wuerfel6: total2% = total2% + 6
685  PRINT total1%
686  PRINT total2%: SLEEP 2
690  COLOR col%: IF total1% > total2% THEN money1% = money1% + jp%: CLS : LOCATE 10, 20: PRINT name1$; " :      Du hast gewonnen !!!": SLEEP 3: total1% = 0: total2% = 0: GOTO 140
700  COLOR col%: IF total2% > total1% THEN money2% = money2% + jp%: CLS : LOCATE 10, 20: PRINT name1$; " :      Duhast leider verloren !!!": SLEEP 3: total1% = 0: total2% = 0: IF money1% = 0 THEN GOTO 1100: : GOTO 140
710  COLOR col%: IF total1% = total2% THEN CLS : LOCATE 10, 20: PRINT name1$; " :          Es hat leider niemand gewonnen ,                                                                           darum gibt es ein Stechen": SLEEP 3: total1% = 0: total2% = 0: CLS : GOTO 800
800  RANDOMIZE TIMER
805  jp% = jp% + (jp% / 2)
810  stech1% = INT(RND * 6) + 1
820  stech2% = INT(RND * 6) + 1
825  total1% = 0: total2% = 0
830  COLOR col%: LOCATE 10, 20: PRINT name1$; " :   DrÅcke <S> um deinen STICH WÅrfel zu werfen !"
840  s1$ = INPUT$(1)
850  IF s1$ = "s" OR s1$ = "S" THEN GOTO 860:  ELSE GOTO 840
860  'PLAY "o4c16b16a16g16f16e16d16c16": CLS
870  IF stech1% = 1 THEN wuerfel1: total1% = total1% + 1
880  IF stech1% = 2 THEN wuerfel2: total1% = total1% + 2
890  IF stech1% = 3 THEN wuerfel3: total1% = total1% + 3
900  IF stech1% = 4 THEN wuerfel4: total1% = total1% + 4
910  IF stech1% = 5 THEN wuerfel5: total1% = total1% + 5
920  IF stech1% = 6 THEN wuerfel6: total1% = total1% + 6
930  CLS
940  COLOR col%: LOCATE 10, 20: PRINT "Der Computer wirft jetzt seinen STICH WÅrfel !"
945  'PLAY "o4c16b16a16g16f16e16d16c16": CLS
950  IF stech2% = 1 THEN wuerfel1: total2% = total2% + 1
960  IF stech2% = 2 THEN wuerfel2: total2% = total2% + 2
970  IF stech2% = 3 THEN wuerfel3: total2% = total2% + 3
980  IF stech2% = 4 THEN wuerfel4: total2% = total2% + 4
990  IF stech2% = 5 THEN wuerfel5: total2% = total2% + 5
1000 IF stech2% = 6 THEN wuerfel6: total2% = total2% + 6
1010 IF total1% > total2% THEN money1% = money1% + jp%: CLS : COLOR col%: LOCATE 10, 20: PRINT name$; " :      Du hast das Stechen gewonnen !!!": SLEEP 3: total1% = 0: total2% = 0: GOTO 140
1020 IF total1% < total2% THEN money2% = money2% + jp%: CLS : COLOR col%: LOCATE 10, 20: PRINT name$; " :      Duhast das Stechen leider verloren !!!": SLEEP 3: total1% = 0: total2% = 0: IF money1% = 0 THEN GOTO 1100: GOTO 140
1030 IF total1% = total2% THEN CLS : COLOR col%: LOCATE 10, 20: PRINT name$; " :     Es hat leider niemand gewonnen ,                                                                       darum gibt es ein Stechen": SLEEP 3: total1% = 0: total2% = 0: GOTO 800
1100 CLS : LOCATE 10, 20: PRINT name1%; " :   Du hast leider kein Geld mehr um weiter zu spielen !!!": SLEEP 3: SYSTEM
REM######################### 2 SPIELER - MODUS ###############################
10000
10010  CLS
10020  LOCATE 10, 28: PRINT "Wie hei·t du Spieler 1 "; : INPUT name1$
10030  IF name1$ = "mackro" THEN money1% = 2000: BEEP: CLS : GOTO 10010
10040  IF name1$ = "blue" THEN col% = 9: BEEP: CLS : GOTO 10010
10050  IF name1$ = "red" THEN col% = 12: BEEP: CLS : GOTO 10010
10060  IF name1$ = "yellow" THEN col% = 14: BEEP: CLS : GOTO 10010
10070  IF name1$ = "green" THEN col% = 10: BEEP: CLS : GOTO 10010
10080  CLS
10090  IF spiel% = 0 THEN money1% = money1% + 100
10100  IF spiel% = 0 THEN money2% = money2% + 100
10110  CLS
10120  SCREEN 0
10130  COLOR col%: PRINT
10140  spiel% = spiel% + 1
10150  LOCATE 2, 35: PRINT "Spiel Nr.:"; spiel%; ""
10160  LOCATE 25, 8: PRINT "Guthaben : "; money1%; "                   Guthaben : "; money2%; ""
10170  SLEEP 1
10180  e2% = money2% / 10
10190  LOCATE 10, 20: COLOR col%: PRINT name1$; " :    Wieviel willst du setzen "; : INPUT e1%
10200  IF e1% < money1% THEN GOTO 10230
10210  IF e1% = money1% THEN GOTO 10240
10220  IF e1% > money1% THEN GOTO 10190
10230  IF e1% < 1 THEN GOTO 170
10240  money1% = money1% - e1%
10250  money2% = money2% - e2%
10260  jp% = e1% + e2%: jp% = jp% * 2
10270  CLS
10280  LOCATE 25, 8: PRINT "Guthaben : "; money1%; "         JackPott :"; jp%; "          Guthaben : "; money2%; ""
10290  SLEEP 2
10300  LOCATE 10, 20: PRINT name1$; " :   DrÅcke <W> um deinen 1. WÅrfel zu werfen !"
10310  w1$ = INPUT$(1)
10320  IF w1$ = "w" OR w1$ = "W" THEN GOTO 10330:  ELSE GOTO 10310
10330  RANDOMIZE TIMER
10340  wurf1.1% = INT(RND * 6) + 1
10350  wurf1.2% = INT(RND * 6) + 1
10360  'PLAY "o4c16b16a16g16f16e16d16c16"
10370  IF wurf1.1% = 1 THEN wuerfel1: total1% = total1% + 1
10380  IF wurf1.1% = 2 THEN wuerfel2: total1% = total1% + 2
10390  IF wurf1.1% = 3 THEN wuerfel3: total1% = total1% + 3
10400  IF wurf1.1% = 4 THEN wuerfel4: total1% = total1% + 4
10410  IF wurf1.1% = 5 THEN wuerfel5: total1% = total1% + 5
10420  IF wurf1.1% = 6 THEN wuerfel6: total1% = total1% + 6
10430  PRINT total1%: SLEEP 1
10440  CLS
10450  COLOR col%: LOCATE 10, 20: PRINT name1$; " :   DrÅcke <W> um deinen 2. WÅrfel zu werfen !"
10460  w2$ = INPUT$(1)
10470  IF w2$ = "w" OR w2$ = "W" THEN GOTO 10480:   ELSE GOTO 10460
10480  CLS
10490  'PLAY "o4c16b16a16g16f16e16d16c16"
10500  IF wurf1.2% = 1 THEN wuerfel1: total1% = total1% + 1
10510  IF wurf1.2% = 2 THEN wuerfel2: total1% = total1% + 2
10520  IF wurf1.2% = 3 THEN wuerfel3: total1% = total1% + 3
10530  IF wurf1.2% = 4 THEN wuerfel4: total1% = total1% + 4
10540  IF wurf1.2% = 5 THEN wuerfel5: total1% = total1% + 5
10550  IF wurf1.2% = 6 THEN wuerfel6: total1% = total1% + 6
10560  PRINT total1%
10570  SLEEP 1
10580  CLS
10590  COLOR col%: LOCATE 10, 20: PRINT "Der Computer wirft jetzt seinen 1. WÅrfel !"
10600  RANDOMIZE TIMER
10610  wurf2.1% = INT(RND * 6) + 1
10620  wurf2.2% = INT(RND * 6) + 1
10630  'PLAY "o4c16b16a16g16f16e16d16c16"
10640  CLS
10650  IF wurf2.1% = 1 THEN wuerfel1: total2% = total2% + 1
10660  IF wurf2.1% = 2 THEN wuerfel2: total2% = total2% + 2
10670  IF wurf2.1% = 3 THEN wuerfel3: total2% = total2% + 3
10680  IF wurf2.1% = 4 THEN wuerfel4: total2% = total2% + 4
10690  IF wurf2.1% = 5 THEN wuerfel5: total2% = total2% + 5
10700  IF wurf2.1% = 6 THEN wuerfel6: total2% = total2% + 6
10710  PRINT total2%: SLEEP 1
10720  CLS
10730  COLOR col%: LOCATE 10, 20: PRINT "Der Computer wirft jetzt seinen 2. WÅrfel !"
10740  'PLAY "o4c16b16a16g16f16e16d16c16"
10750  CLS
10760  IF wurf2.2% = 1 THEN wuerfel1: total2% = total2% + 1
10770  IF wurf2.2% = 2 THEN wuerfel2: total2% = total2% + 2
10780  IF wurf2.2% = 3 THEN wuerfel3: total2% = total2% + 3
10790  IF wurf2.2% = 4 THEN wuerfel4: total2% = total2% + 4
10800  IF wurf2.2% = 5 THEN wuerfel5: total2% = total2% + 5
10810  IF wurf2.2% = 6 THEN wuerfel6: total2% = total2% + 6
10820  PRINT total1%
10830  PRINT total2%: SLEEP 2
10840  COLOR col%: IF total1% > total2% THEN money1% = money1% + jp%: CLS : LOCATE 10, 20: PRINT name1$; " :      Du hast gewonnen !!!": SLEEP 3: total1% = 0: total2% = 0: GOTO 10110
10850  COLOR col%: IF total2% > total1% THEN money2% = money2% + jp%: CLS : LOCATE 10, 20: PRINT name1$; " :      Duhast leider verloren !!!": SLEEP 3: total1% = 0: total2% = 0: IF money1% = 0 THEN GOTO 1100: : GOTO 10110
10860  COLOR col%: IF total1% = total2% THEN CLS : LOCATE 10, 20: PRINT name1$; " :          Es hat leider niemand gewonnen ,                                                                           darum gibt es ein Stechen": SLEEP 3: total1% = 0: total2% = 0: CLS : GOTO 800
10870  RANDOMIZE TIMER
10880  jp% = jp% + (jp% / 2)
10890  stech1% = INT(RND * 6) + 1
10900  stech2% = INT(RND * 6) + 1
10910  total1% = 0: total2% = 0
10920  COLOR col%: LOCATE 10, 20: PRINT name1$; " :   DrÅcke <S> um deinen STICH WÅrfel zu werfen !"
10930  s1$ = INPUT$(1)
10940  IF s1$ = "s" OR s1$ = "S" THEN GOTO 860:  ELSE GOTO 840
10950  'PLAY "o4c16b16a16g16f16e16d16c16": CLS
10960  IF stech1% = 1 THEN wuerfel1: total1% = total1% + 1
10970  IF stech1% = 2 THEN wuerfel2: total1% = total1% + 2
10980  IF stech1% = 3 THEN wuerfel3: total1% = total1% + 3
10990  IF stech1% = 4 THEN wuerfel4: total1% = total1% + 4
11000  IF stech1% = 5 THEN wuerfel5: total1% = total1% + 5
11010  IF stech1% = 6 THEN wuerfel6: total1% = total1% + 6
11020  CLS
11030  COLOR col%: LOCATE 10, 20: PRINT "Der Computer wirft jetzt seinen STICH WÅrfel !"
11040  'PLAY "o4c16b16a16g16f16e16d16c16": CLS
11050  IF stech2% = 1 THEN wuerfel1: total2% = total2% + 1
11060  IF stech2% = 2 THEN wuerfel2: total2% = total2% + 2
11070  IF stech2% = 3 THEN wuerfel3: total2% = total2% + 3
11080  IF stech2% = 4 THEN wuerfel4: total2% = total2% + 4
11090  IF stech2% = 5 THEN wuerfel5: total2% = total2% + 5
11100 IF stech2% = 6 THEN wuerfel6: total2% = total2% + 6
11110 IF total1% > total2% THEN money1% = money1% + jp%: CLS : COLOR col%: LOCATE 10, 20: PRINT name$; " :      Du hast das Stechen gewonnen !!!": SLEEP 3: total1% = 0: total2% = 0: GOTO 10110
11120 IF total1% < total2% THEN money2% = money2% + jp%: CLS : COLOR col%: LOCATE 10, 20: PRINT name$; " :      Duhast das Stechen leider verloren !!!": SLEEP 3: total1% = 0: total2% = 0: IF money1% = 0 THEN GOTO 1100: GOTO 10110
11130 IF total1% = total2% THEN CLS : COLOR col%: LOCATE 10, 20: PRINT name$; " :     Es hat leider niemand gewonnen ,                                                                       darum gibt es ein Stechen": SLEEP 3: total1% = 0: total2% = 0: GOTO 10870
11140 CLS : LOCATE 10, 20: PRINT name1%; " :   Du hast leider kein Geld mehr um weiter zu spielen !!!": SLEEP 3: SYSTEM

SUB wuerfel1
SCREEN 12
DRAW "c16bm350,150br10g10d80f10r80e10u80h10l80"
CIRCLE (400, 200), 10, 16
PAINT (400, 200), 16, 16
'PLAY "g1"
SLEEP 2
END SUB

SUB wuerfel2
SCREEN 12
DRAW "c16bm350,150br10g10d80f10r80e10u80h10l80"
CIRCLE (375, 175), 10, 16
PAINT (375, 175), 16, 16
CIRCLE (425, 225), 10, 16
PAINT (425, 225), 16, 16
'PLAY "g2g2"
SLEEP 2
END SUB

SUB wuerfel3
SCREEN 12
DRAW "c16bm350,150br10g10d80f10r80e10u80h10l80"
CIRCLE (400, 200), 10, 16
PAINT (400, 200), 16, 16
CIRCLE (375, 175), 10, 16
PAINT (375, 175), 16, 16
CIRCLE (425, 225), 10, 16
PAINT (425, 225), 16, 16
'PLAY "g3g3g3"
SLEEP 2
END SUB

SUB wuerfel4
SCREEN 12
DRAW "c16bm350,150br10g10d80f10r80e10u80h10l80"
CIRCLE (375, 175), 10, 16
PAINT (375, 175), 16, 16
CIRCLE (425, 175), 10, 16
PAINT (425, 175), 16, 16
CIRCLE (375, 225), 10, 16
PAINT (375, 225), 16, 16
CIRCLE (425, 225), 10, 16
PAINT (425, 225), 16, 16
'PLAY "g4g4g4g4"
SLEEP 2
END SUB

SUB wuerfel5
SCREEN 12
DRAW "c16bm350,150br10g10d80f10r80e10u80h10l80"
CIRCLE (400, 200), 10, 16
PAINT (400, 200), 16, 16
CIRCLE (375, 175), 10, 16
PAINT (375, 175), 16, 16
CIRCLE (425, 225), 10, 16
PAINT (425, 225), 16, 16
CIRCLE (425, 175), 10, 16
PAINT (425, 175), 16, 16
CIRCLE (375, 225), 10, 16
PAINT (375, 225), 16, 16
'PLAY "g5g5g5g5g5"
SLEEP 2
END SUB

SUB wuerfel6
SCREEN 12
DRAW "c16bm350,150br10g10d80f10r80e10u80h10l80"
CIRCLE (375, 200), 10, 16
PAINT (375, 200), 16, 16
CIRCLE (425, 200), 10, 16
PAINT (425, 200), 16, 16
CIRCLE (375, 175), 10, 16
PAINT (375, 175), 16, 16
CIRCLE (425, 175), 10, 16
PAINT (425, 175), 16, 16
CIRCLE (375, 225), 10, 16
PAINT (375, 225), 16, 16
CIRCLE (425, 225), 10, 16
PAINT (425, 225), 16, 16
'PLAY "g6g6g6g6g6g6"
SLEEP 2
END SUB


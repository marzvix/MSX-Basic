90 ' PARAB.BAS - PIERLUIGI PIAZZI
100 PLAY"S0M3000"
110 SCREEN 2:OPEN"GRP:" AS #1
120 FOR K=1 TO 2
130     GOSUB 600
140     REM VARIANDO A 
150     PRESET(2,2):PRINT#1,"B=0"
160     PRESET(2,10):PRINT#1,"C=0"
170     FOR A=-.07 TO .09 STEP .04
180         GOSUB 690
190         PRESET(2,120+200*A):PRINT#1,"A=";A
200         FOR X=-100 TO +100
210             Y=A*X^2+0*X+0
220             GOSUB 650
230         NEXT X,A
240         REM VARIANDO C
250         CLS:GOSUB 600
260         PRESET(2,2):PRINT#1,"A=0.03"
270         PRESET(2,10):PRINT#1,"B=0"
280         FOR C=-40 TO 20 STEP 20
290             GOSUB 690
300             PRESET(2,121+C/2):PRINT#1,"C=";C
310             FOR X=-100 TO +100
320                 Y=.03*X^2+0*X+C
330                 GOSUB 650
340             NEXT X, C
350             REM VARIANDO B
360             CLS:GOSUB 600
370             PRESET(2,2):PRINT#1,"A=0.03"
380             PRESET(2,10):PRINT#1,"C=0"
390             FOR B=-3 TO 1 STEP 1
400                 GOSUB 690
410                 PRESET(2,122+8*B):PRINT#1,"B=";B
420                 FOR X=-100 TO +100
430                     Y=.03*X^2+B*X+0
440                     GOSUB 650
450                 NEXT X,B
460                 CLS:NEXT K
470             CLS:GOSUB 600
480             A=(INT(RND(1)*6)-3)/100
490             PRESET(2,10):PRINT#1,"A=";A
500             B=(INT(RND(1)*3)-2)
510             PRESET(2,20):PRINT#1,"B=";B
520             C=(INT(RND(1)*40)-20)
530             PRESET(2,30):PRINT#1,"C=";C
540             FOR X=-100 TO +100
550                 Y=A*X^2+B*X+C
560                 GOSUB 650
570             NEXT X
580             GOTO 470
590         END
600         LINE (0,96)-(255,96)
610         LINE (128,0)-(128,191)
620         LINE (0,0)-(255,191),,B
630         'PRESET(160,180):PRINT#1,"Y=A+Bx+C"
640         RETURN
650         XT=X+128
660         YT=96-Y
670         PSET(XT,YT)
680         RETURN
690         N$=STR$((TIME/2)MOD40+20)
700         PLAY"LBN"+N$
710         IF PLAY(0) THEN 710
720         RETURN


      ******************************************************************
      * FILE NAME   : EXERC013                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALC AVERAGE OF 5 NUMBERS & DISPLAY LARGER ONES  *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC013.
       AUTHOR. FABIO MARQUES.
      *
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01  WS-NUMEROS.
           05  WS-NUMERO   PIC 9(02)        VALUE ZEROES OCCURS 5 TIMES.
       01 WS-MEDIA         PIC 9(02)V9(2)   VALUE ZEROES.
      *
       01 WS-I             PIC 9(1)         VALUE ZEROES.
       01 WS-MEDIA-EDIT    PIC Z.ZZ9,99     VALUE ZEROES.
       01 WS-NUMERO-EDIT   PIC Z9           VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
             ACCEPT WS-NUMERO(WS-I)
             ADD WS-NUMERO(WS-I) TO WS-MEDIA
           END-PERFORM.
      *
           COMPUTE WS-MEDIA = WS-MEDIA / 5.
           MOVE WS-MEDIA TO WS-MEDIA-EDIT.
      *
           DISPLAY 'A MEDIA E ' WS-MEDIA-EDIT.
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
             IF WS-NUMERO(WS-I) IS GREATER THAN OR EQUAL TO WS-MEDIA
               MOVE WS-NUMERO(WS-I) TO WS-NUMERO-EDIT
               DISPLAY 'O NUMERO ' WS-I ' TEM VALOR ' WS-NUMERO-EDIT
             END-IF
           END-PERFORM.
      *
           GOBACK.

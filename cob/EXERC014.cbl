      ******************************************************************
      * FILE NAME   : EXERC014                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALC AVERAGE OF 5 NUMBERS & DISPLAY LARGER ONES  *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC014.
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
           05  WS-NUMERO   PIC 9(02)        VALUE ZEROES OCCURS 6 TIMES.
       01 WS-MAIOR         PIC 9(02)        VALUE ZEROES.
       01 WS-MENOR         PIC 9(02)        VALUE ZEROES.
      *
       01 WS-I             PIC 9(1)         VALUE ZEROES.
       01 WS-MENOR-EDIT    PIC Z9           VALUE ZEROES.
       01 WS-MAIOR-EDIT    PIC Z9           VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
             ACCEPT WS-NUMERO(WS-I)
           END-PERFORM.
      *
           MOVE WS-NUMERO(1) TO WS-MENOR.
           MOVE WS-MENOR     TO WS-MAIOR.
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
             IF WS-NUMERO(WS-I) IS LESS THAN WS-MENOR
               MOVE WS-NUMERO(WS-I) TO WS-MENOR
             END-IF

             IF WS-NUMERO(WS-I) IS GREATER THAN WS-MAIOR
               MOVE WS-NUMERO(WS-I) TO WS-MAIOR
             END-IF
           END-PERFORM.
      *
           MOVE WS-MENOR TO WS-MENOR-EDIT.
           MOVE WS-MAIOR TO WS-MAIOR-EDIT.

           DISPLAY 'O MENOR NUMERO INFORMADO FOI ' WS-MENOR-EDIT.
           DISPLAY 'O MAIOR NUMERO INFORMADO FOI ' WS-MAIOR-EDIT.
      *
           GOBACK.

      ******************************************************************
      * FILE NAME   : EXERC015                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : SORT AND DISPLAY 4 NUMBERS IN SAME ARRAY         *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC015.
       AUTHOR. FABIO MARQUES.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01  WS-NUMEROS.
           05  WS-NUMERO   PIC 9(02)        VALUE ZEROES OCCURS 4 TIMES.
      *
       01  WS-I            PIC 9(01)        VALUE ZEROES.
       01  WS-J            PIC 9(01)        VALUE ZEROES.
       01  WS-FROM         PIC 9(01)        VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 4
             ACCEPT WS-NUMERO(WS-I)
           END-PERFORM.
      *
      * SORTING THE ARRAY (SELECTION SORT)
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 3
             ADD 1 TO WS-I GIVING WS-FROM
             PERFORM VARYING WS-J FROM WS-FROM BY 1 UNTIL WS-J > 4
               IF WS-NUMERO(WS-J) < WS-NUMERO(WS-I)
                 ADD WS-NUMERO(WS-I) TO WS-NUMERO(WS-J)
                 SUBTRACT WS-NUMERO(WS-J) FROM WS-NUMERO(WS-I)
                 SUBTRACT WS-NUMERO(WS-I) FROM WS-NUMERO(WS-J)
               END-IF
             END-PERFORM
           END-PERFORM
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 4
             DISPLAY WS-NUMERO(WS-I)
           END-PERFORM.
      *
           GOBACK.

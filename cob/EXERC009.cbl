      ******************************************************************
      * FILE NAME   : EXERC009                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : ADD EVEN AND ODD NUMBERS UNTIL N EQUALS ZERO     *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC009.
       AUTHOR. FABIO MARQUES.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01 WS-N                 PIC 9(01) VALUE ZEROES.
       01 WS-ACUM-PAR          PIC 9(02) VALUE ZEROES.
       01 WS-COUNT-PAR         PIC 9(02) VALUE ZEROES.
       01 WS-ACUM-IMPAR        PIC 9(02) VALUE ZEROES.
       01 WS-COUNT-IMPAR       PIC 9(02) VALUE ZEROES.
      *
       01 WS-GIVING            PIC 9(03).
       01 WS-REMAINDER         PIC 9(01).
      *
       PROCEDURE DIVISION.
       MAIN.
           PERFORM PROXIMO
             WITH TEST AFTER
             UNTIL WS-N IS EQUAL TO ZERO.
      *
           DISPLAY 'ACUMULADOR PAR   ' WS-ACUM-PAR
                     ' (' WS-COUNT-PAR ')'.
           DISPLAY 'ACUMULADOR IMPAR ' WS-ACUM-IMPAR
                     ' (' WS-COUNT-IMPAR ')'.
      *
           GOBACK.
      *
       PROXIMO.
           ACCEPT WS-N.
      *
           IF WS-N IS NOT EQUAL TO ZERO
             DIVIDE WS-N BY 2
               GIVING WS-GIVING
               REMAINDER WS-REMAINDER
      *
             IF WS-REMAINDER IS EQUAL TO ZERO
               ADD 1 TO WS-COUNT-PAR
               ADD WS-N TO WS-ACUM-PAR
             ELSE
               ADD 1 TO WS-COUNT-IMPAR
               ADD WS-N TO WS-ACUM-IMPAR
             END-IF
           END-IF.

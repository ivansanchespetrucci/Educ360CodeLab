      ******************************************************************
      * FILE NAME   : EXERC017                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : FIND AND REMOVE/INSERT A NUMBER IN A SORTED ARRAY*
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC017.
       AUTHOR. FABIO MARQUES.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01  WS-N                   PIC 9(3)        VALUE ZEROES.
       01  WS-X                   PIC 9(3)        VALUE ZEROES.
       01  WS-LOCALIZACAO         PIC 9(3)        VALUE 1.
       01  WS-ENCONTRADO          PIC X           VALUE 'F'.
       01  WS-V.
           05  WS-LINHAS          OCCURS 100 TIMES.
              10  WS-VALORES      PIC 9(3)        VALUE ZEROES.
      *
       01  WS-I                   PIC 9(3)        VALUE ZEROES.
       01  WS-FROM                PIC 9(3)        VALUE ZEROES.
       01  WS-VALOR               PIC 9(3)        VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-N.
      *
           IF WS-N IS GREATER THAN 100 THEN
             DISPLAY 'O TAMANHO MAXIMO DO VETOR E 100'
             GOBACK
           END-IF.
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-N
             ACCEPT WS-VALORES(WS-I)
           END-PERFORM.
      *
           ACCEPT WS-X.
      *
           PERFORM UNTIL WS-LOCALIZACAO IS GREATER THAN WS-N OR
                         WS-VALORES(WS-LOCALIZACAO) IS GREATER THAN
                         OR EQUAL TO WS-X
             ADD 1 TO WS-LOCALIZACAO
           END-PERFORM.
      *
           IF WS-LOCALIZACAO IS LESS THAN OR EQUAL TO WS-N AND
                  WS-VALORES(WS-LOCALIZACAO) IS EQUAL TO WS-X THEN
              MOVE 'T' TO WS-ENCONTRADO
           END-IF.
      *
           IF WS-ENCONTRADO = 'T' THEN
             DISPLAY 'O NUMERO ' WS-X ' FOI LOCALIZADO NA POSICAO '
                     WS-LOCALIZACAO
      *
             PERFORM VARYING WS-I FROM WS-LOCALIZACAO BY 1
                     UNTIL WS-I IS GREATER OR EQUAL TO WS-N
               ADD 1 TO WS-I GIVING WS-VALOR
               MOVE WS-VALORES(WS-VALOR) TO WS-VALORES(WS-I)
             END-PERFORM
      *
             SUBTRACT 1 FROM WS-N
           ELSE
             SUBTRACT 1 FROM WS-N GIVING WS-FROM
             PERFORM VARYING WS-I FROM WS-N BY -1 
                     UNTIL WS-I IS LESS THAN WS-LOCALIZACAO
               ADD 1 TO WS-I GIVING WS-VALOR
               MOVE WS-VALORES(WS-I) TO WS-VALORES(WS-VALOR)
             END-PERFORM
      *
             MOVE WS-X TO WS-VALORES(WS-LOCALIZACAO)
             ADD 1 TO WS-N
           END-IF.
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I IS > WS-N
             DISPLAY 'V[' WS-I '] = ' WS-VALORES(WS-I)
           END-PERFORM.
      *
           GOBACK.

      ******************************************************************
      * FILE NAME   : EXERC016                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CHECK IF AN ARRAY IS IN ASCENDING ORDER          *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC016.
       AUTHOR. FABIO MARQUES.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01  WS-N                   PIC 9(3)        VALUE ZEROES.
       01  WS-ORDENADO            PIC X           VALUE 'T'.
       01  WS-V.
           05  WS-LINHAS          OCCURS 100 TIMES.
              10  WS-VALORES      PIC 9(3)        VALUE ZEROES.
      *
       01  WS-I                   PIC 9(3)        VALUE ZEROES.
       01  WS-J                   PIC 9(3)        VALUE ZEROES.
       01  WS-FROM                PIC 9(3)        VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-N.

           IF WS-N IS GREATER THAN 100 THEN
             DISPLAY 'O TAMANHO MAXIMO DO VETOR E 100'
             GOBACK
           END-IF.

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-N
             ACCEPT WS-VALORES(WS-I)
           END-PERFORM.

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I >= WS-N
             ADD WS-I 1 GIVING WS-FROM

             PERFORM VARYING WS-J FROM WS-FROM BY 1 UNTIL WS-J > WS-N
               IF WS-VALORES(WS-J) IS LESS THAN WS-VALORES(WS-I) THEN
                 MOVE 'F' TO WS-ORDENADO
               END-IF
             END-PERFORM
           END-PERFORM.
      *
           IF WS-ORDENADO IS EQUAL TO 'T' THEN
             DISPLAY 'O VETOR V INFORMADO ESTA ORDENADO '
                     'EM ORDEM CRESCENTE.'
           ELSE
             DISPLAY 'O VETOR V INFORMADO NAO ESTA ORDENADO '
                     'EM ORDEM CRESCENTE.'
           END-IF.
      *
           GOBACK.

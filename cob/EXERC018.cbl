      ******************************************************************
      * FILE NAME   : EXERC018                                         *
      * DATE        : 2025-03-29                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : FIND ROW WITH HIGHEST SUM IN 4x3 MATRIX          *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC016.
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
       01  WS-MATRIZ.
           05  WS-LINHAS          OCCURS 3 TIMES.
               10  WS-COLUNAS     OCCURS 3 TIMES.
                   15  WS-VALORES PIC 9(02)V9(02) VALUE ZEROES.
       01  WS-SOMA                PIC 9(02)V9(02) VALUE ZEROES.
       01  WS-MAIOR-SOMA          PIC 9(02)V9(02) VALUE ZEROES.
       01  WS-LINHA               PIC 9(01)       VALUE ZEROES.
      *
       01  WS-I                   PIC 9(01)        VALUE ZEROES.
       01  WS-J                   PIC 9(01)        VALUE ZEROES.
       01  WS-MAIOR-SOMA-EDIT     PIC Z9,99        VALUE ZEROES.
      *
       PROCEDURE DIVISION.

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 3
             MOVE ZERO TO WS-SOMA

             PERFORM VARYING WS-J FROM 1 BY 1 UNTIL WS-J > 3
               ACCEPT WS-VALORES(WS-I, WS-J)

               ADD WS-VALORES(WS-I, WS-J) TO WS-SOMA
             END-PERFORM

             IF WS-SOMA IS GREATER THAN WS-MAIOR-SOMA
               MOVE WS-I    TO WS-LINHA
               MOVE WS-SOMA TO WS-MAIOR-SOMA
             END-IF
           END-PERFORM
      *
           MOVE WS-MAIOR-SOMA TO WS-MAIOR-SOMA-EDIT.
           DISPLAY 'A LINHA DE MAIOR VALOR SOMA DOS SEUS ELEMENTOS E'
                   ' A LINHA ' WS-LINHA ' COM SOMA ' WS-MAIOR-SOMA-EDIT.
      *
           GOBACK.

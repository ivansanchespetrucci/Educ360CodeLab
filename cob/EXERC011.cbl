      ******************************************************************
      * FILE NAME   : EXERC011                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : SUPERMARKET CHECKOUT SIMULATION                  *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC011.
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
       01 WS-DESCRICAO     PIC X(30)         VALUE SPACES.
       01 WS-VALOR         PIC 9(02)V9(2)    VALUE ZEROES.
       01 WS-QTD           PIC 9(02)V9(2)    VALUE ZEROES.
       01 WS-TOTAL         PIC 9(04)V9(2)    VALUE ZEROES.
      *
       01 WS-TOTAL-EDIT    PIC Z.ZZ9,99      VALUE ZEROES.
      *
       PROCEDURE DIVISION.
       MAIN.
           PERFORM PROXIMO
             WITH TEST AFTER
             UNTIL WS-DESCRICAO IS EQUAL TO SPACES.
      *
           MOVE WS-TOTAL TO WS-TOTAL-EDIT.
           DISPLAY 'TOTAL DA COMPRA ' WS-TOTAL-EDIT.
      *
           GOBACK.

       PROXIMO.
           ACCEPT WS-DESCRICAO.

           IF WS-DESCRICAO IS NOT EQUAL TO SPACES
             ACCEPT WS-VALOR
             ACCEPT WS-QTD

             COMPUTE WS-TOTAL = WS-TOTAL + (WS-VALOR * WS-QTD)
           END-IF.


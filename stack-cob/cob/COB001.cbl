      ******************************************************************
      * FILE NAME   : COB001                                           *
      * DATE        : 2025-04-28                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : DOLLAR TO REAL CONVERSION                        *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB001.
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
       77 WS-VALOR-DOLAR        PIC 9(02)V9(02) VALUE ZEROES.
       77 WS-QTD-DOLAR          PIC 9(04)V9(02) VALUE ZEROES.
       77 WS-QTD-REAL           PIC 9(06)V9(02) VALUE ZEROES.
      *
       77 WS-QTD-DOLAR-EDIT     PIC    Z.ZZ9,99 VALUE ZEROES.
       77 WS-QTD-REAL-EDIT      PIC  ZZZ.ZZ9,99 VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-VALOR-DOLAR.
           ACCEPT WS-QTD-DOLAR.
      *
           COMPUTE WS-QTD-REAL = WS-QTD-DOLAR * WS-VALOR-DOLAR.
      *
           MOVE WS-QTD-DOLAR TO WS-QTD-DOLAR-EDIT.
           MOVE WS-QTD-REAL  TO WS-QTD-REAL-EDIT.
      *
           DISPLAY "CONVERSAO DE " WS-QTD-DOLAR-EDIT " DOLARES = "
                   WS-QTD-REAL-EDIT " REAIS.".
      *
           GOBACK.
       END PROGRAM COB001.

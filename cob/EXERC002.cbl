      ******************************************************************
      * FILE NAME   : EXERC002                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALCULATE THE TRIANGLE AREA                      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC002.
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
       01 WS-BASE      PIC 9(02)       VALUE ZEROES.
       01 WS-ALTURA    PIC 9(02)       VALUE ZEROES.
       01 WS-AREA      PIC 9(04)V9(02) VALUE ZEROES.
      *
       01 WS-AREA-EDIT PIC Z.ZZ9,99 VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-BASE.
           ACCEPT WS-ALTURA.
      *
           COMPUTE WS-AREA = (WS-BASE * WS-ALTURA) / 2.
           MOVE WS-AREA TO WS-AREA-EDIT.
      *
           DISPLAY 'A AREA DO TRIANGULO DE BASE ' WS-BASE
                   ' E ALTURA ' WS-ALTURA ' E: ' WS-AREA-EDIT.
      *
           GOBACK.

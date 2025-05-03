      ******************************************************************
      * FILE NAME   : COB002                                           *
      * DATE        : 2025-04-28                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALCULATE BMI                                    *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB002.
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
       77 WS-PESO         PIC 9(3)V9(2) VALUE ZEROES.
       77 WS-ALTURA       PIC 9(1)V9(2) VALUE ZEROES.
       77 WS-IMC          PIC 9(2)V9(2) VALUE ZEROES.
      *
       77 WS-IMC-EDIT     PIC     Z9,99 VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-PESO.
           ACCEPT WS-ALTURA.
      *
           COMPUTE WS-IMC = (WS-PESO / (WS-ALTURA * WS-ALTURA)).
           MOVE WS-IMC TO WS-IMC-EDIT.
      *
           DISPLAY "SEU IMC = " WS-IMC-EDIT.
      *
           GOBACK.
       END PROGRAM COB002.
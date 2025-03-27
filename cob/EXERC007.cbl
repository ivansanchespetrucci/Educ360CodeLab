      ******************************************************************
      * FILE NAME   : EXERC007                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALC BMI (BODY MASS INDEX) AND DISPLAY STATUS    *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC007.
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
       01 WS-PESO         PIC 9(3)V9(2) VALUE ZEROES.
       01 WS-ALTURA       PIC 9(3)V9(2) VALUE ZEROES.
       01 WS-IMC          PIC 9(3)V9(2) VALUE ZEROES.
      *
       01 WS-IMC-EDIT     PIC ZZ9,9     VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-PESO.
           ACCEPT WS-ALTURA.
      *
           COMPUTE WS-IMC ROUNDED = (WS-PESO / (WS-ALTURA * WS-ALTURA)).
      *
           MOVE WS-IMC TO WS-IMC-EDIT.
           DISPLAY 'IMC ' WS-IMC-EDIT.
      *
           IF WS-IMC IS LESS THAN 18,5
             DISPLAY 'ABAIXO'
           ELSE IF     WS-IMC GREATER THAN OR EQUAL 18,5
                   AND WS-IMC LESS THAN 24,9
             DISPLAY 'NORMAL'
           ELSE IF     WS-IMC GREATER THAN OR EQUAL 25,0
                   AND WS-IMC LESS THAN 29,9
             DISPLAY 'SOBREPESO'
           ELSE IF     WS-IMC GREATER THAN OR EQUAL 30,0
                   AND WS-IMC LESS THAN 39,9
             DISPLAY 'ACIMA'
           END-IF.
      *
           GOBACK.

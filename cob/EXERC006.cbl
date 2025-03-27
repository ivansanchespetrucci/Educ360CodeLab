      ******************************************************************
      * FILE NAME   : EXERC006                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : SWAP TWO VARIABLES AND DISPLAY FINAL VALUES      *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC006.
       AUTHOR. FABIO MARQUES.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01 WS-NUM1             PIC 9(02) VALUE ZEROES.
       01 WS-NUM2             PIC 9(02) VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-NUM1.
           ACCEPT WS-NUM2.
      *
           COMPUTE WS-NUM1 = WS-NUM1 + WS-NUM2.
           COMPUTE WS-NUM2 = WS-NUM1 - WS-NUM2.
           COMPUTE WS-NUM1 = WS-NUM1 - WS-NUM2.
      *
           DISPLAY 'NUM1 ' WS-NUM1
           DISPLAY 'NUM2 ' WS-NUM2
      *
           GOBACK.

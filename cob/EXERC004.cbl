      ******************************************************************
      * FILE NAME   : EXERC004                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALCULATE AGE IN DAYS, HOURS, MINUTES AND SECONDS*
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC004.
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
       01 WS-SAL-BASE           PIC 9(04)V9(02) VALUE ZEROES.
       01 WS-GRATIFICACAO       PIC 9(04)V9(02) VALUE ZEROES.
       01 WS-SAL-BRUTO          PIC 9(04)V9(02) VALUE ZEROES.
       01 WS-IR                 PIC 9(04)V9(02) VALUE ZEROES.
      *
       01 WS-SAL-BASE-EDIT      PIC Z.ZZ9,99 VALUE ZEROES.
       01 WS-GRATIFICACAO-EDIT  PIC Z.ZZ9,99 VALUE ZEROES.
       01 WS-SAL-BRUTO-EDIT     PIC Z.ZZ9,99 VALUE ZEROES.
       01 WS-IR-EDIT            PIC Z.ZZ9,99 VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-SAL-BASE.
      *
           COMPUTE WS-GRATIFICACAO = WS-SAL-BASE * 0,1.
           COMPUTE WS-SAL-BRUTO    = WS-SAL-BASE + WS-GRATIFICACAO.
      *
           IF WS-SAL-BRUTO IS GREATER THAN 1200
               COMPUTE WS-IR = WS-SAL-BRUTO * 0,2
           ELSE
               COMPUTE WS-IR = WS-SAL-BRUTO * 0,15
           END-IF.
      *
           MOVE WS-SAL-BASE     TO WS-SAL-BASE-EDIT.
           MOVE WS-GRATIFICACAO TO WS-GRATIFICACAO-EDIT.
           MOVE WS-SAL-BRUTO    TO WS-SAL-BRUTO-EDIT.
           MOVE WS-IR           TO WS-IR-EDIT.
      *
           DISPLAY 'SALARIO BASE  ' WS-SAL-BASE-EDIT.
           DISPLAY 'GRATIFICACAO  ' WS-GRATIFICACAO-EDIT.
           DISPLAY 'SALARIO BRUTO ' WS-SAL-BRUTO-EDIT.
           DISPLAY 'IR            ' WS-IR-EDIT.
      *
           GOBACK.

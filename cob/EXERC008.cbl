      ******************************************************************
      * FILE NAME   : EXERC008                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALCULATE SALESMAN PAYMENT AND DISPLAY DETAILS   *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC008.
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
       01 WS-SAL-BASE          PIC 9(04)V9(02) VALUE ZEROES.
       01 WS-FATURAMETO        PIC 9(04)V9(02) VALUE ZEROES.
       01 WS-SAL-FINAL         PIC 9(04)V9(02) VALUE ZEROES.
       01 WS-ABONO             PIC 9(03)       VALUE ZEROES.
      *
       01 WS-SAL-BASE-EDIT     PIC Z.ZZ9,99    VALUE ZEROES.
       01 WS-FATURAMETO-EDIT   PIC Z.ZZ9,99    VALUE ZEROES.
       01 WS-SAL-FINAL-EDIT    PIC Z.ZZ9,99    VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-SAL-BASE.
           ACCEPT WS-FATURAMETO.
      *
           IF WS-FATURAMETO IS GREATER THAN 5000
             MOVE 300 TO WS-ABONO
           END-IF.
      *
           COMPUTE WS-SAL-FINAL = WS-SAL-BASE + WS-ABONO.
      *
           MOVE WS-SAL-BASE    TO WS-SAL-BASE-EDIT.
           MOVE WS-FATURAMETO  TO WS-FATURAMETO-EDIT.
           MOVE WS-SAL-FINAL   TO WS-SAL-FINAL-EDIT.
      *
           DISPLAY 'SALARIO BASE  ' WS-SAL-BASE-EDIT.
           DISPLAY 'FATURAMENTO   ' WS-FATURAMETO-EDIT.
           DISPLAY 'SALARIO FINAL ' WS-SAL-FINAL-EDIT.
      *
           GOBACK.

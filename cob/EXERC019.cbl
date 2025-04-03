      ******************************************************************
      * FILE NAME   : EXERC019                                         *
      * DATE        : 2025-03-29                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : SUM TWO 3x3 MATRICES AND DISPLAY RESULT          *
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
       01  WS-MATRIZ-A.
           05  WS-LINHAS-A          OCCURS 3 TIMES.
               10  WS-COLUNAS-A     OCCURS 3 TIMES.
                   15  WS-VALORES-A PIC 9(02)V9(02) VALUE ZEROES.
       01  WS-MATRIZ-B.
           05  WS-LINHAS-B          OCCURS 3 TIMES.
               10  WS-COLUNAS-B     OCCURS 3 TIMES.
                   15  WS-VALORES-B PIC 9(02)V9(02) VALUE ZEROES.
       01  WS-SOMA                  PIC 9(02)V9(02) VALUE ZEROES.
      *
       01  WS-I                     PIC 9(01)       VALUE ZEROES.
       01  WS-J                     PIC 9(01)       VALUE ZEROES.
       01  WS-SOMA-EDIT             PIC Z9,99       VALUE ZEROES.
      *
       PROCEDURE DIVISION.

           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 3
             PERFORM VARYING WS-J FROM 1 BY 1 UNTIL WS-J > 3
               ACCEPT WS-VALORES-A(WS-I, WS-J)
             END-PERFORM
           END-PERFORM
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 3
             PERFORM VARYING WS-J FROM 1 BY 1 UNTIL WS-J > 3
               ACCEPT WS-VALORES-B(WS-I, WS-J)
             END-PERFORM
           END-PERFORM
      *
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 3
             PERFORM VARYING WS-J FROM 1 BY 1 UNTIL WS-J > 3
               COMPUTE WS-SOMA = WS-VALORES-A(WS-I, WS-J) +
                                 WS-VALORES-B(WS-I, WS-J)
               MOVE WS-SOMA TO WS-SOMA-EDIT
              DISPLAY WS-SOMA-EDIT
             END-PERFORM
           END-PERFORM
      *
           GOBACK.

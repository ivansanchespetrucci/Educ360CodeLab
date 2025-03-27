      ******************************************************************
      * FILE NAME   : EXERC005                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CAR RENTAL COST CALCULATION FOR FIXED DISTANCES  *
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC005.
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
       01 WS-NOME-PASSAGEIRO       PIC X(30)       VALUE SPACES.
       01 WS-CIDADE-DESTINO        PIC X(30)       VALUE SPACES.
       01 WS-DISTANCIA             PIC 9(03)       VALUE ZEROES.
       01 WS-CUSTO-ALUGUEL         PIC 9(04)V9(02) VALUE ZEROES.
      *
       01 WS-DISTANCIA-EDIT        PIC ZZ9         VALUE ZEROES.
       01 WS-CUSTO-ALUGUEL-EDIT    PIC Z.ZZ9,99    VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-NOME-PASSAGEIRO.
           ACCEPT WS-CIDADE-DESTINO.
      *
           EVALUATE WS-CIDADE-DESTINO
             WHEN 'VITORIA'
               MOVE 949 TO WS-DISTANCIA
             WHEN 'MURIAE'
               MOVE 628 TO WS-DISTANCIA
             WHEN 'NITEROI'
               MOVE 424 TO WS-DISTANCIA
             WHEN 'PIRACICABA'
               MOVE 168 TO WS-DISTANCIA
           END-EVALUATE.
      *
           DISPLAY 'NOME DO PASSAGEIRO ' WS-NOME-PASSAGEIRO
      *
           IF WS-DISTANCIA IS EQUAL TO ZEROES
             DISPLAY 'CIDADE NAO ATENDIDA PELA EMPRESA'
           ELSE
             COMPUTE WS-CUSTO-ALUGUEL = WS-DISTANCIA * 2,2
      *
             MOVE WS-DISTANCIA     TO WS-DISTANCIA-EDIT
             MOVE WS-CUSTO-ALUGUEL TO WS-CUSTO-ALUGUEL-EDIT
      *
             DISPLAY 'CIDADE DESTINO     ' WS-CIDADE-DESTINO
             DISPLAY 'DISTANCIA          ' WS-DISTANCIA-EDIT
             DISPLAY 'CUSTO ALUGUEL      ' WS-CUSTO-ALUGUEL-EDIT
           END-IF.
      *
           GOBACK.

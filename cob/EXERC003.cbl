      ******************************************************************
      * FILE NAME   : EXERC003                                         *
      * DATE        : 2025-03-22                                       *
      * AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)         *
      * DATA CENTER : COMPANY.EDUC360                                  *
      * PURPOSE     : CALCULATE AGE IN DAYS, HOURS, MINUTES AND SECONDS*
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXERC003.
       AUTHOR. FABIO MARQUES.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
       01 WS-IDADE    PIC 9(02) VALUE ZEROES.
       01 WS-DIAS     PIC 9(05) VALUE ZEROES.
       01 WS-HORAS    PIC 9(06) VALUE ZEROES.
       01 WS-MINUTOS  PIC 9(08) VALUE ZEROES.
       01 WS-SEGUNDOS PIC 9(10) VALUE ZEROES.
      *
       PROCEDURE DIVISION.
           ACCEPT WS-IDADE.
      *
           COMPUTE WS-DIAS     = WS-IDADE * 365.   *> DAYS
           COMPUTE WS-HORAS    = WS-DIAS * 24.     *> HOURS
           COMPUTE WS-MINUTOS  = WS-HORAS * 60.    *> MINUTES
           COMPUTE WS-SEGUNDOS = WS-MINUTOS * 60.  *> SECONDS
      *
           DISPLAY 'COM ' WS-IDADE ' ANOS, VOCE JA VIVEU '
                   WS-DIAS ' DIAS. '
                   WS-HORAS ' HORAS. '
                   WS-MINUTOS ' MINUTOS. '
                   WS-SEGUNDOS  ' SEGUNDOS.'.
      *
           GOBACK.

/**********************************************************************
* FILE NAME   : EXERC003                                              *
* DATE        : 2025-03-13                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE AGE IN DAYS, HOURS, MINUTES AND SECONDS     *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    inteiro idade = 0, dias = 0, horas = 0, minutos = 0, segundos = 0

    // Reading age (in years)
    escreva("Informe a sua idade (anos): ")
    leia(idade)

    // Calculating the age
    dias = idade * 365                    // days
    horas = dias * 24                     // hours
    minutos = horas * 60                  // minutes
    segundos = minutos * 60               // seconds

    // Display the calculated age
    escreva("Com ", idade, " anos, você já viveu:\n")
    escreva(dias, " dias.\n")
    escreva(horas, " horas.\n")
    escreva(minutos, " minutos.\n")
    escreva(segundos, " segundos.\n")
  }
}
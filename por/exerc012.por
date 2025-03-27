/**********************************************************************
* FILE NAME   : EXERC012                                              *
* DATE        : 2025-03-22                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE AND DISPLAY AVERAGE OF 5 NUMBERS            *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    inteiro numeros[5]
    real media = 0

    // Reading values
    para (inteiro i = 0; i < 5; i++) {
      escreva ("Informe o número ", i+1, ": ")
      leia (numeros[i])

      // Summing the values
      media = media + numeros[i]
    }

    // Calculating average
    media = media / 5

    // Display average
    escreva ("\nA média dos valores é ", media)
  }
}
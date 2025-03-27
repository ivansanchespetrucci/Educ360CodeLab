/**********************************************************************
* FILE NAME   : EXERC013                                              *
* DATE        : 2025-03-22                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE AVERAGE OF 5 NUMBERS AND DISPLAY LARGER ONES*
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    inteiro numeros[5]
    real media = 0
    
    para (inteiro i = 0; i < 5; i++) {
      // Reading values
      escreva ("Informe o número ", i+1, ": ")
      leia (numeros[i])

      // Summing the values
      media = media + numeros[i]
    }

    // Calculating average
    media = media / 5

    // Display average
    escreva ("\nA média dos valores é ", media)

    // Display the larges ones
    para (inteiro i = 0; i < 5; i++) {
      se (numeros[i] >= media) {
        escreva("\nO número ", i+1, " tem valor ", numeros[i])
      }
    }
  }
}

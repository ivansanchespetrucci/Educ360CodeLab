/**********************************************************************
* FILE NAME   : EXERC015                                              *
* DATE        : 2025-03-22                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SORT AND DISPLAY 4 NUMBERS IN SAME ARRAY              *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    inteiro numeros[4]

    // Reading values
    para (inteiro i = 0; i < 4; i++) {
      escreva ("Informe o número ", i+1, ": ")
      leia (numeros[i])
    }

    // Sorting the array (selection sort)
    para (inteiro i = 0; i < 3; i++) {
      para (inteiro j = i+1; j < 4; j++) {
        se (numeros[j] < numeros[i]) { 
          // Swapping
          numeros[i] = numeros[i] + numeros[j]
          numeros[j] = numeros[i] - numeros[j]
          numeros[i] = numeros[i] - numeros[j]
        }
      }
    }

    // Display sorted array
    escreva("\nvalores[ ")
    para (inteiro i = 0; i < 4; i++) {
      escreva (numeros[i])
      se (i < 3) escreva(", ")
    }
    escreva(" ]")
  }
}

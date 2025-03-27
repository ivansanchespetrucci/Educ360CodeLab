/**********************************************************************
* FILE NAME   : EXERC014                                              *
* DATE        : 2025-03-22                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : FIND THE LARGEST AND SMALLEST OF 6 NUMBERS            *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real numeros[6], menor = 0, maior = 0

    // Reading values
    para (inteiro i = 0; i < 6; i++) {
      escreva ("Informe o número ", i+1, ": ")
      leia (numeros[i])
    }

    // Updating the smallest and the largest numbers control
    menor = numeros[0]
    maior = menor

    // Finding the smallest and the largest numbers
    para (inteiro i = 1; i < 6; i++) {
      se (numeros[i] < menor) {
        menor = numeros[i]
      }
      
      se (numeros[i] > maior) {
        maior = numeros[i]
      }
    }

    // Display the smallest and the largest numbers
    escreva("\nO menor número informado foi: ", menor)
    escreva("\nO maior número informado foi: ", maior)
  }
}
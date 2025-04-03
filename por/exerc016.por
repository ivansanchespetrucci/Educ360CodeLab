/**********************************************************************
* FILE NAME   : EXERC016                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CHECK IF AN ARRAY IS IN ASCENDING ORDER               *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    inteiro n = 0
    logico ordenado = verdadeiro

    // Reading array length
    escreva("Informe o tamanho do vetor V: ")
    leia(n)

    // Array declaration
    inteiro v[n]

    // Reading array values
    para (inteiro i = 0; i < n; i++) {
      escreva("Informe o valor de V[", i, "]: ")
      leia(v[i])
    }

    // Checking
    para (inteiro i = 0; i < n -1; i++) {
      para (inteiro j = i+1; j < n; j++) {
        se (v[j] < v[i]) { 
          ordenado = falso
        }
      }
    }

    // Display
    se (ordenado) {
      escreva("\nO vetor V informado está ordenado em ordem crescente.")
    } senao {
      escreva("\nO vetor V informado não está ordenado em ordem crescente.")
    }
  }
}

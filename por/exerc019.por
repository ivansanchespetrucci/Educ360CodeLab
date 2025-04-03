/**********************************************************************
* FILE NAME   : EXERC019                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SUM TWO 3x3 MATRICES AND DISPLAY RESULT               *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real a[3][3]
    real b[3][3]
    real soma = 0

    // Reading A matrix values
    para (inteiro i = 0; i < 3; i++) {
      para (inteiro j = 0; j < 3; j++) {
         escreva("Informe o valor para Matriz A[", i, "][", j, "]: ")
         leia(a[i][j])
      }
    }

    escreva("***\n")

    // Reading B matrix values
    para (inteiro i = 0; i < 3; i++) {
      para (inteiro j = 0; j < 3; j++) {
         escreva("Informe o valor para Matriz B[", i, "][", j, "]: ")
         leia(b[i][j])
      }
    }

     escreva("***")

    // Calulating and displaying the sum matrix
    para (inteiro i = 0; i < 3; i++) {
      escreva("\n")
      para (inteiro j = 0; j < 3; j++) {
         soma = a[i][j] + b[i][j]
         escreva(soma, "\t")
      }
    }
  }
}

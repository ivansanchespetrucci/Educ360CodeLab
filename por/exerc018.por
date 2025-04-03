/**********************************************************************
* FILE NAME   : EXERC018                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : FIND ROW WITH HIGHEST SUM IN 4x3 MATRIX               *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real matriz[4][3]
    real soma = 0
    real maior_soma = 0
    inteiro linha = 1

    // Reading matrix values
    para (inteiro i = 1; i < 4; i++) {
      soma = 0

      para (inteiro j = 1; j < 3; j++) {
         escreva("Informe o valor para Matriz[", i, "][", j, "]: ")
         leia(matriz[i][j])

         // Summing matrix row elements
         soma = soma + matriz[i][j]
      }

      // Updating the hightest line value
      se (soma > maior_soma) {
        linha = i
        maior_soma = soma
      }
    }
    
    // Display hightest line value
    escreva("\nA linha de maior soma dos seus elementos é a linha ", linha, " com soma de ", maior_soma)
  }
}

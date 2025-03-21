/**********************************************************************
* FILE NAME   : EXERC011                                              *
* DATE        : 2025-03-17                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SUPERMARKET CHECKOUT SIMULATION                       *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    cadeia descricao
    real valor, qtd, total = 0

    faca {
      // Reading product description
      escreva ("Informe a descrição do produto: ")
      leia (descricao)

      se (descricao != "") {
        // Reading product value
        escreva ("Informe o valor do produto: ")
        leia (valor)

        // Reading product quantity
        escreva ("Informe a quantidade: ")
        leia (qtd)

        // Calculating total
        total = total + (valor * qtd)

        escreva("\n")
      }
    } enquanto (descricao != "")

    // Display total
    escreva ("\nTotal da compra: ", total)
  }
}
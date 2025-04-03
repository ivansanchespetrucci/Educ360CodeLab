/**********************************************************************
* FILE NAME   : EXERC011                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SUPERMARKET CHECKOUT SIMULATION                       *
**********************************************************************/

// Variable declaration
let descricao = ""
let valor     = 0
let qtd       = 0
let total     = 0

do {
  // Reading product description
  descricao = prompt("Informe a descrição do produto")
  
  if (descricao != "") {
    // Reading product value
    valor = parseFloat(prompt("Informe o valor do produto"))
    // Reading product quantity
    qtd   = parseInt(prompt("Informe a quantidade"))
    
    // Calculating total
    total += valor * qtd
  }
} while (descricao != "") // Running condition

// Display total
console.log("Total da compra: " + total)
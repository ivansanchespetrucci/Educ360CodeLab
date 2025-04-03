/**********************************************************************
* FILE NAME   : EXERC018                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : FIND ROW WITH HIGHEST SUM IN 4x3 MATRIX               *
**********************************************************************/

// Variable declaration
let matriz = Array(4)
matriz[0] = Array(3)
matriz[1] = Array(3)
matriz[2] = Array(3)
matriz[3] = Array(3)

// Reading matrix values
let soma       = 0
let maior_soma = 0
let linha      = 1

for (i = 0; i < 4; i++) {
  soma = 0
  
  for (j = 0; j < 3; j++) {
    matriz[i][j] = parseFloat(prompt("Informe o valor para Matriz[" + i + "][" + j + "]: "))
    
    // Summing matrix row elements
    soma += matriz[i][j]
  }
  
  // Updating the hightest line value
  if (soma > maior_soma) {
     linha      = i
     maior_soma = soma
  }
}

// Display hightest line value
console.log("A linha de maior soma dos seus elementos é a linha " + linha + " com soma de " + maior_soma)
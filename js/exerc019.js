/**********************************************************************
* FILE NAME   : EXERC018                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SUM TWO 3x3 MATRICES AND DISPLAY RESULT               *
**********************************************************************/

// Variable declaration
let a = Array(3)
a[0] = Array(3)
a[1] = Array(3)
a[2] = Array(3)

let b = Array(3)
b[0] = Array(3)
b[1] = Array(3)
b[2] = Array(3)

let c = Array(3)
c[0] = Array(3)
c[1] = Array(3)
c[2] = Array(3)

let soma       = 0
let maior_soma = 0
let linha      = 1

// Reading A matrix values
for (i = 0; i < 3; i++) {
  for (j = 0; j < 3; j++) {
    a[i][j] = parseFloat(prompt("Informe o valor para Matriz A[" + i + "][" + j + "]: "))
  } 
}

// Reading B matrix values
for (i = 0; i < 3; i++) {
  for (j = 0; j < 3; j++) {
    b[i][j] = parseFloat(prompt("Informe o valor para Matriz B[" + i + "][" + j + "]: "))
  } 
}
// Calulating the sum matrix
for (i = 0; i < 3; i++) {
  for (j = 0; j < 3; j++) {
    c[i][j] = a[i][j] + b[i][j]
  } 
}

// Display the sum matrix
console.log(c)
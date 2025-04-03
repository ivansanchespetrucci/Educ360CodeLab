/**********************************************************************
* FILE NAME   : EXERC013                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE AVERAGE OF 5 NUMBERS AND DISPLAY LARGER ONES*
**********************************************************************/

// Variable declaration
let numeros = []
let media   = 0

for (i = 0; i < 5; i++) {
  // Reading values
  numeros[i] = parseInt(prompt("Informe o número " + (i + 1)))

  // Summing the values
  media += numeros[i]
}

// Calculating average
media /= 5

// Display average
console.log("A media dos valores é: " + media)

// Display the larges ones
for (i = 0; i < 5; i++) {
  if (numeros[i] > media) {
    console.log("O número " + (i + 1) + " tem valor " + numeros[i])
  }
}
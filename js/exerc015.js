/**********************************************************************
* FILE NAME   : EXERC015                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SORT AND DISPLAY 4 NUMBERS IN SAME ARRAY              *
**********************************************************************/

// Variable declaration
let numeros = []

// Reading values
for (i = 0; i < 4; i++) {
  numeros[i] = parseInt(prompt("Informe o número " + (i + 1)))
}

// Sorting the array (selection sort)
for (i = 0; i < 3; i++) {
  for (j = i +1; j < 4; j++) {
    if (numeros[j] < numeros[i]) {
      numeros[i] = numeros[i] + numeros[j]
      numeros[j] = numeros[i] - numeros[j]
      numeros[i] = numeros[i] - numeros[j]      
    }
  }
}

// Display sorted array
console.log(numeros)
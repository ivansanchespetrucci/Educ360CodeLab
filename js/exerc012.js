/**********************************************************************
* FILE NAME   : EXERC012                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE AND DISPLAY AVERAGE OF 5 NUMBERS            *
**********************************************************************/

// Variable declaration
let numeros = []
let media   = 0

// Reading values
for (i = 0; i < 5; i++) {
  numeros[i] = parseInt(prompt("Informe o número " + (i + 1)))
  
  // Summing the values
  media += numeros[i]
}

// Calculating average
media /= 5

// Display average
console.log("A pedia dos valores é: " + media)

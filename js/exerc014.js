/**********************************************************************
* FILE NAME   : EXERC014                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : FIND THE LARGEST AND SMALLEST OF 6 NUMBERS            *
**********************************************************************/

// Variable declaration
let numeros = []
let menor   = 0
let maior   = 0

// Reading values
for (i = 0; i < 6; i++) {
  numeros[i] = parseInt(prompt("Informe o número " + (i + 1)))
}

// Updating the smallest and the largest numbers control
menor = numeros[0]
maior = menor

// Finding the smallest and the largest numbers
for (i = 0; i < 6; i++) {
  if (numeros[i] < menor) {
    menor = numeros[i]
  }
  
  if (numeros[i] > maior) {
    maior = numeros[i]
  }
}

// Display the smallest and the largest numbers
console.log("O menor número informado foi: " + menor)
console.log("O maior número informado foi: " + maior)

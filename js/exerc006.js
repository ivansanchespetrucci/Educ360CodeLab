/**********************************************************************
* FILE NAME   : EXERC006                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SWAP TWO VARIABLES AND DISPLAY FINAL VALUES           *
**********************************************************************/

// Variable declaration
let num1 = 0
let num2 = 0

// Reading values
num1 = parseFloat(prompt("Informe o primeiro número"))
num2 = parseFloat(prompt("Informe o segundo número"))

// Swapping
num1 = num1 + num2
num2 = num1 - num2
num1 = num1 - num2

// Display values
console.log("Num 1: " + num1)
console.log("Num 2: " + num2)
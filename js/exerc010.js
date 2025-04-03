/**********************************************************************
* FILE NAME   : EXERC010                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE FINAL INVESTMENT VALUE AND DISPLAY DETAILS  *
**********************************************************************/

// Variable declaration
let capital = 0
let meses   = 0
let taxa    = 0
let final   = 0

// Reading values
capital = parseFloat(prompt("Informe o capital"))
meses   = parseInt(prompt("Informe o número de meses"))
taxa    = parseFloat(prompt("Informe a taxa"))

final = capital

// Calculating final investiment value
for (i = 0; i < meses; i++) {
  final += final * taxa / 100
}

// Display values details
console.log("Capital:      " + capital)
console.log("Meses:        " + meses)
console.log("Taxa:         " + taxa)
console.log("Capitalizado: " + final)


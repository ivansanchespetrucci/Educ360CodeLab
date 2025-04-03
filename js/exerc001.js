/**********************************************************************
* FILE NAME   : EXERC001                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE THE RECTANGLE AREA                          *
**********************************************************************/

// Variable declaration
let base   = 0
let altura = 0
let area   = 0

// Reading the rectangle base and height values
base   = prompt("Informe a base") 
altura = prompt("Informe a altura")

// Rectangle area calculation
area   = base * altura

// Display the calculated area
console.log("A área do retângulo é " + area)
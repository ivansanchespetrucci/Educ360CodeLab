/**********************************************************************
* FILE NAME   : EXERC008                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE SALESMAN PAYMENT AND DISPLAY DETAILS        *
**********************************************************************/

// Variable declaration
let sal_base    = 0
let faturamento = 0
let sal_final   = 0
let abono       = 0

// Reading values
sal_base    = parseFloat(prompt("Informe o salário base"))
faturamento = parseFloat(prompt("Informe o faturamento"))

// Calculating salesman payment
if (faturamento > 5000) {
  abono = 300
}
 
sal_final = sal_base + abono

// Display details
console.log("Salário base:  " + sal_base)
console.log("Faturamento:   " + faturamento)
console.log("Salário final: " + sal_final)

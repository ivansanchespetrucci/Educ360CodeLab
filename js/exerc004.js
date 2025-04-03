/**********************************************************************
* FILE NAME   : EXERC004                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE OF SALARY WITH INCOME TAX AND BONUS         *
**********************************************************************/

// Variable declaration
let sal_base     = 0
let gratificacao = 0
let sal_bruto    = 0
let ir           = 0

// Reading the base salary value
sal_base     = parseFloat(prompt("Informe o salário base"))

// Calculating bonus and gross salary
gratificacao = sal_base * 0.1
sal_bruto    = sal_base + gratificacao

// Calculating tax
if (sal_bruto > 1200) {
  ir = sal_bruto * 0.2
} else {
  ir = sal_bruto * 0.15
}

// Display the calculated values
console.log("Salário base:  " + sal_base)
console.log("Gratificação:  " + gratificacao)
console.log("Salário bruto: " + sal_bruto)
console.log("IR:            " + ir)


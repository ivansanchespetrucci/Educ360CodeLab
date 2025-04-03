/**********************************************************************
* FILE NAME   : EXERC003                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE AGE IN DAYS, HOURS, MINUTES AND SECONDS     *
**********************************************************************/

// Variable declaration
let idade    = 0
let dias     = 0
let horas    = 0
let minutos  = 0
let segundos = 0

// Reading age (in years)
idade   = prompt("Informe a sua idade (anos)")

// Calculating the age
dias = idade * 365                    // days
horas = dias * 24                     // hours
minutos = horas * 60                  // minutes
segundos = minutos * 60               // seconds

// Display the calculated age
console.log("Com " + idade + " anos você já viveu:")
console.log(dias + " dias.")
console.log(horas + " horas.")
console.log(minutos + " minutos.")
console.log(segundos + " segundos.")


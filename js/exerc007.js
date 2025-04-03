/**********************************************************************
* FILE NAME   : EXERC007                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE BMI (BODY MASS INDEX) AND DISPLAY STATUS    *
**********************************************************************/

// Variable declaration
let peso   = 0
let altura = 0
let imc    = 0

// Reading values
peso   = parseFloat(prompt("Informe o peso"))
altura = parseFloat(prompt("Informe a altura"))

// Calculating BMI
imc = (peso / (altura * altura))

// Display BMI value
console.log("IMC: " + imc)

// Display status
if (imc < 18.5) {
  console.log("Abaixo")
} else if (imc >= 18.5 && imc < 24.9) {
  console.log("Normal")
} else if (imc >= 25.0 && imc < 29.9) {
  console.log("Sobrepeso")
} else if (imc >= 30.0 && imc < 29.9) {
  console.log("Acima")
}

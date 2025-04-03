/**********************************************************************
* FILE NAME   : EXERC016                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CHECK IF AN ARRAY IS IN ASCENDING ORDER               *
**********************************************************************/

// Variable declaration
let n        = 0
let ordenado = true
let v = []

// Reading array length
n = parseInt(prompt("Informe o tamanho do vetor V: "))

 // Reading array values
for (i = 0; i < n; i++) {
  v[i] = parseInt(prompt("Informe o valor de V[" +  i + "]: "))  
}

// Checking
for (i = 0; i < n -1; i++) {
	for (j = i+1; j < n; j++) {
  	if (v[j] < v[i]) {
    	ordenado = false
    }
  }
}

// Display
if (ordenado) {
	console.log("\nO vetor V informado está ordenado em ordem crescente.")
} else {
	console.log("\nO vetor V informado não está ordenado em ordem crescente.")
}
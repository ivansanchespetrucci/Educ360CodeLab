/**********************************************************************
* FILE NAME   : EXERC017                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : FIND AND REMOVE OR INSERT A NUMBER IN A SORTED ARRAY  *
**********************************************************************/

// Variable declaration
let n           = 0
let x           = 0
let i           = 0
let localizacao = 0
let encontrado  = false
let v = []

// Reading array length
n = parseInt(prompt("Informe o tamanho do vetor V: "))

 // Reading array values
for (i = 0; i < n; i++) {
  v[i] = parseInt(prompt("Informe o valor de V[" +  i + "]: "))  
}

// Reading an integer value to search
x = parseInt(prompt("\nInforme um valor inteiro: "))

// Find the position where X is or should be
while (     (localizacao <= n)
        && (v[localizacao] < x) ) {
	localizacao++
}

// Found condition
encontrado = (localizacao <= n) && (v[localizacao] == x)

if (encontrado) { // Removing the element (shifting the subsequent elements)
	console.log("O número " + n + " foi lozalizado na posição " + localizacao)
  
  for (i = localizacao; i < n-1; i++) { v[i] = v[i+1] }
  n--
} else { // Addint the element in the right place (shifting the subsequent elements)
	for (i = n -1; i >= localizacao; i--) { v[i+1] = v[i] }

	v[localizacao] = x
  n++
}

// Display the final array
for (i = 0; i < n; i++) {
	console.log("V[" + i + "] = " + v[i])
}
/**********************************************************************
* FILE NAME   : EXERC009                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : ADD EVEN AND ODD NUMBERS UNTIL N EQUALS ZERO          *
**********************************************************************/

// Variable declaration
let n           = 0
let acum_par    = 0
let count_par   = 0
let acum_impar  = 0
let count_impar = 0

do {
  // Reading n value
  n = parseFloat(prompt("Informe o valor de n"))
  
  // Cheking n and summing
  if (n != 0) {
    if (n % 2 == 0) {
      // n is even
      count_par = count_par + 1
      acum_par = acum_par + n    
    } else {
      // n is odd
      count_impar = count_impar + 1
      acum_impar = acum_impar + n
    }
  } 
} while (n != 0) // Running condition

// Display
console.log("Acumulador par: " + acum_par + " (" + count_par + ")")
console.log("Acumulador impar: " + acum_impar + " (" + count_impar + ")")

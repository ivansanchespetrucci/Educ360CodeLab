/**********************************************************************
* FILE NAME   : EXERC009                                              *
* DATE        : 2025-03-17                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : ADD EVEN AND ODD NUMBERS UNTIL N EQUALS ZERO          *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real n, acum_par = 0, count_par = 0,
            acum_impar = 0, count_impar = 0

    faca {
          // Reading n value
          escreva("Informe o valor de n: ")
          leia(n)

          // Cheking n and summing
          se (n != 0) {
            // n is even
            se (n % 2 == 0) {
              count_par = count_par + 1
              acum_par = acum_par + n
            } senao {
              // n is odd
              count_impar = count_impar + 1
              acum_impar = acum_impar + n
            }
          }
    } enquanto ( n != 0) // Running condition

    // Display
    escreva ("\nAcumulador par: ", acum_par, " (", count_par, ")")
    escreva ("\nAcumulador impar: ", acum_impar, " (", count_impar, ")")
  }
}
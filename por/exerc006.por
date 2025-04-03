/**********************************************************************
* FILE NAME   : EXERC006                                              *
* DATE        : 2025-03-17                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : SWAP TWO VARIABLES AND DISPLAY FINAL VALUES           *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real num1, num2

    // Reading values
    escreva ("Informe o primeiro número: ")
    leia(num1)

    escreva ("Informe o segundo número: ")
    leia(num2)

    // Swapping
    num1 = num1 + num2
    num2 = num1 - num2
    num1 = num1 - num2

    // Display values
    escreva ("\nNum1: ", num1)
    escreva ("\nNum2: ", num2)
  }
}

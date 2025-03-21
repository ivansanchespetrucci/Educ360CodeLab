/**********************************************************************
* FILE NAME   : EXERC010                                              *
* DATE        : 2025-03-17                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE FINAL INVESTMENT VALUE AND DISPLAY DETAILS  *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real capital, meses, taxa, final = 0

    // Reading values
    escreva("Informe o capital: ")
    leia(capital)

    escreva("Informe o número de meses: ")
    leia(meses)

    escreva("Informe a taxa: ")
    leia(taxa)

    final = capital

    // Calculating final investiment value
    para (inteiro i = 0; i < meses; i = i+1) {
      final = final + (final * taxa / 100)
    }

    // Display values details
    escreva("\nCapítal: ", capital)
    escreva("\nMeses: ", meses)
    escreva("\nTaxa: ", taxa)
    escreva("\nCapitalizado: ", final)
  }
}
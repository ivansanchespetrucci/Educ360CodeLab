/**********************************************************************
* FILE NAME   : EXERC008                                              *
* DATE        : 2025-03-17                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE SALESMAN PAYMENT AND DISPLAY DETAILS        *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real sal_base, faturamento, sal_final, abono = 0

    // Reading values
    escreva("Informe o salário base: ")
    leia(sal_base)

    escreva("Informe o faturamento: ")
    leia(faturamento)

    // Calculating salesman payment
    se (faturamento > 5000) {
      abono = 300
}

    sal_final = sal_base + abono

    // Display details
    escreva ("\nSalário base: ", sal_base)
    escreva ("\nFaturamento: ", faturamento)
    escreva ("\nSalário final: ", sal_final)
  }
}
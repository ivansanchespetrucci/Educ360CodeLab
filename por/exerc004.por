/**********************************************************************
* FILE NAME   : EXERC004                                              *
* DATE        : 2025-03-13                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE OF SALARY WITH INCOME TAX AND BONUS         *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real sal_base = 0, gratificacao = 0, sal_bruto = 0, ir = 0

    // Reading the base salary value
    escreva("Informe o salário base: ")
    leia(sal_base)

    // Calculating bonus and gross salary
    gratificacao = sal_base * 0.1
    sal_bruto = sal_base + gratificacao

    // Calculating tax
    se (sal_bruto > 1200) { 
      ir = sal_bruto * 0.2
    } senao {
      ir = sal_bruto * 0.15
    }

    // Display the calculated values
    escreva("\nSalário base: ", sal_base)
    escreva("\nGratificação: ", gratificacao)
    escreva("\nSalário bruto: ", sal_bruto)
    escreva("\nIR: ", ir)
  }
}
#**********************************************************************
# FILE NAME   : EXERC004                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE OF SALARY WITH INCOME TAX AND BONUS         *
#**********************************************************************

# Variable declaration
sal_base     = 0
gratificacao = 0
sal_bruto    = 0
ir           = 0

# Reading the base salary value
sal_base = float(input("Informe o salário base: "))



# Calculating bonus and gross salary
gratificacao = sal_base * 0.1
sal_bruto    = sal_base + gratificacao

# Calculating tax
if sal_bruto > 1200:
    ir = sal_bruto * 0.2
else:
    ir = sal_bruto * 0.15

# Display the calculated values
print("\nSalário base: ", sal_base)
print("Gratificação: ", gratificacao)
print("Salário bruto: ", sal_bruto)
print("IR: ", ir)
s

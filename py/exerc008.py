#**********************************************************************
# FILE NAME   : EXERC008                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE SALESMAN PAYMENT AND DISPLAY DETAILS        *
#**********************************************************************

# Variable declaration
sal_base    = 0
faturamento = 0
sal_final   = 0
abono       = 0

# Reading values
sal_base    = float(input("Informe o salário base: "))
faturamento = float(input("Informe o faturamento:  "))

# Calculating salesman payment
if faturamento > 5000:
    abono = 300

sal_final = sal_base + abono

# Display details
print("\nSalário base:  ", sal_base)
print("Faturamento:   ", faturamento)
print("Salário final: ", sal_final)

#**********************************************************************
# FILE NAME   : EXERC001                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE THE RECTANGLE AREA                          *
#**********************************************************************

# Variable declaration
base   = 0
altura = 0
area   = 0

# Reading the rectangle base value
base   = input("Informe o valor da base:   ")
# Reading the rectangle height value
altura = input("Informe o valor da altura: ")

# Rectangle area calculation
area = float(base) * float(altura)

# Display the calculated area
print("\nA área do triangulo retângulo é ", area)

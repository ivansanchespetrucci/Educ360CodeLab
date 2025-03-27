#**********************************************************************
# FILE NAME   : EXERC002                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE THE TRITANGLE AREA                          *
#**********************************************************************

# Variable declaration
base   = 0
altura = 0
area   = 0

# Reading the triangle base value
base   = input("Informe o valor da base:   ")
# Reading the triangle height value
altura = input("Informe o valor da altura: ")

# Triangle area calculation
area = (float(base) * float(altura)) / 2

# Display the calculated area
print("\nA área do triangulo triângulo é ", area)

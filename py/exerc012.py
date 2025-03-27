#**********************************************************************
# FILE NAME   : EXERC012                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE AND DISPLAY AVERAGE OF 5 NUMBERS            *
#**********************************************************************

# Variable declaration
numeros = []
media   = 0

# Reading n value
for i in range(5):
    
    
    numeros.append( int(input(f"Informe o número {i + 1}: ")) )
    
    # Summing the values
    media = media + numeros[i]

# Calculating average
media = media / 5

# Display average
print("\nA média dos valores é ", media)

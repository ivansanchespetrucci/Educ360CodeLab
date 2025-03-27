#**********************************************************************
# FILE NAME   : EXERC015                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : SORT AND DISPLAY 4 NUMBERS IN SAME ARRAY            *
#**********************************************************************

# Variable declaration
numeros = []
menor   = 0
maior   = 0

# Reading values
for i in range(4):
    numeros.append( int(input(f"Informe o número {i + 1}: ")) )

# Sorting the array (bubble sort)
for i in range(3):
    for j in range (i+1, 4):
        if numeros[j] < numeros[i]:
            # Swapping
            numeros[i] = numeros[i] + numeros[j]
            numeros[j] = numeros[i] - numeros[j]
            numeros[i] = numeros[i] - numeros[j]

# Display sorted array
for i in range(4):
    print(numeros[i])

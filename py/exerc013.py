#**********************************************************************
# FILE NAME   : EXERC013                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALC AVERAGE OF 5 NUMBERS AND DISPLAY LARGER ONES     *
#**********************************************************************

# Variable declaration
numeros = []
media   = 0

for i in range(5):
    # Reading values
    numeros.append( int(input(f"Informe o número {i + 1}: ")) )
    
    # Summing the values
    media = media + numeros[i]

# Calculating average
media = media / 5

# Display average
print("\nA média dos valores é ", media)

# Display the larges ones
for i in range(5):
    if numeros[i] > media:
        print(f"O número {i + 1} tem valor {numeros[i]}")


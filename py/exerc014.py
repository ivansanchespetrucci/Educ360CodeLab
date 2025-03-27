#**********************************************************************
# FILE NAME   : EXERC014                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : FIND THE LARGEST AND SMALLEST OF 6 NUMBERS            *
#**********************************************************************

# Variable declaration
numeros = []
menor   = 0
maior   = 0

# Reading values
for i in range(6):
    numeros.append( int(input(f"Informe o número {i + 1}: ")) )

# Updating the smallest and the largest numbers control
menor = numeros[0]
maior = menor

# Finding the smallest and the largest numbers
for i in range(6):
    if numeros[i] < menor:
        menor = numeros[i]
        
    if numeros[i] > maior:
        maior = numeros[i]

# Display the smallest and the largest numbers
print("\nO menor número informado foi: ", menor)
print("\nO maior número informado foi: ", maior)

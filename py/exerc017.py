#**********************************************************************
# FILE NAME   : EXERC017                                              *
# DATE        : 2025-03-29                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : FIND AND REMOVE OR INSERT A NUMBER IN A SORTED ARRAY  *
#**********************************************************************
import numpy as np

# Variable declaration
n           = 0
x           = 0
i           = 0
localizacao = 0
encontrado  = False
v = []

# Reading array length
n = int(input("Informe o tamanho do vetor V: "))

# Reading array values
for i in range(n):
    v.append(int(input(f"Informe o valor de V[{i}]: ")))

v.append(0)

# Reading an integer value to search
x = int(input("\nInforme um valor inteiro: "))

# Find the position where X is or should be
while ( (localizacao < n) and (v[localizacao] < x)):
    localizacao += 1
    
# Found condition
encontrado = (localizacao <= n) and (v[localizacao] == x)

if (encontrado): # Removing the element (shifting the subsequent elements)
    print(f"\nO número {x} foi lozalizado na posição {localizacao}")

    for i in range(localizacao, n -1):
        v[i] = v[i+1]

    n -= 1
else: # Adding the element in the right place (shifting the subsequent elements)
    for i in range(n -1, localizacao -1, -1):
        v[i+1] = v[i]
    
    v[localizacao] = x
    n += 1
    
# Display the final array
for i in range(n):
    print(f"V'[{i}] = {v[i]}")

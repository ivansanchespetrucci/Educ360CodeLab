#**********************************************************************
# FILE NAME   : EXERC016                                              *
# DATE        : 2025-03-29                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CHECK IF AN ARRAY IS IN ASCENDING ORDER               *
#**********************************************************************
import numpy as np

# Variable declaration
n        = 0
ordenado = True
v        = []

# Reading array length
n = int(input("Informe o tamanho do vetor V: "))

# Reading array values
for i in range(n):
    v.append(int(input(f"Informe o valor de V[{i}]: ")))

# Checking
for i in range(n -1):
    for j in range(i +1, n):
         if (v[j] < v[i]):
            ordenado = False

# Display
if (ordenado):
    print("\nO vetor V informado está ordenado em ordem crescente.")
else:
    print("\nO vetor V informado não está ordenado em ordem crescente.")
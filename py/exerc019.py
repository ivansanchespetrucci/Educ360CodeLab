#**********************************************************************
# FILE NAME   : EXERC019                                              *
# DATE        : 2025-03-29                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : SUM TWO 3x3 MATRICES AND DISPLAY RESULT               *
#**********************************************************************
import numpy as np

a    = np.zeros((3, 3))
b    = np.zeros((3, 3))
soma = 0

for i in range(3):
    for j in range(3):
        a[i, j] = float(input(f"Informe o valor para Matriz A[{i}][{j}]: "))

print ("***")

for i in range(3):
    for j in range(3):
        b[i, j] = float(input(f"Informe o valor para Matriz B[{i}][{j}]: "))

print ("***")

for i in range(3):
    for j in range(3):
        soma = a[i, j] + b[i, j]
        print (soma, "\t")

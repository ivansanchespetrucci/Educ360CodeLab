#**********************************************************************
# FILE NAME   : EXERC018                                              *
# DATE        : 2025-03-29                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : FIND ROW WITH HIGHEST SUM IN 4x3 MATRIX               *
#**********************************************************************
import numpy as np

matriz     = np.zeros((4, 3))
soma       = 0
maior_soma = 0
linha      = 1

for i in range(4):
    soma = 0
    for j in range(3):
        matriz[i, j] = float(input(f"Informe o valor para Matriz[{i}][{j}]: "))
    
        soma = soma + matriz[i, j]

    if (soma > maior_soma):
        linha      = i
        maior_soma = soma
        
    print("")

print(f"A linha de maior soma dos seus elementos é a linha {linha} com soma de {maior_soma}")

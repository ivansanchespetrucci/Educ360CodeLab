#**********************************************************************
# FILE NAME   : EXERC007                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE BMI (BODY MASS INDEX) AND DISPLAY STATUS    *
#**********************************************************************

# Variable declaration
peso   = 0
altura = 0
imc    = 0

# Reading values
peso   = float(input("Informe o peso:    "))
altura = float(input("Informe a altura:  "))

# Calculating BMI
imc = (peso / (altura * altura))

# Display BMI value
print("\nIMC: ", imc)

# Display status
if imc < 18.5:
    print("Abaixo")
elif imc >= 18.5 and imc < 24.9:
    print("Normal")
elif imc >= 25.0 and imc < 29.9:
    print("Sobrepeso")
elif imc >= 30.0 and imc < 39.9:
    print("Acima")

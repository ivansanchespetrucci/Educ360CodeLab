#**********************************************************************
# FILE NAME   : EXERC010                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE FINAL INVESTMENT VALUE AND DISPLAY DETAILS  *
#**********************************************************************

# Variable declaration
capital = 0
meses   = 0
taxa    = 0
final   = 0

# Reading n value
capital = float(input("Informe o capital:         "))
meses   = int(input("Informe o número de meses: "))
taxa    = float(input("Informe a taxa           : "))

final = capital

# Calculating final investiment value
for i in range(meses):
        final = final + (final * taxa / 100)

# Display values details
print("\nCapítal:    ", capital)
print("Meses:        ", meses)
print("Taxa:         ", taxa)
print("Capitalizado: ", final)

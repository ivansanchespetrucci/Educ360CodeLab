#**********************************************************************
# FILE NAME   : EXERC003                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CALCULATE AGE IN DAYS, HOURS, MINUTES AND SECONDS     *
#**********************************************************************

# Variable declaration
idade    = 0
dias     = 0
horas    = 0
minutos  = 0
segundos = 0

# Reading age (in years)
idade   = input("Informe a sua idade (anos): ")

# Calculating the age
dias     = int(idade) * 365           # days
horas    = dias * 24                  # hours
minutos  = horas * 60                 # minutes
segundos = minutos * 60               # seconds

# Display the calculated age
print("\nCom ", idade, " anos, você já viveu:")
print(dias, " dias.")
print(horas, " horas.")
print(minutos, " minutos.")
print(segundos, " segundos.")

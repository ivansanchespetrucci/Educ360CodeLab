#**********************************************************************
# FILE NAME   : EXERC009                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : ADD EVEN AND ODD NUMBERS UNTIL N EQUALS ZERO          *
#**********************************************************************

# Variable declaration
n           = 0
acum_par    = 0
count_par   = 0
acum_impar  = 0
count_impar = 0

while True:
    # Reading n value
    n = float(input("Informe o valor de n: "))
    
    # Cheking n and summing
    if n != 0:
        # n is even
        if n % 2 == 0:
            count_par = count_par + 1
            acum_par  = acum_par + n
        else:
            # n is odd
            count_impar = count_impar + 1
            acum_impar  = acum_impar + n
    else: # Running condition ( n==0 )
        break

# Display details
print("\nAcumulador par: ", acum_par, " (", count_par, ")")
print("Acumulador impar: ", acum_impar, " (", count_impar, ")")

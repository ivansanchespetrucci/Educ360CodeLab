#**********************************************************************
# FILE NAME   : EXERC011                                              *
# DATE        : 2025-03-27                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : SUPERMARKET CHECKOUT SIMULATION                       *
#**********************************************************************

# Variable declaration
descricao = ""
valor     = 0
qtd       = 0
total     = 0

while True:
    # Reading n value
    descricao = input("\nInforme a descrição do produto: ")

    if descricao != "":
        # Reading product value
        valor = float(input("Informe o valor do produto: "))
    
        # Reading product quantity
        qtd = float(input("Informe a quantidade: "))
    
        # Calculating total
        total = total + (valor * qtd)
    else: # Running condition ( descricao != 0 )
        break

# Display
print("\nTotal da compra: ", total)

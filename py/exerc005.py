#**********************************************************************
# FILE NAME   : EXERC005                                              *
# DATE        : 2025-03-26                                            *
# AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
# DATA CENTER : COMPANY.EDUC360                                       *
# PURPOSE     : CAR RENTAL COST CALCULATION FOR FIXED DISTANCES       *
#**********************************************************************

# Variable declaration
nome_passageiro = ""
cidade_destino  = ""
distancia       = 0
custo_aluguel   = 0

# Reading passenger name and destination city
nome_passageiro = input("Informe o nome do passageiro: ")
cidade_destino  = input("Informe a cidade de destino:  ")

# Defining the distance to the city

match cidade_destino:
    case "Vitoria":
      distancia = 949
    case "Muriae":
      distancia = 628
    case "Niteroi":
      distancia = 424
    case "Piracicaba":
      distancia = 168


print("\nNome do passageiro: ", nome_passageiro)

if distancia == 0:
    print("Cidade não atendida pela empresa")
else:
    # Calculating the rental cost
    custo_aluguel = distancia * 2.2

    print("Cidade destino: ", cidade_destino)
    print("Distancia: ", distancia)
    print("Custo aluguel: ", custo_aluguel)

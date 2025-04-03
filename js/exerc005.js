/**********************************************************************
* FILE NAME   : EXERC005                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CAR RENTAL COST CALCULATION FOR FIXED DISTANCES       *
**********************************************************************/

// Variable declaration
let nome_passageiro = ""
let cidade_destino  = ""
let distancia       = 0
let custo_aluguel   = 0

// Reading passenger name and destination city
nome_passageiro = prompt("Informe o nome do passageiro")
cidade_destino  = prompt("Informe a cidade de destino")

// Defining the distance to the city
switch (cidade_destino) {
	case "Vitoria":
    distancia = 949
		break
	case "Muriae":
    distancia = 628
		break
	case "Niteroi":
    distancia = 424
		break
	case "Piracicaba":
    distancia = 168
		break
}

console.log("Nome do passageiro: " + nome_passageiro)

if (distancia == 0) {
  console.log("Cidade não atendida pela empresa")  
} else {
  // Calculating the rental cost
  custo_aluguel = distancia * 2.2
  
  console.log("Cidade destino: " + cidade_destino)
  console.log("Distancia:      " + distancia)
  console.log("Custo aluguél:  " + custo_aluguel)
}

/**********************************************************************
* FILE NAME   : EXERC005                                              *
* DATE        : 2025-03-13                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CAR RENTAL COST CALCULATION FOR FIXED DISTANCES       *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    cadeia nome_passageiro = "", cidade_destino = ""
    real distancia = 0, custo_aluguel = 0

    // Reading passenger name and destination city
    escreva("Informe o nome do passageiro: ")
    leia(nome_passageiro)

    escreva("Informe a cidade de destino: ")
    leia(cidade_destino)

    // Defining the distance to the city
    escolha (cidade_destino) {
      caso "Vitoria":
      distancia = 949
      pare
    caso "Muriae":
      distancia = 628
      pare
    caso "Niteroi":
      distancia = 424
      pare
    caso "Piracicaba":
      distancia = 168
      pare
    }

    escreva("\nNome do passageiro: ", nome_passageiro)
 
    se (distancia == 0) {
            escreva("\nCidade não atendida pela empresa")
    } senao {
      // Calculating the rental cost
      custo_aluguel = distancia * 2.2

      escreva("\nCidade destino: ", cidade_destino)
      escreva("\nDistancia: ", distancia)
      escreva("\nCusto aluguel: ", custo_aluguel)
    }
  }
}
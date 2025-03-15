/**********************************************************************
* FILE NAME   : EXERC002                                              *
* DATE        : 2025-03-13                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE THE TRIANGLE AREA                           *
**********************************************************************/
programa {
  funcao inicio() {
      // Variable Declaration
      real base = 0, altura = 0, area = 0

      // Reading the triangle base value
      escreva("Informe a base: ")
      leia(base)

      // Reading the triangle height value
      escreva("Informe a altura: ")
      leia(altura)

      // Triangle area calculation
      area = (base * altura) / 2

      // Display the calculated area
      escreva("A área do triângulo é ", area)
  }
}
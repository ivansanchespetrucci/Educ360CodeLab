/**********************************************************************
* FILE NAME   : EXERC001                                              *
* DATE        : 2025-03-13                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE THE RECTANGLE AREA                          *
**********************************************************************/
programa {
  funcao inicio() {
      // Variable declaration
      real base = 0, altura = 0, area = 0

      // Reading the rectangle base value
      escreva("Informe a base: ")
      leia(base)

      // Reading the rectangle height value
      escreva("Informe a altura: ")
      leia(altura)

      // Rectangle area calculation
      area = base * altura

      // Display the calculated area
      escreva("A área do retângulo é ", area)
  }
}
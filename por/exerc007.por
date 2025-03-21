/**********************************************************************
* FILE NAME   : EXERC007                                              *
* DATE        : 2025-03-17                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : CALCULATE BMI (BODY MASS INDEX) AND DISPLAY STATUS    *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    real peso, altura, imc

    // Reading values
    escreva ("Informe o peso: ")
    leia(peso)

    escreva ("Informe a altura: ")
    leia(altura)

    // Calculating BMI
    imc = (peso / (altura * altura))

    // Display BMI value
    escreva ("IMC: ", imc, " - ")

    // Display status
    se (imc < 18.5) {
      escreva ("Abaixo")
    } senao se (imc >= 18.5 e imc < 24.9) {
      escreva ("Normal")
    } senao se (imc >= 25.0 e imc < 29.9) {
      escreva ("Sobrepeso")
    } senao se (imc >= 30.0 e imc < 39.9) {
      escreva ("Acima")
    }
  }
}

/**********************************************************************
* FILE NAME   : EXERC017                                              *
* DATE        : 2025-03-29                                            *
* AUTHOR      : FABIO MARQUES (FMARQUES@FMARQUES.ETI.BR)              *
* DATA CENTER : COMPANY.EDUC360                                       *
* PURPOSE     : FIND AND REMOVE OR INSERT A NUMBER IN A SORTED ARRAY  *
**********************************************************************/
programa {
  funcao inicio() {
    // Variable declaration
    inteiro n = 0
    inteiro x = 0
    inteiro i = 0
    inteiro localizacao = 0
    logico encontrado = falso
   
    // Reading array length
    escreva("Informe o tamanho do vetor V: ")
    leia(n)

    // Array declaration
    i = n+1
    inteiro v[i]

    // Reading array values
    para (i = 0; i < n; i++) {
      escreva("Informe o valor de V[", i, "]: ")
      leia(v[i])
    }

    // Reading an integer value to search
    escreva("\nInforme um valor inteiro: ")
    leia(x)

    // Find the position where X is or should be
    enquanto (   (localizacao <= n) 
               e (v[localizacao] < x) ) {
        localizacao++
    }

    // Found condition
    encontrado = (localizacao <= n) e (v[localizacao] == x)

    se (encontrado) { // Removing the element (shifting the subsequent elements)
        escreva("O número ", n, " foi lozalizado na posição ", localizacao)      
        para (i = localizacao; i < n-1; i++) { v[i] = v[i+1] }
        n--
    } senao { // Addint the element in the right place (shifting the subsequent elements)
        para (i = n -1; i >= localizacao; i--) { v[i+1] = v[i] }

        v[localizacao] = x
        n++
    }

    // Display the final array
    escreva("\nV' = [")
    para (i = 0; i < n; i++) {
      escreva(v[i])

      se (i < n-1) { escreva(", ") }
    }
    escreva("]")
  }
}

Algoritmo "Calculadora B�sica"
// Declara��o das vari�veis
Var
   // Vari�vel para armazenar a opera��o escolhida pelo usu�rio
   opcao: caractere
   // Vari�veis para armazenar os n�meros e o resultado
   num1, num2, resultado: real
   // Vari�veis para armazenar o contador e o resultado da fun��o fatorial
   contadorFatorial, resultadoFatorial: inteiro

// Fun��o para realizar a soma
Funcao soma(a, b: real): real
Inicio
   resultado <- a + b
   retorne resultado
FimFuncao

// Fun��o para realizar a subtra��o
Funcao subtracao(a, b: real): real
Inicio
   resultado <- a - b
   retorne resultado
FimFuncao

// Fun��o para realizar a multiplica��o
Funcao multiplicacao(a, b: real): real
Inicio
   resultado <- a * b
   retorne resultado
FimFuncao

// Fun��o para realizar a divis�o
Funcao divisao(a, b: real): real
Inicio
   Se b = 0 Entao
      Escreval("Erro: N�o � poss�vel dividir por zero.")
      retorne 0
   Senao
      resultado <- a / b
      retorne resultado
   FimSe
FimFuncao

// Fun��o para calcular o fatorial
Funcao fatorial(a: inteiro): inteiro
Inicio
  resultadoFatorial <- 1
  Para contadorFatorial <- 1 ate a Faca
   resultadoFatorial <- resultadoFatorial * contadorFatorial
  FimPara
  retorne resultadoFatorial
FimFuncao


// Algoritmo principal
Inicio
   // Repete o menu at� que o usu�rio selecione a op��o 6
   Repita
      Escreval("Escolha uma opera��o:")
      Escreval("1. Soma")
      Escreval("2. Subtra��o")
      Escreval("3. Multiplica��o")
      Escreval("4. Divis�o")
      Escreval("5. Fatorial")
      Escreval("6. Sair")
      Escreva("Digite o n�mero da opera��o desejada: ")
      Leia(opcao)

      // Verifica se o usu�rio escolheu uma opera��o v�lida
      Se opcao = "1" Entao
         Escreva("Digite o primeiro n�mero: ")
         Leia(num1)
         Escreva("Digite o segundo n�mero: ")
         Leia(num2)
         Escreval("Resultado: ", soma(num1, num2))
      Senao
         Se opcao = "2" Entao
            Escreva("Digite o primeiro n�mero: ")
            Leia(num1)
            Escreva("Digite o segundo n�mero: ")
            Leia(num2)
            Escreval("Resultado: ", subtracao(num1, num2))
         Senao
            Se opcao = "3" Entao
               Escreva("Digite o primeiro n�mero: ")
               Leia(num1)
               Escreva("Digite o segundo n�mero: ")
               Leia(num2)
               Escreval("Resultado: ", multiplicacao(num1, num2))
            Senao
               Se opcao = "4" Entao
                  Escreva("Digite o primeiro n�mero: ")
                  Leia(num1)
                  Escreva("Digite o segundo n�mero: ")
                  Leia(num2)
                  Escreval("Resultado: ", divisao(num1, num2))
               Senao
                  Se opcao = "5" Entao
                     Escreva("Digite um n�mero para calcular o fatorial: ")
                     Leia(num1)
                     Escreval("Resultado: ", fatorial(num1))
                  Senao
                     Se opcao <> "6" Entao
                        Escreval("Op��o inv�lida. Tente novamente.")
                     FimSe
                  FimSe
               FimSe
            FimSe
         FimSe
      FimSe
   Ate opcao = "6" // Continua at� que o usu�rio escolha sair
Fimalgoritmo


// funcoes dda aula
SET PROCEDURE TO Exercicios_de_Fixacao_-_Aula_06_lib.prg

// lib para tratamento de entradas
SET PROCEDURE TO start_lib.prg

Function Main()

    Exercicio01()
    Exercicio02()
    Exercicio03()
    Exercicio04()
    Exercicio05()
    Exercicio06()
    Exercicio07()
    Exercicio08()
    Exercicio09()
    Exercicio10()
    Exercicio11()
    Exercicio12()
    Exercicio13()
    Exercicio14()
    Exercicio15()
    Exercicio16()
    Exercicio17()
    
Return nil


Function Exercicio01()
    //
    QOUT("***************")
    QOUT("* Exercicio01 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio02()
// Criar um algoritmo que efetue o cálculo de uma prestação em atraso.
// utilize a fórmula PREST = VALOR + (VALOR * (TAXA/ 100) * TEMPO)
// Apresentar o valor da prestação. O cálculo e a exibição deverão ser feitos por um procedimento.
    local nPrest, nValor, nTaxa, nTempo
    QOUT("***************")
    QOUT("* Exercicio02 *")
    QOUT("Calculo de uma prestacao em atraso") 

    nValor := inp_num("Informe o valor: " )
    nTaxa := inp_num("Informe a taxa: ")
    nTempo := inp_num("Informe o tempo: ")

    nPrest := calc_prestacao(nValor, nTaxa, nTempo )

    QOUT("valor calculado: " + AllTrim(str(nPrest)))
    QOUT("***************")
    QOUT("")
Return nil



Function Exercicio03()
    local nN 
// sub-rotina que efetue o somatório dos N primeiros números naturais iniciando em 1. 
// O resultado deverá ser exibido no programa principal e não no procedimento. 
    QOUT("***************")
    QOUT("* Exercicio03 *")
    QOUT("efetue o somatorio dos N primeiros numeros naturais")
    nN := inp_num("Informe o valor de N: ")
    
    QOUT("somatorio dos " + str(nN) + " primeiros nummeros = " + AllTrim(str( soma_naturais(nN) )) )
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio04()
// leia 2 valores informados pelo usuário
// e através de um procedimento chamado “troca”, 
// realize a troca dos valores entre as duas variáveis.
    local cA, cB, aValores := {}
    QOUT("***************")
    QOUT("* Exercicio04 *")
    QOUT("realize a troca dos valores entre as duas variaveis ")
    ACCEPT "Informe o valor A: " TO cA
    aAdd(aValores , cA)
    ACCEPT "Informe o valor B: " TO cB
    aAdd(aValores , cB)
        
    QOUT("Funcao 1")
    aValores := troca1(aValores)
    cA := aValores[1]
    cB := aValores[2]
    QOUT("Novo valor de A: " + cA)
    QOUT("Novo valor de B: " + cB)
    
    QOUT("Funcao 2")
    aValores := troca2(@cA, @cB)
    QOUT("Novo valor de A: " + cA)
    QOUT("Novo valor de B: " + cB)
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio05()
// dado o dividendo e o divisor de uma divisão, 
// calcule tanto o quociente como o resto da divisão inteira. 
// O resultado não deverá ser exibido pelo procedimento. 
// Deverá ficar disponível para ser exibido ou manipulado pelo programa principal.
    local nDividendo, nDivisor, nQuociente, nResto
    QOUT("***************")
    QOUT("* Exercicio05 *")
    
    nDividendo := inp_num("Informe o Dividendo: ")
    nDivisor := inp_num("Informe o Divisor: ")

    nQuociente := quociente_divisao(nDividendo, nDivisor)
    nResto := resto_divisao(nDividendo, nDivisor)

    QOUT("Quociente: " + AllTrim(str(nQuociente)))
    QOUT("Resto: " + AllTrim(str(nResto)))
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio06()
// calcular o dobro de um número qualquer. 
// O programa principal deverá chamar essa função 
// passando um valor informado pelo usuário 
// e exibir o resultado na tela.
    local nNum
    QOUT("***************")
    QOUT("* Exercicio06 *")
    QOUT("calcular o dobro de um numero")
    nNum := inp_num("Informe o numero: ")

    nNum := o_dobro_ou_nada(nNum)

    QOUT("o dobro = " + AllTrim(str(nNum)))
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio07()
// Como sabemos, o Harbour/ADVPL não possui uma função para cálculo de potência. 
// Crie uma função “POT”, que receba como parâmetros a base e o expoente 
// e retorne o valor da potência
    local nBase, nExpoente, nPotencia
    QOUT("***************")
    QOUT("* Exercicio07 *")
    QOUT("calculo de potencia")
    nBase := inp_num("Informe a base: ")
    nExpoente := inp_num("Informe o expoente: ")

    nPotencia := POT(nBase, nExpoente)

    QOUT("Potencia = " + allTrim(str(nPotencia)))
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio08()
// Sabendo que a área quadrada é dada 
// pela multiplicação da medida de 2 lados, 
// escreva um algoritmo que mostre a área quadrada 
// de um espaço qualquer cujos lados foram informados pelo usuário. 
// O cálculo da área deverá ser realizado por uma função. 
    local nL1, nL2, nArea
    QOUT("***************")
    QOUT("* Exercicio08 *")
    QOUT("calculo da area")
    nL1 := inp_num("Informe um lado: ")
    nL2 := inp_num("Informe o outro lado: ")

    nArea := area(nL1, nL2)

    QOUT("area = " + allTrim(str(nArea)))
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio09()
// mostrar o sucessor e o antecessor de um número qualquer informado pelo usuário. 
// Tanto o antecessor como o sucessor deverão ser obtidos através de funções respectivas.
local nNum
    QOUT("***************")
    QOUT("* Exercicio09 *")
    QOUT("")
    nNum := inp_num("Informe um numero: ")

    QOUT("sucessor: " + allTrim(str(sucessor(nNum))))
    QOUT("antecessor: " + allTrim(str(antecessor(nNum))))
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio10()
// calcule a média de 3 valores quaisquer. 
// O programa principal deverá ler os 3 valores informados pelo usuário 
// e apresentar a média.
    local nA, nB, nC

    QOUT("***************")
    QOUT("* Exercicio10 *")
    QOUT("calculo da media")
    
    nA := inp_num("Informe o valor A: ")
    nB := inp_num("Informe o valor B: ")
    nC := inp_num("Informe o valor C: ")
    
    QOUT("media: " + allTrim(str(media(nA, nB, nC))))
    QOUT("***************")
    QOUT("")
Return nil

Function media(nA, nB, nC)
Return (nA + nB + nC) / 3


Function Exercicio11()
// Faça um algoritmo que calcule o reajuste de um salário. 
// O usuário informará o salário atual e o percentual de reajuste. 
    local nSal, nRej
    QOUT("***************")
    QOUT("* Exercicio11 *")
    QOUT("calcule o reajuste de um salario")
    nSal := inp_num( "Informe o valor do salario: " )
    nRej := inp_num( "Informe o valor do reajuste: " )

    QOUT("novo salario: " + allTrim(str(reajuste(nSal, nRej))))
    QOUT("***************")
    QOUT("")
Return nil

Function reajuste(nSal, nRej)
Return (1 + (nRej / 100)) * nSal


Function Exercicio12()
// Faça um programa para cálculo do montante (valor futuro) 
// a partir de um dado capital (valor presente). 
// O programa deverá solicitar ao usuário 
// o valor do capital (valor presente), a taxa de juros e o prazo.
// O programa também deverá permitir que o usuário escolha se quer
// utilizar o regime de capitalização simples ou composto. 
// Ao final apresentar ao usuário o montante (valor futuro e o valor dos juros).
//     • Fórmulas:
//     ? Juros simples: VF = VP ( 1 + i + n )
//     ? Juros compostos: VF = VP ( 1 + i )^n
//     ? Juros a partir do VF: J = VF - VP
// • Onde:
//     ? VF = Montante ou Valor Futuro
//     ? VP = Capital ou Valor Presente
//     ? J = Juros
//     ? i = taxa em decimal
//     ? n = prazo
    local nValorP , nValorF , nJur , nPrazo , cCSimpComp
    QOUT("***************")
    QOUT("* Exercicio12 *")
    QOUT("Calculo valor futuro ")

    nValorP := inp_num("Informe o valor do capital (valor presente): ")
    nJur := inp_num("Informe a taxa de juros (diaria): ")
    nPrazo := inp_num("Informe o prazo (dias): ")

    QOUT("Regime de capitalizacao")
    while .T.
        cCSimpComp := inp_up_chr("(S)imples ou (C)omposto: ")
        if  cCSimpComp == "S" .OR. cCSimpComp == "C"
            exit
        endif
    enddo

    if  cCSimpComp == "S" 
        nValorF := f_juros_simples(nValorP , nJur , nPrazo)
    elseif cCSimpComp == "C"
        nValorF := f_juros_composto(nValorP , nJur , nPrazo)
    endif

    QOUT("")
    QOUT("Valor presente: $ " + allTrim(str(nValorP)))
    QOUT("Juros: " + allTrim(str(nJur)) + "%"  )
    QOUT("Prazo: " + allTrim(str(nPrazo)) + " dias"  )
    QOUT("Valor futuro: $ " + allTrim(str(nValorF)))

    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio13()
// fazer uma função para cálculo do valor presente, dado o montante e a taxa.
    local nValorP , nValorF , nJur , nPrazo , cCSimpComp
    QOUT("***************")
    QOUT("* Exercicio13 *")
    QOUT("Calculo valor presente ")

    nValorF := inp_num( "Informe o valor final do capital (valor futuro): " )
    nJur := inp_num( "Informe a taxa de juros (diaria): " )
    nPrazo := inp_num( "Informe o prazo (dias): " )

    nValorP := f_juros_valor_presente(nValorF , nJur , nPrazo)

    QOUT("")
    QOUT("Valor futuro: $ " + allTrim(str(nValorF)))
    QOUT("Juros: " + allTrim(str(nJur)) + "%"  )
    QOUT("Prazo: " + allTrim(str(nPrazo)) + " dias"  )
    QOUT("Valor presente: $ " + allTrim(str(nValorP)))
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio14()
// Organize as funções de PV e FV numa unidade de funções financeiras.
    QOUT("***************")
    QOUT("* Exercicio14 *")
    QOUT("as funcoes ja estao na Lib feita para esta lista")
    QOUT(" SET PROCEDURE TO Exercicios_de_Fixacao_-_Aula_06_lib.prg ")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio15() 
// Crie uma função chamada “ehPositivo” 
// que descubra se um valor é positivo ou negativo (considere o valor zero como positivo) e retorne Verdadeiro ou Falso. 
// Use essa função em um programa que calcula o módulo de um número informado pelo usuário.
    local nValor
    QOUT("***************")
    QOUT("* Exercicio15 *")
    nValor := inp_num( "Informe um numero: " )

    IF !ehPositivo(nValor)
        nValor *= -1
    endif

    QOUT("modulo = " + allTrim(str(nValor)))

    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio16()
// Criar um programa de funções com literais e nela disponibilizar as funções/procedimentos:
//     a. isLetra(c): informa se o caractere enviado é uma letra.
//     b. isDigito(c): informa se o caractere enviado é um número.
//     c. isSimbolo(c): informa se o caractere enviado é um símbolo.
//     d. toLower(c): converte uma letra maiúscula em minúscula.
//     e. cTroca(a, b): troca os valores entre as variáveis a e b.
    local cA := "a"
    local cB := 2
    QOUT("***************")
    QOUT("* Exercicio16 *")
    QOUT("")
    
    if isLetra("9")
        QOUT("9 isLetra .T. ")
    else
        QOUT("9 isLetra .F. ")
    endif
    if isLetra("C")
        QOUT("C isLetra .T. ")
    else
        QOUT("C isLetra .F. ")
    endif

    if isDigito("9")
        QOUT("9 isDigito .T. ")
    else
        QOUT("9 isDigito .F. ")
    endif
    if isDigito("#")
        QOUT("# isDigito .T. ")
    else
        QOUT("# isDigito .F. ")
    endif

    if isSimbolo("@")
        QOUT("@ isSimbolo .T. " )
    else
        QOUT("@ isSimbolo .F. ")
    endif

    if isSimbolo("T")
        QOUT("T isSimbolo .T. " )
    else
        QOUT("T isSimbolo .F. ")
    endif

    QOUT("T toLower " + toLower("T") )

    QOUT("a = A , b = 2  => cTroca ")
    cA := "A"
    cB := "2"
    cTroca(@cA, @cB)
    QOUT("a " + cA)
    QOUT("b " + cB)
    
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio17()
// Criar um programa de funções com literais e nela disponibilizar as funções:
//     a. iTroca(a, b): t   roca os valores entre as variáveis a e b.
//     b. isPar(x): informa se o inteiro enviado é um número par.
//     c. isImPar(x): informa se o inteiro enviado é um número ímpar.
//     d. Inverte(x): retorna o número com sinal invertido.
//     e. isDiv(a, b): retorna se a é divisível por b.
    local cA := "a"
    local cB := 2
    QOUT("***************")
    QOUT("* Exercicio17 *")
    QOUT("")

    QOUT("a = j , b = ?  => iTroca ")
    cA := "j"
    cB := "?"
    iTroca(@cA, @cB)
    QOUT("a " + cA)
    QOUT("b " + cB)    
    
    if isPar(9)
        QOUT("9 isPar .T. ")
    else
        QOUT("9 isPar .F. ")
    endif
    if isPar(8)
        QOUT("8 isPar .T. ")
    else
        QOUT("8 isPar .F. ")
    endif

    if isImPar(9)
        QOUT("9 isImPar .T. ")
    else
        QOUT("9 isImPar .F. ")
    endif
    if isImPar(8)
        QOUT("8 isImPar .T. ")
    else
        QOUT("8 isImPar .F. ")
    endif

    QOUT("Inverte(5) = " + AllTrim(str(Inverte(5))))
    QOUT("Inverte(-5) = " + AllTrim(str(Inverte(-5))))

    if isDiv(9,5)
        QOUT("9/5 isDiv .T. ")
    else
        QOUT("9/5 isDiv .F. ")
    endif
    if isDiv(8,4)
        QOUT("8/4 isDiv .T. ")
    else
        QOUT("8/4 isDiv .F. ")
    endif

    QOUT("***************")
    QOUT("")
    wait
Return nil


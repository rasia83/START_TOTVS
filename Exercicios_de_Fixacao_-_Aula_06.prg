 
Function Main()
    // QOUT(" !!! aviso !!! ")
    // QOUT(" todos exercicios em que o valor apresentar casas decimais")
    // QOUT(" o mesmo deve ser representado no padrao ammericano ")
    // QOUT(" ultilizar . e nao , ")
    // QOUT("")

    // Exercicio01()
    // Exercicio02()
    // Exercicio03()
    // Exercicio04()
    // Exercicio05()
    // Exercicio06()
    // Exercicio07()
    // Exercicio08()
    // Exercicio09()
    Exercicio10()
    Exercicio11()
    Exercicio12()
    Exercicio13()
    // Exercicio14()
    // Exercicio15()
    // Exercicio16()
    // Exercicio17()
    
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

    while !IsDigit(nValor) .OR. val(nValor) < 0 // .OR. val(nNum) > 97
        ACCEPT "Informe o valor: " TO nValor
    enddo
    nValor := val(nValor)

    while !IsDigit(nTaxa) .OR. val(nTaxa) < 0 //.OR. val(nNum) > 97
        ACCEPT "Informe a taxa: " TO nTaxa
    enddo
    nTaxa := val(nTaxa) 

    while !IsDigit(nTempo) .OR. val(nTempo) < 0 //.OR. val(nNum) > 97
        ACCEPT "Informe o tempo: " TO nTempo
    enddo
    nTempo := val(nTempo) 

    nPrest := calc_prestacao(nValor, nTaxa, nTempo )

    QOUT("valor calculado: " + AllTrim(str(nPrest)))
    QOUT("***************")
    QOUT("")
Return nil

Function calc_prestacao(nValor, nTaxa, nTempo )
Return nValor + ((nValor *  (nTaxa / 100)) * nTempo)



Function Exercicio03()
    local nN
// sub-rotina que efetue o somatório dos N primeiros números naturais iniciando em 1. 
// O resultado deverá ser exibido no programa principal e não no procedimento.
    QOUT("***************")
    QOUT("* Exercicio03 *")
    QOUT("efetue o somatorio dos N primeiros numeros naturais")
    while !IsDigit(nN) .OR. val(nN) <= 1
        ACCEPT "Informe o valor de N: " TO nN
    enddo
    nN := val(nN)
    
    QOUT("somatorio dos " + str(nN) + " primeiros nummeros = " + AllTrim(str( soma_naturais(nN) )) )
    QOUT("***************")
    QOUT("")
Return nil

Function soma_naturais(nN)
    local nSoma := 0 , nI
    for nI := 1 to nN
        nSoma += nI
    next
Return nSoma


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

Function troca1(aValores)
    aAdd(aValores , aValores[2] )  // salvar uma copia de [2] em [3]
    aValores[2] := aValores[1] // clonar [1] em [2]
    aValores[1] := aValores[3] // copiar [3] em [1]
    aDel(aValores, 3) // apagar a auxiliar [3]
Return aValores

Function troca2(cA, cB)
    local cC := cB
    cB := cA
    cA := cC
Return nil


Function Exercicio05()
// dado o dividendo e o divisor de uma divisão, 
// calcule tanto o quociente como o resto da divisão inteira. 
// O resultado não deverá ser exibido pelo procedimento. 
// Deverá ficar disponível para ser exibido ou manipulado pelo programa principal.
    local nDividendo, nDivisor, nQuociente, nResto
    QOUT("***************")
    QOUT("* Exercicio05 *")
    QOUT("")
    while !IsDigit(nDividendo) .OR. val(nDividendo) < 0
        ACCEPT "Informe o Dividendo: " TO nDividendo
    enddo
    nDividendo := val(nDividendo)

    while !IsDigit(nDivisor) .OR. val(nDivisor) < 0
        ACCEPT "Informe o Divisor: " TO nDivisor
    enddo
    nDivisor := val(nDivisor) 

    nQuociente := quociente_divisao(nDividendo, nDivisor)
    nResto := resto_divisao(nDividendo, nDivisor)

    QOUT("Quociente: " + AllTrim(str(nQuociente)))
    QOUT("Resto: " + AllTrim(str(nResto)))
    QOUT("***************")
    QOUT("")
Return nil

Function quociente_divisao(nDividendo, nDivisor)
Return int(nDividendo / nDivisor)

Function resto_divisao(nDividendo, nDivisor)
Return int(nDividendo % nDivisor)


Function Exercicio06()
// calcular o dobro de um número qualquer. 
// O programa principal deverá chamar essa função 
// passando um valor informado pelo usuário 
// e exibir o resultado na tela.
    local nNum
    QOUT("***************")
    QOUT("* Exercicio06 *")
    QOUT("calcular o dobro de um numero")
    while !IsDigit(nNum)
        ACCEPT "Informe o numero: " TO nNum
    enddo
    nNum := val(nNum)
    o_dobro_ou_nada(nNum)
    QOUT("***************")
    QOUT("")
Return nil

Function o_dobro_ou_nada(nNum)
    nNum *= 2
    QOUT("o dobro = " + AllTrim(str(nNum)))
Return nil


Function Exercicio07()
// Como sabemos, o Harbour/ADVPL não possui uma função para cálculo de potência. 
// Crie uma função “POT”, que receba como parâmetros a base e o expoente 
// e retorne o valor da potência
    local nBase, nExpoente, nPotencia
    QOUT("***************")
    QOUT("* Exercicio07 *")
    QOUT("calculo de potencia")
    while !IsDigit(nBase)
        ACCEPT "Informe a base: " TO nBase
    enddo
    nBase := val(nBase)
    while !IsDigit(nExpoente)
        ACCEPT "Informe o expoente: " TO nExpoente
    enddo
    nExpoente := val(nExpoente)

    nPotencia := POT(nBase, nExpoente)

    QOUT("Potencia = " + allTrim(str(nPotencia)))
    QOUT("***************")
    QOUT("")
Return nil

Function POT(nBase, nExpoente)
Return int(nBase ^ nExpoente)


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
    while !IsDigit(nL1)
        ACCEPT "Informe um lado: " TO nL1
    enddo
    nL1 := val(nL1)
    while !IsDigit(nL2)
        ACCEPT "Informe o outro lado: " TO nL2
    enddo
    nL2 := val(nL2)

    nArea := area(nL1, nL2)

    QOUT("area = " + allTrim(str(nArea)))
    QOUT("***************")
    QOUT("")
Return nil

Function area(nL1, nL2)
Return int(nL1 * nL2)


Function Exercicio09()
// mostrar o sucessor e o antecessor de um número qualquer informado pelo usuário. 
// Tanto o antecessor como o sucessor deverão ser obtidos através de funções respectivas.
local nNum
    QOUT("***************")
    QOUT("* Exercicio09 *")
    QOUT("")
    while !IsDigit(nNum)
        ACCEPT "Informe um numero: " TO nNum
    enddo
    nNum := val(nNum)
    QOUT("sucessor: " + allTrim(str(sucessor(nNum))))
    QOUT("antecessor: " + allTrim(str(antecessor(nNum))))
    QOUT("***************")
    QOUT("")
Return nil

Function sucessor(nNum)
Return ++nNum

Function antecessor(nNum)
Return --nNum


Function Exercicio10()
// calcule a média de 3 valores quaisquer. 
// O programa principal deverá ler os 3 valores informados pelo usuário 
// e apresentar a média.
    local nA, nB, nC

    QOUT("***************")
    QOUT("* Exercicio10 *")
    QOUT("calculo da media")
    while !IsDigit(nA)
        ACCEPT "Informe o valor A: " TO nA
    enddo
    nA := val(nA)
    while !IsDigit(nB)
        ACCEPT "Informe o valor B: " TO nB
    enddo
    nB := val(nB)
    while !IsDigit(nC)
        ACCEPT "Informe o valor C: " TO nC
    enddo
    nC := val(nC)
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
    while !IsDigit(nSal)
        ACCEPT "Informe o valor do salario: " TO nSal
    enddo
    nSal := val(nSal)
    while !IsDigit(nRej)
        ACCEPT "Informe o valor ddo reajuste: " TO nRej 
    enddo
    nRej := val(nRej)

    QOUT("novo salario: " + allTrim(str(reajuste(nSal, nRej))))
    QOUT("***************")
    QOUT("")
Return nil

Function reajuste(nSal, nRej)
Return (1 + (nRej / 100)) * nSal


Function Exercicio12()
// Faça um programa para cálculo do montante (valor futuro) 
// a partir de um dado capital (valor presente). 
// O programa deverá solicitar ao usuário o valor do capital (valor presente), 
// a taxa de juros e o prazo.
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
    QOUT("***************")
    QOUT("* Exercicio12 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio13()
// fazer uma função para cálculo do valor presente, dado o montante e a taxa.

    QOUT("***************")
    QOUT("* Exercicio13 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio14()
// Organize as funções de PV e FV numa unidade de funções financeiras.

    QOUT("***************")
    QOUT("* Exercicio14 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio15()
// Crie uma função chamada “ehPositivo” 
// que descubra se um valor é positivo ou negativo (considere o valor zero como positivo) e retorne Verdadeiro ou Falso. 
// Use essa função em um programa que calcula o módulo de um número informado pelo usuário.
    QOUT("***************")
    QOUT("* Exercicio15 *")
    QOUT("")
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
    QOUT("***************")
    QOUT("* Exercicio16 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio17()
// Criar um programa de funções com literais e nela disponibilizar as funções:
//     a. iTroca(a, b): troca os valores entre as variáveis a e b.
//     b. isPar(x): informa se o inteiro enviado é um número par.
//     c. isImPar(x): informa se o inteiro enviado é um número ímpar.
//     d. Inverte(x): retorna o número com sinal invertido.
//     e. isDiv(a, b): retorna se a é divisível por b.
    QOUT("***************")
    QOUT("* Exercicio17 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")

Return nil


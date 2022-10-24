// funcoes dda aula
SET PROCEDURE TO Exercicios_de_Fixacao_-_Aula_07_lib.prg

// lib para tratamento de entradas
SET PROCEDURE TO start_lib.prg

Function Main()


    // Exercicio01()
    // Exercicio02()
    // Exercicio03()
    // Exercicio04()
    // Exercicio05()
    // Exercicio06()
    // Exercicio07()
    // Exercicio08()
    // Exercicio09()

    // Exercicio10()
    // Exercicio11()
    // Exercicio12()
    // Exercicio13()
    // Exercicio14()
    // Exercicio15()
    // Exercicio16()
    // Exercicio17()
    // Exercicio18()

// Ordenação e pesquisa

    Exercicio19()

    // Exercicio20()
    // Exercicio21()
    // Exercicio22()
    // Exercicio23()
    // Exercicio24()
    // Exercicio25()
    
// String

    // Exercicio26()
    // Exercicio27()
    // Exercicio28()
    // Exercicio29()

    // Exercicio30()
    // Exercicio31()
    // Exercicio32()

// Tabela

    // Exercicio33()
    // Exercicio34()
    // Exercicio35()
    // Exercicio36()
    // Exercicio37()
    // Exercicio38()
    // Exercicio39()

    // Exercicio40()
    // Exercicio41()
    // Exercicio42()
    // Exercicio43()
    
Return nil


Function Exercicio01()
// dados um número de 1 até 7, 
// apresente o nome do dia da semana correspondente. 
// Considere 1 como “Domingo”. Utilize vetor.
    local aSemana := {"Domingo" , "Segunda-feira" , "Terca-feira" , "Quarta-feira" , "Quinta-feira" , "Sexta-feira", "Sabado"}
    local nI
    QOUT("***************")
    QOUT("* Exercicio01 *")
    for nI := 1 to 7
        QOUT(aSemana[nI])
    next
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio02()
// Ler 10 elementos de uma matriz 
// apresentá-los depois de todos serem lidos.
    local nI, aArray := {}
    QOUT("***************")
    QOUT("* Exercicio02 *")
    for nI := 1 to 10
        aAdd(aArray, hb_RandomInt(1 , 99))
    next
    print_array(aArray)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio03()
    local nI, aArray := {}
// Ler 10 elementos de uma matriz tipo vetor 
// apresentá-los na ordem inversa em que foram lidos e armazenados.
    QOUT("***************")
    QOUT("* Exercicio03 *")
    for nI := 1 to 10
        aAdd(aArray, hb_RandomInt(1 , 99))
    next
    print_array(aArray , .T. )
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio04()
// Dado um número de 1 até 12, 
// apresentar o número de dias do mês correspondente. 
// Se o número escolhido for 2 (fevereiro), considere 28 dias. Usar vetor
    local nMes := hb_RandomInt(1 , 12)
    QOUT("***************")
    QOUT("* Exercicio04 *")
    
    QOUT("Mes: " + str(nMes))
    if nMes == 1 .OR. nMes == 3 .OR. nMes == 5 .OR. nMes == 7 .OR. nMes == 8 .OR. nMes == 10 .OR. nMes == 12 
        QOUT("este mes possui 31 dias")
    elseif nMes == 4 .OR. nMes == 6 .OR. nMes == 9 .OR. nMes == 11
        QOUT("este mes possui 30 dias")
    elseif nMes == 2
        QOUT("este mes possui 28 dias (29 em ano bissexto)")
    else
        QOUT("mes invalido")
    endif
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio05()
// popule um vetor de 30 posições 
// com valores de 1 até 30. 
// Exibir o conteúdo do vetor. 
    local nI, aArray := {}
    QOUT("***************")
    QOUT("* Exercicio05 *")
    for nI := 1 to 30
        aAdd(aArray, hb_RandomInt(1 , 99))
    next
    print_array(aArray)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio06()
// popule um vetor de 30 posições 
// com valores de 30 até 1. 
// Exibir o conteúdo do vetor.
    local nI, aArray := {}
    QOUT("***************")
    QOUT("* Exercicio06 *")
    for nI := 1 to 30
        aAdd(aArray, 31 - nI)
    next
    print_array(aArray)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio07()
// popule um vetor de 10 posições 
// com valores pares a partir de 2 até o 20. 
// Exibir o conteúdo do vetor. 
    local nI, aArray := {}
    QOUT("***************")
    QOUT("* Exercicio07 *")
    for nI := 1 to 10
        aAdd(aArray, ( hb_RandomInt(1 , 10) * 2 ))
    next
    print_array(aArray)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio08()
// Ler dois vetores A e B, 
// de 20 elementos cada e calcular um terceiro, C, 
// onde cada elemento será a soma dos correspondentes em A e B.
// Apresentar o vetor resultante.
    local nI , aA := {} , aB := {} , aC := {}
    QOUT("***************")
    QOUT("* Exercicio08 *")
    for nI := 1 to 20
        aAdd(aA, (hb_RandomInt(1 , 49)))
        aAdd(aB, (hb_RandomInt(1 , 49)))
        aAdd(aC, ( aA[nI] + aB[nI]))
    next
    QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("")
    QOUT("ARRAY C")
    print_array(aC)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio09()
// apresente na tela todos os elementos de um vetor 
// que será passado como parâmetro para a função. 
// Este procedimento será útil para vários exercícios. 
// Que tal colocá-lo numa biblioteca?
    local aVetor := {10 , 20 , 30 , "Abc"}

    QOUT("***************")
    QOUT("* Exercicio09 *")
    QOUT("aVetor := {10 , 20 , 30 , " + chr(34) + "Abc" + chr(34) + "}")
    print_array(aVetor)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio10()
// Ler dois vetores, A e B de 10 elementos 
// calcular um vetor C 
// onde seu primeiro elemento é o primeiro elemento de A, seu segundo elemento é o primeiro de B, seu terceiro elemento é o segundo de A, e assim sucessivamente. 
// Notem que o vetor C deverá ter 20 elementos. 
// Exibir o conteúdo do vetor C.
    local nI , aA := {} , aB := {} , aC := {}
    QOUT("***************")
    QOUT("* Exercicio10 *")
    for nI := 1 to 10
        aAdd(aA, (hb_RandomInt(1 , 49)))
        aAdd(aB, (hb_RandomInt(1 , 49)))
    next
    aC := array(20)
    for nI := 0 to 9 
        aC[(nI*2) + 1] := aA[nI + 1]
    next
    for nI := 1 to 10
        aC[(nI*2)] := aB[nI]
    next
    QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("")
    QOUT("ARRAY C")
    print_array(aC)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio11()
// Ler um vetor A de 15 elementos e a partir dele 
// construir um vetor B de mesmo tamanho, 
// sendo o inverso de A
    local nI , aA := {} , aB := {} 
    QOUT("***************")
    QOUT("* Exercicio11 *")
    for nI := 1 to 15
        aAdd(aA, (hb_RandomInt(1 , 49)))
    next
    for nI := 15 to 1 step -1
        aAdd(aB, aA[nI])
    next
    QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio12()
// carregue um vetor de 8 elementos 
// inverta a ordem do seu conteúdo. 
// Apresente no final o vetor invertido.
// Usar apenas uma variável composta.
    local nI , aA := {} , aB := {} 
    QOUT("***************")
    QOUT("* Exercicio12 *")
    aA := array(8)
    aB := array(8)
    for nI := 1 to 8
        aA[nI] := hb_RandomInt(1 , 49)
        aB[9-nI] := aA[nI]
    next
    QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(aB) 

    // poderia immprimir com print_array(aA , .T.)
    // em duvida se apenas uma variavel composta seria apenas 1 for ou apenas 1 array
    QOUT("***************")
    QOUT("")
    wait 
Return nil


Function Exercicio13()
// Ler 8 elementos em uma matriz A tipo vetor. 
// Construir uma matriz B de mesma dimensão 
// onde cada elemento é o triplo do elemento correspondente da mátria A.
    local nI , aA := {} , aB := {} 
    QOUT("***************")
    QOUT("* Exercicio13 *")
    for nI := 1 to 8
        aAdd(aA, (hb_RandomInt(1 , 33)))
        aAdd(aB, ( aA[nI] * 3))
    next
    QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("***************")
    QOUT("")
    wait 
Return nil


Function Exercicio14()
// Ler duas matrizes A e B com 20 elementos. 
// Construir uma matriz C
// onde cada elemento de C é a subtração do elemento correspondente de A com B. 
// Apresentar a matriz C.
    local nI , aA := {} , aB := {} , aC := {}
    QOUT("***************")
    QOUT("* Exercicio14 *")
    for nI := 1 to 20
        aAdd(aA, (hb_RandomInt(1 , 49)))
        aAdd(aB, (hb_RandomInt(1 , 49)))
        aAdd(aC, ( aA[nI] - aB[nI]))
    next
   /* QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("") */
    QOUT("ARRAY C")
    print_array(aC)
    QOUT("***************")
    QOUT("")
    wait 
Return nil


Function Exercicio15()
// Ler duas matrizes do tipo vetor. 
// A com 10 elementos e B com 15 elementos. 
// Construir uma matriz C, sendo esta, a junção das duas outras matrizes. 
// C deverá ter a capacidade de armazenar 25 elementos. 
// Apresentar a matriz C.
    local nI , aA := {} , aB := {} , aC := {}
    QOUT("***************")
    QOUT("* Exercicio15 *")
    for nI := 1 to 10
        aAdd(aA, (hb_RandomInt(1 , 49)))
    next
    for nI := 1 to 15
        aAdd(aB, (hb_RandomInt(1 , 49)))
    next
    aC := array(len(aA) + len(aB))
    for nI := 1 to 10
        aC[nI] := aA[nI]
    next
    for nI := 11 to 25
        aC[nI] := aB[nI-10]
    next
   /* QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("") */
    QOUT("ARRAY C")
    print_array(aC)
    QOUT("***************")
    QOUT("")
    wait 
Return nil


Function Exercicio16()
// Ler uma matriz A do tipo vetor com 5 elementos. 
// Construir uma matriz B de mesmo tipo e dimensão, 
// cada elemento da matriz B deverá ser o valor inverso (sinal trocado) do elemento correspondente da matriz A.  
// Apresentar os elementos da matriz.
    local nI , aA := {} , aB := {} 
    QOUT("***************")
    QOUT("* Exercicio16 *")
    for nI := 1 to 8
        aAdd(aA, (hb_RandomInt(1 , 49)))
        aAdd(aB, ( aA[nI] * -1))
    next
    QOUT("ARRAY A")
    print_array(aA)
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("***************")
    QOUT("")
    wait 
Return nil


Function Exercicio17()
// Ler uma matriz A do tipo vetor com 10 elementos. 
// Construir uma matriz B de mesmo tipo, 
// sendo que cada elemento de B seja o somatório do primeiro até o elemento correspondente de A.
// Apresentar os elementos da matriz B.
    local nI , aA := {} , aB := {} , nAux := 0
    QOUT("***************")
    QOUT("* Exercicio17 *")
    for nI := 1 to 10
        aAdd(aA, (hb_RandomInt(1 , 49)))
        nAux += aA[nI]
        aAdd(aB, ( nAux ))
    next 
    /* QOUT("ARRAY A")
    print_array(aA) */
    QOUT("ARRAY B")
    print_array(ab)
    QOUT("***************")
    QOUT("")
    wait 
Return nil


Function Exercicio18()
// Dada uma data informada pelo usuário, 
// indicar ordinalmente o dia do ano que ela representa do 1º dia ao 365º/366º (conforme o ano for ou não bissexto). 
// O usuário informará separadamente dos valores do dia, do mês e do ano pesquisado.
    local cDia, cMes, cAno , dData := ""
    QOUT("***************")
    QOUT("* Exercicio18 *")
    cDia := inp_num("Informar um dia (dd): ")
    cMes := inp_num("Informar um mes (mm): ")
    cAno := inp_num("Informar um ano (aaaa): ")
    dData := strZero(cAno,4) + "/" + strZero(cMes,2) + "/" + strZero(cDia,2)
    dData := CtoD(dData)
    QOUT("Este e o " + ALLtrim(str(DoY(dData))) + "º dia do ano indicado")
    QOUT("***************")
    QOUT("")
    wait 
Return nil

// Ordenação e pesquisa

Function Exercicio19()
// Carregar um vetor com 50 caracteres gerados aleatoriamente (randômicos). 
// CHR(hb_RandomInt(65 , 90))
// Serão válidos apenas caracteres que representem letras maiúsculas de “A” até “Z”. 
// A carga do vetor deverá ser feita através de uma sub-rotina que é chamada automaticamente no programa principal. 
// Os caracteres podem se repetir.
    local aArray := {}
    QOUT("***************")
    QOUT("* Exercicio19 *")
    aArray := a_chr_r_up(aArray , 50)
    print_array(aArray)
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio20()
// Alterar o programa anterior de modo a incluir 4 menus que terão as seguintes finalidades:
    // a. Listar o conteúdo completo do vetor.
    // b. Solicitar ao usuário um caractere, a ser pesquisado no vetor e
    // informar se o caractere pesquisado existe ou não no vetor
    // informando a posição em que ele está (todas as ocorrências
    // visto que o caractere pode se repetir).
    // c. Pesquisar se existe no vetor um caractere informado pelo
    // usuário e informar qual a posição da última ocorrência desse
    // caractere (visto que um mesmo caractere poderá se repetir).
    // d. Pesquisar se existe no vetor um caractere informado pelo
    // usuário e informar qual a posição da primeira ocorrência desse
    // caractere (visto que um mesmo caractere poderá se repetir).

    QOUT("***************")
    QOUT("* Exercicio20 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio21()
// Carregar um vetor com 12 caracteres gerados aleatoriamente (randômicos). 
// Serão válidos apenas caracteres que representem letras minúsculas de “a” até “z”. 
// A carga do vetor deverá ser feita através de uma sub-rotina que é chamada automaticamente no programa principal. 
// Os caracteres NÃO podem se repetir. 
// Exibir no final o vetor gerado. 
// A exibição deverá ser feita via uma sub-rotina.
    QOUT("***************")
    QOUT("* Exercicio21 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio22()
// Ler 12 elementos de uma matriz tipo vetor, colocá-los em ordem crescente
    QOUT("***************")
    QOUT("* Exercicio22 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


// Function Exercicio23()
// Fazer um programa que trate de um vetor de 8 elementos numéricos.
// Ele deverá apresentar um menu que permitirá as seguintes operações: 
//     a. Carregar o vetor através da leitura dos valores.
//     b. Exibir o conteúdo do vetor.
//     c. Classificar os valores em ordem crescente. Caso o vetor esteja vazio, informar.
//     d. Classificar os valores em ordem decrescente. Caso o vetor esteja vazio, informar.
//     e. Pesquisar a existência de um valor no vetor. Caso o vetor esteja vazio, informar.
//     f. Informar o somatório dos valores do vetor.
//     g. Informar a média dos valores do vetor.
//     h. Informar o maior e o menor valor do vetor.
//     i. Embaralhar o conteúdo do vetor.
//     j. Informar os valores que se repetem e a quantidade de repetições.

    QOUT("***************")
    QOUT("* Exercicio23 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio24()
// Estudar através da execução passo a passo o algoritmo de pesquisa binária demonstrado em aula.
    QOUT("***************")
    QOUT("* Exercicio24 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio25()
// Carregar um vetor com valores de 0 a 100. 
// Implementar um menu que permita realizar neste vetor 
// uma pesquisa sequencial e uma pesquisa binária. 
// Incluir um contador nas rotinas de pesquisa 
// para contar quantas inteirações foram realizadas para se encontrar (ou não) o valor pesquisado.
    QOUT("***************")
    QOUT("* Exercicio25 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

// String

Function Exercicio26()
    //
    QOUT("***************")
    QOUT("* Exercicio26 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio27()
    //
    QOUT("***************")
    QOUT("* Exercicio27 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio28()
    //
    QOUT("***************")
    QOUT("* Exercicio28 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio29()
    //
    QOUT("***************")
    QOUT("* Exercicio29 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio30()
    //
    QOUT("***************")
    QOUT("* Exercicio30 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio31()
    //
    QOUT("***************")
    QOUT("* Exercicio31 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio32()
    //
    QOUT("***************")
    QOUT("* Exercicio32 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio33()
    //
    QOUT("***************")
    QOUT("* Exercicio33 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio34()
    //
    QOUT("***************")
    QOUT("* Exercicio34 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio35()
    //
    QOUT("***************")
    QOUT("* Exercicio35 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio36()
    //
    QOUT("***************")
    QOUT("* Exercicio36 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio37()
    //
    QOUT("***************")
    QOUT("* Exercicio37 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio38()
    //
    QOUT("***************")
    QOUT("* Exercicio38 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio39()
    //
    QOUT("***************")
    QOUT("* Exercicio39 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio40()
    //
    QOUT("***************")
    QOUT("* Exercicio40 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio41()
    //
    QOUT("***************")
    QOUT("* Exercicio41 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio42()
    //
    QOUT("***************")
    QOUT("* Exercicio42 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio43()
    //
    QOUT("***************")
    QOUT("* Exercicio43 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil










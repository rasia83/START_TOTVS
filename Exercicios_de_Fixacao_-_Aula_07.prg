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

// Ordena��o e pesquisa
    // Exercicio19()
    // Exercicio20() // refatorar 
    // Exercicio21()
    // Exercicio22()
    // Exercicio23() // TODO
    // Exercicio24() // DISPENSADO 
    // Exercicio25() // DISPENSADO 
    
// String
    // Exercicio26()
    // Exercicio27()
    // Exercicio28() // DISPENSADO  bin�rio em decimal e um n�mero decimal em bin�rio.
    // Exercicio29() // CPF
    // Exercicio30() // - finalidade do trecho de c�digo
    // Exercicio31() // TODO
    // Exercicio32()

// Tabela
    // Exercicio33() // mapa de troco. 
    // Exercicio34() //  c�digo Morse.
    // Exercicio35() 
    // Exercicio36()  
    // Exercicio37() // TODO
    // Exercicio38() 
    // Exercicio39() // diferen�a entre a diagonal principal e secund�ria da matriz 
    // Exercicio40()
    // Exercicio41() // TODO
    // Exercicio42() // TODO
    // Exercicio43() // TODO
    
Return nil


Function Exercicio01()
// dados um n�mero de 1 at� 7, 
// apresente o nome do dia da semana correspondente. 
// Considere 1 como �Domingo�. Utilize vetor.
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
// apresent�-los depois de todos serem lidos.
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
// apresent�-los na ordem inversa em que foram lidos e armazenados.
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
// Dado um n�mero de 1 at� 12, 
// apresentar o n�mero de dias do m�s correspondente. 
// Se o n�mero escolhido for 2 (fevereiro), considere 28 dias. Usar vetor
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
// popule um vetor de 30 posi��es 
// com valores de 1 at� 30. 
// Exibir o conte�do do vetor. 
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
// popule um vetor de 30 posi��es 
// com valores de 30 at� 1. 
// Exibir o conte�do do vetor.
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
// popule um vetor de 10 posi��es 
// com valores pares a partir de 2 at� o 20. 
// Exibir o conte�do do vetor. 
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
// onde cada elemento ser� a soma dos correspondentes em A e B.
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
// que ser� passado como par�metro para a fun��o. 
// Este procedimento ser� �til para v�rios exerc�cios. 
// Que tal coloc�-lo numa biblioteca?
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
// onde seu primeiro elemento � o primeiro elemento de A, seu segundo elemento � o primeiro de B, seu terceiro elemento � o segundo de A, e assim sucessivamente. 
// Notem que o vetor C dever� ter 20 elementos. 
// Exibir o conte�do do vetor C.
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
// inverta a ordem do seu conte�do. 
// Apresente no final o vetor invertido.
// Usar apenas uma vari�vel composta.
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
// Construir uma matriz B de mesma dimens�o 
// onde cada elemento � o triplo do elemento correspondente da m�tria A.
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
// onde cada elemento de C � a subtra��o do elemento correspondente de A com B. 
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
// Construir uma matriz C, sendo esta, a jun��o das duas outras matrizes. 
// C dever� ter a capacidade de armazenar 25 elementos. 
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
// Construir uma matriz B de mesmo tipo e dimens�o, 
// cada elemento da matriz B dever� ser o valor inverso (sinal trocado) do elemento correspondente da matriz A.  
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
// sendo que cada elemento de B seja o somat�rio do primeiro at� o elemento correspondente de A.
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
// Dada uma data informada pelo usu�rio, 
// indicar ordinalmente o dia do ano que ela representa do 1� dia ao 365�/366� (conforme o ano for ou n�o bissexto). 
// O usu�rio informar� separadamente dos valores do dia, do m�s e do ano pesquisado.
    local cDia, cMes, cAno , dData := ""
    QOUT("***************")
    QOUT("* Exercicio18 *")
    cDia := inp_num("Informar um dia (dd): ")
    cMes := inp_num("Informar um mes (mm): ")
    cAno := inp_num("Informar um ano (aaaa): ")
    dData := strZero(cAno,4) + "/" + strZero(cMes,2) + "/" + strZero(cDia,2)
    dData := CtoD(dData)
    QOUT("Este e o " + ALLtrim(str(DoY(dData))) + "� dia do ano indicado")
    QOUT("***************")
    QOUT("")
    wait 
Return nil

// Ordena��o e pesquisa

Function Exercicio19()
// Carregar um vetor com 50 caracteres gerados aleatoriamente (rand�micos). 
// CHR(hb_RandomInt(65 , 90))
// Ser�o v�lidos apenas caracteres que representem letras mai�sculas de �A� at� �Z�. 
// A carga do vetor dever� ser feita atrav�s de uma sub-rotina que � chamada automaticamente no programa principal. 
// Os caracteres podem se repetir. 
    local aArray := {}
    QOUT("***************")
    QOUT("* Exercicio19 *")
    aArray := fill_a_chr(aArray , 50 , "U" , .F. )
    print_array(aArray)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio20()
// Alterar o programa anterior de modo a incluir 4 menus que ter�o as seguintes finalidades:
    // a. Listar o conte�do completo do vetor.
    // b. Solicitar ao usu�rio um caractere, a ser pesquisado no vetor e
    // informar se o caractere pesquisado existe ou n�o no vetor
    // informando a posi��o em que ele est� (todas as ocorr�ncias
    // visto que o caractere pode se repetir).
    // c. Pesquisar se existe no vetor um caractere informado pelo
    // usu�rio e informar qual a posi��o da �ltima ocorr�ncia desse
    // caractere (visto que um mesmo caractere poder� se repetir).
    // d. Pesquisar se existe no vetor um caractere informado pelo
    // usu�rio e informar qual a posi��o da primeira ocorr�ncia desse
    // caractere (visto que um mesmo caractere poder� se repetir).
    local nCar:=""
    QOUT("***************")
    QOUT("* Exercicio20 *")    

    ACCEPT("Informe uma letra: ") to nCar
    ncar:=upper(ncar)

    VetorCaracteres( nCar)
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio21()
// Carregar um vetor com 12 caracteres gerados aleatoriamente (rand�micos). 
// Ser�o v�lidos apenas caracteres que representem letras min�sculas de �a� at� �z�. 
// A carga do vetor dever� ser feita atrav�s de uma sub-rotina que � chamada automaticamente no programa principal. 
// Os caracteres N�O podem se repetir. 
// Exibir no final o vetor gerado. 
// A exibi��o dever� ser feita via uma sub-rotina.
    local aArray := {}
    QOUT("***************")
    QOUT("* Exercicio21 *")
    aArray := fill_a_chr(aArray , 12 , "L" , .T. )
    print_array(aArray )
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio22()
// Ler 12 elementos de uma matriz tipo vetor, coloc�-los em ordem crescente
    local aArray := {}
    QOUT("***************")
    QOUT("* Exercicio22 *")
    aArray := fill_a_chr(aArray , 12 , "L"  )
    print_array(aArray , .F. , .T. )
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio23()
// Fazer um programa que trate de um vetor de 8 elementos num�ricos.
// Ele dever� apresentar um menu que permitir� as seguintes opera��es:  
//     a. Carregar o vetor atrav�s da leitura dos valores. 
//     b. Exibir o conte�do do vetor. 
//     c. Classificar os valores em ordem crescente. Caso o vetor esteja vazio, informar.
//     d. Classificar os valores em ordem decrescente. Caso o vetor esteja vazio, informar.
//     e. Pesquisar a exist�ncia de um valor no vetor. Caso o vetor esteja vazio, informar.
//     f. Informar o somat�rio dos valores do vetor.
//     g. Informar a m�dia dos valores do vetor.
//     h. Informar o maior e o menor valor do vetor.
//     i. Embaralhar o conte�do do vetor.
//     j. Informar os valores que se repetem e a quantidade de repeti��es.

    QOUT("***************")
    QOUT("* Exercicio23 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio24()
// Estudar atrav�s da execu��o passo a passo o algoritmo de pesquisa bin�ria demonstrado em aula.
    QOUT("***************")
    QOUT("* Exercicio24 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio25()
// Carregar um vetor com valores de 0 a 100. 
// Implementar um menu que permita realizar neste vetor 
// uma pesquisa sequencial e uma pesquisa bin�ria. 
// Incluir um contador nas rotinas de pesquisa 
// para contar quantas inteira��es foram realizadas para se encontrar (ou n�o) o valor pesquisado.
    QOUT("***************")
    QOUT("* Exercicio25 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil

// String

Function Exercicio26()
// Fazer um programa que dada uma palavra qualquer informada pelo
// usu�rio apresente na tela o seu primeiro caractere.
    local cTexto 
    QOUT("***************")
    QOUT("* Exercicio26 *")
    cTexto := inp_str( "Digite uma palavra qualquer " )
    QOUT("Primeiro caracter = " + Left(cTexto,1))
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio27()
// Fazer um programa que apresente invertida uma palavra informada
// pelo usu�rio. Informar tamb�m se � ou n�o um pal�ndromo
    local cTexto , cTxtInv, nI , nTamanho // , aA := {} , aB := {}
    QOUT("***************")
    QOUT("* Exercicio27 *")
    QOUT("")
    cTexto := inp_str( "Digite uma palavra " )

    nTamanho := len(cTexto)
/*
    aA := array(nTamanho)
    aB := array(nTamanho)
    /* 
    for nI := 1 to nTamanho
        aA[nI] = SubStr(cTexto, nI , 1)
        aB[nI] = SubStr(cTexto, nTamanho-nI+1 , 1)
    next nI */
    
    cTxtInv := ""
    for nI := 1 to nTamanho
        // cTxtInv += aB[nI]
        cTxtInv += SubStr(cTexto, nTamanho-nI+1 , 1)
    next nI

    QOUT("invertida = " + cTxtInv)
    if cTexto == cTxtInv
        QOUT(cTexto + " e um palindromo")
    endif

    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio28()
// Fa�a um programa que possibilite realizar a convers�o de um n�mero
// bin�rio em decimal e um n�mero decimal em bin�rio.

    QOUT("***************")
    QOUT("* Exercicio28 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio29()
// Fa�a um programa que valide um CPF informado pelo usu�rio, 
// atrav�s do c�lculo do d�gito verificador (check-digit).
    local cCPF , aCPF := {} , nI , nCalc := 0
    
    QOUT("***************")
    QOUT("* Exercicio29 *")
    QOUT("")
    while .T.
        cCPF := inp_num( "Digite o CPF... " )
        cCPF := allTrim(str(cCPF))
        // cCPF := "11111111111" // CPF TEMPORARIO
        if len(cCPF) == 11
            exit
        endif
    enddo
    
    aCPF := array(11)
    for nI := 1 to 11
        aCPF[nI] := val(SubStr(cCPF, nI , 1))
    next nI

    // CPF n�o pode ter todos digitos iguais
    if aCPF[1] = aCPF[2] .and. aCPF[2] = aCPF[3] .and. aCPF[3] = aCPF[4] .and. aCPF[4] = aCPF[5] .and. aCPF[5] = aCPF[6] .and. aCPF[6] = aCPF[7] .and. aCPF[7] = aCPF[8] .and. aCPF[8] = aCPF[9] .and. aCPF[9] = aCPF[10] .and. aCPF[10] = aCPF[11]
        QOUT("CPF INVALIDO")
    else
        // inicio do teste do primeiro digito verificador
        nCalc := aCPF[1] * 10 + aCPF[2] * 9 + aCPF[3] * 8 + aCPF[4] * 7 + aCPF[5] * 6 + aCPF[6] * 5 + aCPF[7] * 4 + aCPF[8] * 3 + aCPF[9] * 2

        nCalc :=  (nCalc * 10) % 11
        if ( nCalc == 10)
            nCalc := 0
        endif

        if (nCalc == aCPF[10]) // teste do primeiro digito verificador
            // inicio do teste do segundo digito verificador
            nCalc := aCPF[1] * 11 + aCPF[2] * 10 + aCPF[3] * 9 + aCPF[4] * 8 + aCPF[5] * 7 + aCPF[6] * 6 + aCPF[7] * 5 + aCPF[8] * 4 + aCPF[9] * 3 + aCPF[10] * 2

            nCalc :=  (nCalc * 10) % 11
            if ( nCalc == 10)
                nCalc := 0
            endif
            
            if (nCalc == aCPF[11])//teste do segundo digito verificador
                QOUT("CPF VALIDO")
            else
                QOUT("CPF INVALIDO")
            endif
        endif
    end if

    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio30()
// Atrav�s de teste de mesa, indique a finalidade do trecho de c�digo a seguir
    local aANAG := {"A","M","O","R"}
    local nI    := 0
    local cAUX  := ""

    QOUT("***************")
    QOUT("* Exercicio30 *")
    QOUT("Atraves de teste de mesa, indique a finalidade do trecho de codigo a seguir")
    For nI := 1 TO 4
        cAUX := aANAG[nI]
        aANAG[nI] := aANAG[5-nI]
        aANAG[5-nI] := cAUX
        QOUT(hb_valtoexp(aANAG))
    NEXT nI
    QOUT("R: este codigo inverteu o array duas vezes , voltando ao seu estado original ")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio31()
    // 
    QOUT("***************")
    QOUT("* Exercicio31 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio32()
// Fa�a uma fun��o de nome �encrypt�
// recebe uma string e realiza a criptografia desta string. 
// Essa criptografia pode ser 
// uma mera troca de caracteres com base na tabela ASCII 
// e/ou troca de posi��o de caracteres. 
// Em seguida fa�a um programa que a partir de uma senha informada pelo usu�rio 
// utilize a fun��o criada para codific�-la e apresente na tela a senha criptografada.
    local aCript := {} , cSenha := ""
    QOUT("***************")
    QOUT("* Exercicio32 *")
    QOUT("")
    
    while len(cSenha) < 5
        ACCEPT "Digite uma senha para criptografar: " TO cSenha
    enddo

    aCript := encrypt(cSenha)
    QOUT("Senha criptografada")
    QOUT(hb_valtoexp(aCript))
    QOUT("***************")
    QOUT("")
    wait
Return nil

Function encrypt(MSG)
    local nI     := 0
    local cAux   := "A"
    local aCript := {}

    For nI := 1 TO len(MSG)
        cAux := SubStr(MSG, nI, 1)
        cAux := ( asc(cAux) + 22 ) / 2
        aAdd(aCript,CHR(cAux))
    next nI

Return aCript

// Tabela

Function Exercicio33()
// Fa�a o programa do mapa de troco. 
// Nele o usu�rio informa um valor monet�rio a pagar 
// o programa calcula qual a menor quantidade de c�dulas/moedas ser�o necess�rias para pagar exatamente este valor.
// Por exemplo: se o usu�rio informar R$ 1.260,00, 
// o programa dever� informar 
// 6 notas de R$ 200,00; 
// 1 nota de R$ 50,00; 
// 1 nota de R$ 10,00. 
// Pense em utilizar uma matriz de 2 dimens�es, 
// onde a primeira coluna contenha o valor de cada c�dula/moeda e a segunda ter� a quantidade.
    local nEntrada := "" //, n200 := 0 , n100 := 0 , n50 := 0 , n20 := 0 , n10 := 0 , n5 := 0 , n2 := 0 , nM100 := 0 , nM50 := 0 , nM25 := 0 , nM10 := 0 , nM5 := 0 , nM1 := 0
    local aTroco := {} , nI
    QOUT("***************")
    QOUT("* Exercicio33 *")


    aAdd(aTroco , {"200" , 0 })     //  1
    aAdd(aTroco , {"100" , 0 })     //  2
    aAdd(aTroco , {"050" , 0 })     //  3
    aAdd(aTroco , {"020" , 0 })     //  4
    aAdd(aTroco , {"010" , 0 })     //  5
    aAdd(aTroco , {"005" , 0 })     //  6    
    aAdd(aTroco , {"002" , 0 })     //  7
    aAdd(aTroco , {"1,00" , 0 })    //  8
    aAdd(aTroco , {"0,50" , 0 })    //  9
    aAdd(aTroco , {"0,25" , 0 })    // 10
    aAdd(aTroco , {"0,10" , 0 })    // 11
    aAdd(aTroco , {"0,05" , 0 })    // 12
    aAdd(aTroco , {"0,01" , 0 })    // 13


    nEntrada := inp_num("valor para troco: ")
    // nEntrada := 388.91
    // nEntrada := 1260.00

    if nEntrada / 200 >= 1
        aTroco[1][2] := int(nEntrada / 200)
        // n200 := int(nEntrada / 200)
        nEntrada %= 200
    endif

    if nEntrada / 100 >= 1
        aTroco[2][2] := int(nEntrada / 100)
        // n100 := int(nEntrada / 100)
        nEntrada %= 100
    endif
    
    if nEntrada / 50 >= 1
        aTroco[3][2] := int(nEntrada / 50)
        // n50 := int(nEntrada / 50)
        nEntrada %= 50
    endif
    
    if nEntrada / 20 >= 1
        aTroco[4][2] := int(nEntrada / 20)
        nEntrada %= 20
    endif
    
    if nEntrada / 10 >= 1
        aTroco[5][2] := int(nEntrada / 10)
        nEntrada %= 10
    endif
    
    if nEntrada / 5 >= 1
        aTroco[6][2] := int(nEntrada / 5)
        nEntrada %= 5
    endif
    
    if nEntrada / 2 >= 1
        aTroco[7][2] := int(nEntrada / 2)
        nEntrada %= 2
    endif
    
    if nEntrada / 1 >= 1
        aTroco[8][2] := int(nEntrada / 1)
        nEntrada %= 1
    endif
    
    if nEntrada / 0.5 >= 1
        aTroco[9][2] := int(nEntrada / 0.5)
        nEntrada %= 0.5
    endif
    
    if nEntrada / 0.25 >= 1
        aTroco[10][2] := int(nEntrada / 0.25)
        nEntrada %= 0.25
    endif
    
    if nEntrada / 0.1 >= 1
        aTroco[11][2] := int(nEntrada / 0.1)
        nEntrada %= 0.1
    endif
    
    if nEntrada / 0.05 >= 1
        aTroco[12][2] := int(nEntrada / 0.05)
        nEntrada %= 0.05
    endif
    
    if nEntrada / 0.01 >= 1
        aTroco[13][2] := int(nEntrada / 0.01)
        nEntrada %= 0.01
    endif


    for nI := 1 to 7
        qout("Notas de   " +aTroco[nI][1]+ " = " + allTrim(str(aTroco[nI][2])))
    next nI
    for nI := 8 to 13
        qout("Moedas de " +aTroco[nI][1]+ " = " + allTrim(str(aTroco[nI][2])))
    next nI

    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio34()
// Fazer um tradutor de c�digo Morse. 
// O usu�rio poder� entrar com um caractere 
// e obter o c�digo correspondente 
// ou entrar com o c�digo e obter o caractere correspondente.
// "O rato roeu a roda. A roda ficou feia". = --- / .-. .- - --- / .-. --- . ..- / .- / .-. --- -.. .- .-.-.- / .- / .-. --- -.. .- / ..-. .. -.-. --- ..- / ..-. . .. .- .-.-.- 
    local nI, nJ, cAux, cResultado, cOperacao
    local aMorse := {{ "A" , ".-"} , ;
    { "B" , "-..."} , ;
    { "C" , "-.-."} , ;
    { "D" , "-.."} , ;
    { "E" , "."} , ;
    { "F" , "..-."} , ;
    { "G" , "--."} , ;
    { "H" , "...."} , ;
    { "I" , ".."} , ;
    { "J" , ".---"} , ;
    { "K" , "-.-"} , ;
    { "L" , ".-.."} , ;
    { "M" , "--"} , ;
    { "N" , "-."} , ;
    { "O" , "---"} , ;
    { "P" , ".--."} , ;
    { "Q" , "--.-"} , ;
    { "R" , ".-."} , ;
    { "S" , "..."} , ;
    { "T" , "-"} , ;
    { "U" , "..-"} , ;
    { "V" , "...-"} , ;
    { "W" , ".--"} , ;
    { "X" , "-..-"} , ;
    { "Y" , "-.--"} , ;
    { "Z" , "--.."} , ;
    { "1" , ".----"} , ;
    { "2" , "..---"} , ;
    { "3" , "...--"} , ;
    { "4" , "....-"} , ;
    { "5" , "....."} , ;
    { "6" , "-...."} , ;
    { "7" , "--..."} , ;
    { "8" , "---.."} , ;
    { "9" , "----."} , ;
    { "0" , "-----"} , ;
    { "." , ".-.-.-"} , ;
    { "?" , "..--.."} , ;
    { "/" , "-..-."} , ;
    { "-" , "-....-"} , ;
    { "(" , "-.--."} , ;
    { ")" , "-.--.-"} , ;
    { " " , "/"}}
    QOUT("***************")
    QOUT("* Exercicio34 *")
    QOUT("Tradutor Codigo Morse:")

    While .T.
        QOUT("")
        QOUT("digite (ESC) para sair")
        QOUT("(1) Digitar a palavra")
        QOUT("(2) Digitar Codigo Morse")
        ACCEPT "Operacao  = " to cOperacao
        if cOperacao == "1"

            ACCEPT "Texto = " to cAux
            //cAux := "TIAGO"
            cAux := Upper(cAux)

            cResultado := " "
            for nJ := 1 to len(cAux)  // percorrer a palavra letra por letra
                for nI := 1 to len(aMorse) // procurar a letra no array
                    if aMorse[nI][1] == SubStr(cAux, nJ , 1)
                        // QOUT(SubStr(cAux, nJ , 1) + " = " + aMorse[nI][2]) // TESTE
                        cResultado += aMorse[nI][2] + "  " // concatenar para montar uma saida
                    endif
                next nI
            next nJ

            qout("Morse >> " + cResultado)

        elseif cOperacao == "2"

            ACCEPT "Digite o Codigo Morse = " to cAux
            for nI := 1 to len(aMorse) // procurar o codigo morse no array 
                if aMorse[nI][2] == cAux
                    qout(cAux + " >> '" + aMorse[nI][1] + "'" )
                endif
            next nI

        elseif upper(cOperacao) == "ESC"
            exit    
        endif

    enddo
    
    QOUT("***************")
    QOUT("")
    wait
Return nil
 

Function Exercicio35()
// .Ler tr�s vetores A, B e C com 10 elementos cada. 
// montar uma matriz M de 3 linhas por 10 colunas, 
// onde cada linha dever� receber os valores referentes a um dos vetores. 
// Apresentar a matriz resultante.
    local nI , aA := {} , aB := {} , aC := {}, aMatriz := {}
    QOUT("***************")
    QOUT("* Exercicio35 *")
    
    aA := fill_a_chr(aA , 10 , "U"  ) // um vetor de letras maiusculas
    aB := fill_a_chr(aB , 10 , "L"  ) // um vetor de letras minusculas
    for nI := 1 to 10                 // um vetor de numeros ( s� para diferenciar )
        aAdd(aC, (hb_RandomInt(1 , 9)))
    next

    aAdd(aMatriz , aA)
    aAdd(aMatriz , aB)
    aAdd(aMatriz , aC)

    for nI := 1 to len(aMatriz)
        print_array(aMatriz[nI])
    next nI
    
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio36()
// Criar uma matriz N de 10x3, 
// onde cada elementos ser� a soma do �ndice de sua coluna com o �ndice de sua linha. 
// Apresentar a matriz resultante
    local aM := {}
    local nI, nJ
    QOUT("***************")
    QOUT("* Exercicio36 *")

    aM := array(10)
    for nI := 1 to 10
        aM[nI] := array(3)
        for nJ := 1 to 3
            aM[nI][nJ] := nI + nJ
        next nJ
    next nI

    for nI := 1 to 10
        QOUT(hb_valtoexp(aM[nI]))
    next nI

    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio37()
    // 
    QOUT("***************")
    QOUT("* Exercicio37 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio38()
// Ler uma matriz A de 3 linhas e 3 colunas 
// Calcular e exibir uma matriz B de mesmo tamanho 
// sendo que a primeira linha de B receba a primeira coluna de A 
// a segunda linha de B receba a segunda coluna de A 
// e a terceira linha de B receba a terceira coluna de A 
// Apresentar a matriz resultante 
    local aA := {{"A","B","C"},{"D","E","F"},{"G","H","I"}}
    local aB := {array(3), array(3), array(3)}
    local nI , nJ
    QOUT("***************")
    QOUT("* Exercicio38 *")

    for nI := 1 to 3
        for nJ := 1 to 3
            aB[nI][nJ] := aA[nJ][nI]
        next nJ
    next nI

    // QOUT("")
    // QOUT(hb_valtoexp(aA[1]))
    // QOUT(hb_valtoexp(aA[2]))
    // QOUT(hb_valtoexp(aA[3]))
    
    QOUT(hb_valtoexp(aB[1]))
    QOUT(hb_valtoexp(aB[2]))
    QOUT(hb_valtoexp(aB[3]))
    
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio39()
// Dada uma matriz A de tamanho 3 x 3, 
// preenchida sequencialmente a partir de 0 at� 8. 
// Calcule a diferen�a entre a diagonal principal e secund�ria da matriz 
    local aA := {{0,1,2},{3,4,5},{6,7,8}}
    local nI , nJ, nDigP , nDigS , nDif
    QOUT("***************")
    QOUT("* Exercicio39 *")
    
    nDigP := aA[1][1] + aA[2][2] + aA[3][3] 
    nDigS := aA[1][3] + aA[2][2] + aA[3][1] 
    nDif := nDigP - nDigS

    QOUT(hb_valtoexp(aA[1]))
    QOUT(hb_valtoexp(aA[2]))
    QOUT(hb_valtoexp(aA[3]))
    
    QOUT("diagonal principal " + allTrim(str(nDigP)))
    QOUT("diagonal secundaria " + allTrim(str(nDigS)))
    QOUT("diferenca " + allTrim(str(nDif)))

    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio40()
// Carregar uma matriz de 5x5 com caracteres aleat�rios entre A e Z.
// Apresentar no final a string formada pelos caracteres da diagonal 
// principal dessa matriz
    local aM := {}
    local nI
    QOUT("***************")
    QOUT("* Exercicio40 *")

    aM := array(5)
    
    for nI := 1 to 5
        aM[nI] := fill_a_chr(aM[nI] , 5 , "U" , .F. )
    next nI

    QOUT("matriz")
    for nI := 1 to 5
        QOUT("[" + allTrim(str(nI)) + "][" + allTrim(str(nI)) + "] = " + aM[nI][nI] + " ")
    next nI

    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio41()
    //
    QOUT("***************")
    QOUT("* Exercicio41 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function Exercicio42()
// Ler o nome e 3 notas de 5 alunos, 
// calcular a m�dia de cada aluno
// (entre 2 das 3 notas pois a menor deve ser descartada). 
// Apresentar todas as notas e m�dias no final. 
// Permitir ordenar por ordem alfab�tica de nome e ordem decrescente de media final.
    QOUT("***************")
    QOUT("* Exercicio42 *")
    QOUT("")
    QOUT("") 
    QOUT("***************")
    QOUT("") 
    wait
Return nil


Function Exercicio43()
    //
    QOUT("***************")
    QOUT("* Exercicio43 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil










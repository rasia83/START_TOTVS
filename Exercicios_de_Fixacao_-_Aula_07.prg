// funcoes dda aula
SET PROCEDURE TO Exercicios_de_Fixacao_-_Aula_07_lib.prg

// lib para tratamento de entradas
SET PROCEDURE TO start_lib.prg

Function Main() /*

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
    Exercicio18()

    
    Exercicio19() // Ordena��o e pesquisa 
    Exercicio20() // refatorar 
    Exercicio21()
    Exercicio22()
    // Exercicio23() // TODO
    // Exercicio24() // DISPENSADO 
    // Exercicio25() // DISPENSADO 

    Exercicio26() // String
    Exercicio27()
    // Exercicio28() // DISPENSADO  bin�rio em decimal e um n�mero decimal em bin�rio.
    Exercicio29() // CPF
    Exercicio30() // - finalidade do trecho de c�digo
    // Exercicio31() // TODO
    Exercicio32()

    
    Exercicio33() // Tabela // mapa de troco. 
    Exercicio34() //  c�digo Morse.
    Exercicio35() 
    Exercicio36()  
    Exercicio37() // o formato das matrizes sugere que o titulo seria o produto delas
    Exercicio38() 
    Exercicio39() // diferen�a entre a diagonal principal e secund�ria da matriz 
    Exercicio40()
    Exercicio41() */
    // Exercicio42() // TODO    
    Exercicio43() 
    
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
    local nLetra := ""
    QOUT("***************")
    QOUT("* Exercicio20 *")    

    nLetra := inp_up_chr( "Informe uma letra: " )

    vetor_caracteres( nLetra )
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

    if nEntrada / 200 >= 1
        aTroco[1][2] := int(nEntrada / 200)
        nEntrada %= 200
    endif

    if nEntrada / 100 >= 1
        aTroco[2][2] := int(nEntrada / 100)
        nEntrada %= 100
    endif
    
    if nEntrada / 50 >= 1
        aTroco[3][2] := int(nEntrada / 50)
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
    local aM := {} , aN := {} , aR := {} , nI , nJ
    QOUT("***************")
    QOUT("* Exercicio37 *")

    // aM 10 * 3
    // aN 3 * 10
    // aR ??
    /* ******************************************** */
    aM := array(10)
    for nI := 1 to 10     
        aM[nI] := array(3)            
        for nJ := 1 to 3             
            aM[nI][nJ] := hb_RandomInt(1 , 9)
        next
    next
    
    QOUT("aM")
    for nI := 1 to 10
        //QOUT(hb_valtoexp(aM[nI]))
        print_array(aM[nI])
    next nI
    QOUT("")

    /* ******************************************** */
    aN := array(3)
    for nI := 1 to 3
        aN[nI] := array(10)            
        for nJ := 1 to 10
            aN[nI][nJ] := hb_RandomInt(1 , 9)
        next
    next
    
    QOUT("aN")
    for nI := 1 to 3
        //QOUT(hb_valtoexp(aN[nI]))
        print_array(aN[nI])
    next nI
    QOUT("")

    /* ******************************************** */
    aR := array(10)
    for nI := 1 to 10
        aR[nI] := array(10)            
        for nJ := 1 to 10          
            aR[nI][nJ] := calc_produto_matriz(nI , nJ , aM , aN ) 
        next
    next

    QOUT("aR = aM * aN")
    for nI := 1 to 10
        //QOUT(hb_valtoexp(aR[nI]))
        print_array(aR[nI])
    next nI

    QOUT("***************")
    QOUT("")
    wait
Return nil

Function calc_produto_matriz(nI , nJ , aM , aN ) 
    local nResult := 0 , nIaux , nJaux
    // aR[1][1] = aM linha 1  e aN linha 1
    // aR[1][2] = aM linha 1  e aN linha 2
    // aR[2][1] = aM linha 2  e aN linha 1
    // MULTIPLICAR POSI��O DE aM COM aN E SOMAR COM DEMAIS DA LINHA * COLUNA
    
    //QOUT(" aM[nI][1] * aN[1][nJ] + aM[nI][2] * aN[2][nJ] + aM[nI][3] * aN[3][nJ] ")
    //? STR(aM[nI][1]) + " * " + STR(aN[1][nJ]) + " + " + STR(aM[nI][2]) + " * " + STR(aN[2][nJ]) + " + " + STR(aM[nI][3]) + " * " + STR(aN[3][nJ]) 
    nResult := aM[nI][1] * aN[1][nJ] + aM[nI][2] * aN[2][nJ] + aM[nI][3] * aN[3][nJ] 
    //QOUT(STR(nResult))
return nResult


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
    
    QOUT("aB resultante")
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
    local Mat := {{"O" , "Q" , "*" , "I"} , ;
                  {"E" , "*" , "E" , "S"} , ;
                  {"R" , "E" , "U" , "T"} , ;
                  {"A" , "*" , "*" , "S"}}
    local i , j , Aux
    QOUT("***************")
    QOUT("* Exercicio41 *")
    QOUT("original")
    for i := 1 to 4
        QOUT(" " + hb_valtoexp(Mat[i]) )
    next i


    for i := 1 to 3
        for j := i + 1 to 4
            Aux := Mat[i][j]
            Mat[i][j] := Mat[j][i]
            Mat[j][i] := Aux
        next j
    next i

    Aux := Mat[1][1]
    Mat[1][1] := Mat[4][4]
    Mat[4][4] := Aux

    Aux := Mat[2][2]
    Mat[2][2] := Mat[3][3]
    Mat[3][3] := Aux
    
    QOUT("")
    QOUT("apos execucao")
    for i := 1 to 4
        QOUT(" " + hb_valtoexp(Mat[i]) )
    next i

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
local aAlunos := {}
// array alunos >> Nome 


// notas
// n1  n2  n3
//  if n1 > n2 .AND. n2 > n3
//     nMed := (n1 + n2) / 2
//  elseif n1 > n2 .AND. n2 < n3
//     nMed := (n1 + n3) / 2
//  elseif n1 < n2 .AND. n1 > n3
//     nMed := (n2 + n3) / 2
//  elseif n1 < n2 .AND. n1 < n3
//     nMed := (n2 + n3) / 2
// endif

    QOUT("***************")
    QOUT("* Exercicio42 *")
    QOUT("")
    QOUT("") 
    QOUT("***************")
    QOUT("") 
    wait
Return nil


Function Exercicio43()

// as cartas de um baralho ser�o apresentadas na tela 
// dispostas em 7 linhas e 3 colunas. 
// O programa ser� capaz de adivinhar uma carta selecionada pelo usu�rio, 
// que apenas indicar� em qual coluna a carta se encontra. 
// [Solicitar demonstra��o ao professor]. 
// Para implementar esse interessante jogo, implemente os seguintes passos:

//     a. Montar um vetor de 52 posi��es contendo todas as cartas de cada naipe do baralho. 
//     Dica: utilize uma string de 2 posi��es para representar cada carta. 
//     Exemplo: o rei de espadas seria �K� + #006 (caractere ASCII 6); 
//     o �s de copas seria �A� + #003; 
//     o 5 de ouros seria �5� + #004; 
//     a dama de paus seria �Q� + #005.

    // b. Embaralhar as cartas dentro desse vetor.

    // c. Montar um vetor de 21 posi��es 
    // contendo as 21 primeiras cartas do baralho j� embaralhado. 
    // Nesta m�gica apenas utilizaremos 21 cartas.

    // d. Montar uma matriz de 7 linhas por 3 colunas onde 
    // a primeira c�lula receber� a �ltima carta do vetor 
    // a segunda a pen�ltima e assim sucessivamente at� que a �ltima c�lula que se encontra
    // na 7� linha da 2� coluna receba a primeira carta do vetor de 21 cartas.

    // e. Apresentar a matriz na tela e 
    // solicitar que o usu�rio escolha uma carta e indique em qual coluna ela se encontra.

    // f. Preencher o vetor de 21 posi��es a partir das cartas da matriz 7 x 3 
    // sendo que as cartas da coluna informada pelo usu�rio 
    // dever�o ocupar as posi��es de 8 a 14 do vetor 
    // e as demais colunas as posi��es de 1 a 7 e 15 a 21 respectivamente.

    // g. Repetir os passos de �d� a �f� por mais 2 vezes sendo que o
    // usu�rio n�o escolhera uma nova carta, apenas indicar� em que
    // coluna est� a carta escolhida inicialmente.

    // h. Exibir na tela a 11� carta do vetor de 21 posi��es.

    local aBaralho := E43_baralho_completo()
    local aBaralho21 := array(21)
    local cCarta , nI , nJ , nAux
    local aBaralho7X3 := {}

    QOUT("***************")
    QOUT("* Exercicio43 *")

    QOUT("A) " + allTrim(str(LEN(aBaralho))) + " cartas")
    print_array(aBaralho)

    /* ******************************************** */

    for nI := 1 to 21
        cCarta := aBaralho[hb_RandomInt(1 , 52)]
        while AScan(aBaralho21, cCarta) != 0 
            cCarta := aBaralho[hb_RandomInt(1 , 52)]
        enddo
        aBaralho21[nI] := cCarta
    next
    QOUT("")
    QOUT("B) + C) " + allTrim(str(LEN(aBaralho21))) + " cartas embaralhadas")
    print_array(aBaralho21)

    /* ******************************************** */

    QOUT("")
    // d. Montar uma matriz de 7 linhas por 3 colunas onde 
    // a primeira c�lula receber� a �ltima carta do vetor 
    // a segunda a pen�ltima e assim sucessivamente 

    aBaralho7X3 := E43_Baralho7X3(aBaralho21)

    QOUT("D) uma matriz de 7 linhas por 3 colunas")
    QOUT("")
    for nI := 1 to 7
        print_array(aBaralho7X3[nI])
    next
    QOUT("(1)  (2)  (3) >> colunas")
    QOUT("")


    /* ******************************************** */
    QOUT("E) escolha 'uma carta' e indique a coluna")
    nAux := 0
    while nAux < 1 .OR. nAux > 3
        nAux := inp_num( "escolha uma coluna (1)(2)(3) " )
    enddo
    QOUT("...memorize a carta escolhida...")

    // f. Preencher o vetor de 21 posi��es a partir das cartas da matriz 7 x 3 
    // sendo que as cartas da coluna informada pelo usu�rio 
    // dever�o ocupar as posi��es de 8 a 14 do vetor 
    // e as demais colunas as posi��es de 1 a 7 e 15 a 21 respectivamente.

    aBaralho21 := E43_7X3_para_21(aBaralho7X3 , nAux)

    QOUT("F) a coluna selecionada devera ocupar as posi��es de 8 a 14 do vetor ")
    print_array(aBaralho21)

    QOUT("") 

    /* ******************************************** */
    QOUT("G) Repetir os passos de 'd' a 'f' por mais 2 vezes")
    QOUT("G) sendo que o usuario nao escolhera uma nova carta")
    // g. Repetir os passos de �d� a �f� por mais 2 vezes sendo que o
    // usu�rio n�o escolhera uma nova carta, apenas indicar� em que
    // coluna est� a carta escolhida inicialmente.

    QOUT("primeira repeticao")
    // "d"
    aBaralho7X3 := E43_Baralho7X3(aBaralho21)
    QOUT("G1-D) uma matriz de 7 linhas por 3 colunas")
    QOUT("")
    for nI := 1 to 7
        print_array(aBaralho7X3[nI])
    next
    QOUT("(1)  (2)  (3) >> colunas")
    QOUT("")

    // "e"    
    QOUT("G1-E) indique a coluna em que se encontra a carta memorizada")
    nAux := 0
    while nAux < 1 .OR. nAux > 3
        nAux := inp_num( "escolha uma coluna (1)(2)(3) " )
    enddo
    //QOUT("...memorize a carta escolhida...")

    // "f"  
    aBaralho21 := E43_7X3_para_21(aBaralho7X3 , nAux)
    QOUT("G1-F) a coluna selecionada devera ocupar as posi�oes de 8 a 14 do vetor ")
    print_array(aBaralho21)

    QOUT("segunda repeticao")
    // "d"
    aBaralho7X3 := E43_Baralho7X3(aBaralho21)
    QOUT("G2-D) uma matriz de 7 linhas por 3 colunas")
    QOUT("")
    for nI := 1 to 7
        print_array(aBaralho7X3[nI])
    next
    QOUT("(1)  (2)  (3) >> colunas")
    QOUT("")

    // "e"    
    QOUT("G2-E) indique a coluna em que se encontra a carta memorizada")
    nAux := 0
    while nAux < 1 .OR. nAux > 3
        nAux := inp_num( "escolha uma coluna (1)(2)(3) " )
    enddo
    //QOUT("...memorize a carta escolhida...")

    // "f"  
    aBaralho21 := E43_7X3_para_21(aBaralho7X3 , nAux)
    QOUT("G2-F) a coluna selecionada devera ocupar as posi�oes de 8 a 14 do vetor ")
    print_array(aBaralho21)

    /* ******************************************** */

    QOUT("")
    QOUT("")

    QOUT("a carta escolhida foi " + aBaralho21[11])

    QOUT("")
    QOUT("***************")
    QOUT("")
    wait
Return nil


Function E43_baralho_completo()
    local aBaralho := { "A"+chr(3) ,  "A"+chr(4) ,  "A"+chr(5) ,  "A"+chr(6) , ;
                        "2"+chr(3) ,  "2"+chr(4) ,  "2"+chr(5) ,  "2"+chr(6) , ;
                        "3"+chr(3) ,  "3"+chr(4) ,  "3"+chr(5) ,  "3"+chr(6) , ;
                        "4"+chr(3) ,  "4"+chr(4) ,  "4"+chr(5) ,  "4"+chr(6) , ;
                        "5"+chr(3) ,  "5"+chr(4) ,  "5"+chr(5) ,  "5"+chr(6) , ;
                        "6"+chr(3) ,  "6"+chr(4) ,  "6"+chr(5) ,  "6"+chr(6) , ;
                        "7"+chr(3) ,  "7"+chr(4) ,  "7"+chr(5) ,  "7"+chr(6) , ;
                        "8"+chr(3) ,  "8"+chr(4) ,  "8"+chr(5) ,  "8"+chr(6) , ;
                        "9"+chr(3) ,  "9"+chr(4) ,  "9"+chr(5) ,  "9"+chr(6) , ;
                       "10"+chr(3) , "10"+chr(4) , "10"+chr(5) , "10"+chr(6) , ;
                        "J"+chr(3) ,  "J"+chr(4) ,  "J"+chr(5) ,  "J"+chr(6) , ;
                        "Q"+chr(3) ,  "Q"+chr(4) ,  "Q"+chr(5) ,  "Q"+chr(6) , ;
                        "K"+chr(3) ,  "K"+chr(4) ,  "K"+chr(5) ,  "K"+chr(6) }

return aBaralho


Function E43_Baralho7X3(aBaralho21)
    local nI , nJ , nAux 
    local aBaralho7X3 := array(7)
    for nI := 1 to 7
        aBaralho7X3[nI] := array(3)
    next
    
    nAux := 21
    for nI := 1 to 7
        for nJ := 1 to 3
            aBaralho7X3[nI][nJ] := aBaralho21[nAux]
            nAux--
        next
    next
return aBaralho7X3

Function E43_7X3_para_21(aBaralho7X3 , nAux)
    local nI , aBaralho21 := array(21)
    //nAux 1-7  8-14  15-21
    // 1 =  2 -  1  -  3
    // 2 =  1 -  2  -  3 ( nao muda )
    // 3 =  1 -  3  -  2

    if nAux == 1 // trocar a primeira com a segunda coluna
        for nI := 1 to 7
            aBaralho21[ni] := aBaralho7X3[nI][2]
            aBaralho21[ni+7] := aBaralho7X3[nI][1]
            aBaralho21[ni+14] := aBaralho7X3[nI][3]
        next
    elseif nAux == 3 // trocar a terceira com a segunda coluna
        for nI := 1 to 7
            aBaralho21[ni] := aBaralho7X3[nI][1]
            aBaralho21[ni+7] := aBaralho7X3[nI][3]
            aBaralho21[ni+14] := aBaralho7X3[nI][2]
        next
    else
        for nI := 1 to 7 // mantem a sequencia das colunas 
            aBaralho21[ni] := aBaralho7X3[nI][1]
            aBaralho21[ni+7] := aBaralho7X3[nI][2]
            aBaralho21[ni+14] := aBaralho7X3[nI][3]
        next
    endif

return aBaralho21

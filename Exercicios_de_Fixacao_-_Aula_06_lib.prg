

// Exercicio02
Function calc_prestacao(nValor, nTaxa, nTempo )
Return nValor + ((nValor *  (nTaxa / 100)) * nTempo)


// Exercicio03
Function soma_naturais(nN)
    local nSoma := 0 , nI
    for nI := 1 to nN
        nSoma += nI
    next
Return nSoma


// Exercicio04
Function troca1(aValores)
    aAdd(aValores , aValores[2] )  // salvar uma copia de [2] em [3]
    aValores[2] := aValores[1] // clonar [1] em [2]
    aValores[1] := aValores[3] // copiar [3] em [1]
    aDel(aValores, 3) // apagar a auxiliar [3]
Return aValores

Function troca2(cA, cB) 
    // RECEBER POR PONTEIRO @
    local cC := cB
    cB := cA
    cA := cC
Return nil

// Exercicio05
Function quociente_divisao(nDividendo, nDivisor)
Return int(nDividendo / nDivisor)

Function resto_divisao(nDividendo, nDivisor)
Return int(nDividendo % nDivisor)


// Exercicio06
Function o_dobro_ou_nada(nNum)
Return nNum *= 2


// Exercicio07
Function POT(nBase, nExpoente)
Return int(nBase ^ nExpoente)


// Exercicio08
Function area(nL1, nL2)
Return int(nL1 * nL2)


// Exercicio09
// mostrar o sucessor e o antecessor de um n�mero qualquer informado pelo usu�rio. 
// Tanto o antecessor como o sucessor dever�o ser obtidos atrav�s de fun��es respectivas.
Function sucessor(nNum)
Return ++nNum

Function antecessor(nNum)
Return --nNum


// Exercicio12
//     � F�rmulas:
//     ? Juros simples: VF = VP ( 1 + i + n )
//     ? Juros compostos: VF = VP ( 1 + i )^n
//     ? Juros a partir do VF: J = VF - VP
// � Onde:
//     ? VF = Montante ou Valor Futuro
//     ? VP = Capital ou Valor Presente
//     ? J = Juros
//     ? i = taxa em decimal
//     ? n = prazo 
Function f_juros_simples(nValorP , nJur , nPrazo)
    local nValorF := nValorP + ( nValorP * ( nJur / 100 ) * nPrazo )
return nValorF

Function f_juros_composto(nValorP , nJur , nPrazo)
    local nValorF :=   nValorP  * ( 1 + ( nJur / 100 ) ) ^ nPrazo 
return nValorF

Function f_juros_valor_presente(nValorF , nJur , nPrazo)
    // formula parra commposto
    local nValorP := nValorF / (1 + (nJur/100))** nPrazo
return nValorP


// Exercicio15
Function ehPositivo(nValor)
    if nValor >= 0 
        Return .T.
    endif
Return .F.



// Exercicio16
//a. isLetra(c): informa se o caractere enviado � uma letra.
Function isLetra(cStr)
    local nI 
    if len(cStr) < 1
        return .F.
    endif
    for nI := 1 to len(cStr)
        if !IsAlpha(SubStr(cStr, nI , 1))
            return .F.
        endif
    next nI
return .T.

//b. isDigito(c): informa se o caractere enviado � um n�mero.
Function isDigito(nNum)
    local nI 
    if len(nNum) < 1
        return .F.
    endif
    for nI := 1 to len(nNum)
        if !IsDigit(SubStr(nNum, nI , 1))
            return .F.
        endif
    next nI
return .T.

//c. isSimbolo(c): informa se o caractere enviado � um s�mbolo.
// IF (ASC(cDig) >= 33 .AND. ASC(cCocDigisa)<= 47) .OR.(ASC(cDig) >= 58 .AND. ASC(cDig) <= 64) .OR. (ASC(cDig)>= 91 .AND. ASC(cDig) <= 96) .OR. (ASC(cDig) >= 123 .AND. ASC(cDig) <= 126)
Function isSimbolo(cDig)
    local nI , cAux
    if len(cDig) < 1
        return .F.
    endif
    for nI := 1 to len(cDig)
        cAux := SubStr(cDig, nI , 1)
        if !((ASC(cAux) >= 33 .AND. ASC(cAux)<= 47) .OR.(ASC(cAux) >= 58 .AND. ASC(cAux) <= 64) .OR. (ASC(cAux)>= 91 .AND. ASC(cAux) <= 96) .OR. (ASC(cAux) >= 123 .AND. ASC(cAux) <= 126))
            return .F.
        endif
    next nI
return .T.

//d. toLower(c): converte uma letra mai�scula em min�scula.
Function toLower(cChr)
return lower(cChr)

//e. cTroca(a, b): troca os valores entre as vari�veis a e b.
Function cTroca(cA, cB)
    troca2(@Ca, @cB)
Return nil


// Exercicio17
//a. iTroca(a, b): troca os valores entre as vari�veis a e b.
Function  iTroca(a, b)
    troca2(@a, @b) // haha
return nil

//b. isPar(x): informa se o inteiro enviado � um n�mero par.
Function  isPar(nValor)
    if (nValor % 2) == 0
        return .T.
    endif
return .F.

//c. isImPar(x): informa se o inteiro enviado � um n�mero �mpar.
Function  isImPar(nValor)
    if (nValor % 2) == 0
        return .F.
    endif
return .T.

//d. Inverte(x): retorna o n�mero com sinal invertido.
Function  Inverte(nx)
return (nx * -1)

//e. isDiv(a, b): retorna se a � divis�vel por b.
Function  isDiv(a, b)
return (a % b) == 0

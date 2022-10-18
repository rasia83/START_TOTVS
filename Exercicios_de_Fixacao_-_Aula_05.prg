

Function Main()

    QOUT(" !!! aviso !!! ")
    QOUT(" todos exercicios em que o valor apresentar casas decimais")
    QOUT(" o mesmo deve ser representado no padrao ammericano ")
    QOUT(" ultilizar . e nao , ")
    QOUT("")

    // Exercicio50()
    // wait 
    // Exercicio51()
    // wait 
    // Exercicio52()
    // Exercicio53()
    // Exercicio54()
    // Exercicio55()
    // Exercicio56()
    // Exercicio57()
    // Exercicio58()
    // Exercicio59()
    // Exercicio60()
    Exercicio61()
    // Exercicio62()
    // Exercicio63()
    // Exercicio64()
    // Exercicio65()
    // Exercicio66()
    // Exercicio67()
    // Exercicio68()
    // Exercicio69()
    // Exercicio70()
    // Exercicio71()
    // Exercicio72()
    // Exercicio73()
    // Exercicio74()
    // Exercicio75()
    // Exercicio76()
    // Exercicio77()
    // Exercicio78()
    // Exercicio79()
    // Exercicio80()
    // Exercicio81()
    // Exercicio82()
    // Exercicio83()
    
return NIL




Function Exercicio50()
    // exiba na tela todos os números naturais entre 0 e 100, em ordem crescente. 
    // Fazer 3 versões desta solução: 
    // uma utilizando laço com pré-teste (enquanto), 
    // outra usando laço com pós-teste (repita) 
    // e uma última usando laço finito (para).

    local cResultado := ""
    local nI := 0
    QOUT("***************")
    QOUT("* Exercicio50 *")
    while nI <= 100 
        cResultado += Alltrim(str(nI)) +" "
        if (nI % 20) == 0 .AND. nI != 0
            cResultado += CHR(10)
        endif
        nI++
    enddo 
    QOUT("while nI <= 100")
    QOUT(cResultado)

    
    cResultado := ""
    for nI := 1 to 100
        cResultado += Alltrim(str(nI)) +" "
        if (nI % 20) == 0 .AND. nI != 0
            cResultado += CHR(10)
        endif
    next nI
    QOUT("for nI := 1 to 100")
    QOUT(cResultado)
    

    cResultado := ""
    nI := 0
    while .T.
        cResultado += Alltrim(str(nI)) +" "
        if (nI % 20) == 0 .AND. nI != 0
            cResultado += CHR(10)
        endif
        if nI == 100
            exit
        endif
        nI++
    enddo 
    QOUT("while .T.")
    QOUT(cResultado)
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio51()
    local cResultado := ""
    local nI := 100
    QOUT("***************")
    QOUT("* Exercicio51 *")
    while nI >= 0 
        cResultado += Alltrim(str(nI)) + " "
        if (nI % 20) == 0 .AND. nI != 100
            cResultado += CHR(10)
        endif
        nI--
    enddo 
    QOUT("while nI >= 0")
    QOUT(cResultado)

    
    cResultado := ""
    for nI := 100 to 0 step -1
        cResultado += Alltrim(str(nI)) + " "
        if (nI % 20) == 0 .AND. nI != 100
            cResultado += CHR(10)
        endif
    next nI
    QOUT("for nI := 100 to 0 step -1")
    QOUT(cResultado)
    

    cResultado := ""
    nI := 100
    while .T.
        cResultado += Alltrim(str(nI)) +" "
        if (nI % 20) == 0 .AND. nI != 100
            cResultado += CHR(10)
        endif
        if nI == 0
            exit
        endif
        nI--
    enddo 
    QOUT("while .T.")
    QOUT(cResultado)
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio52()
    // e exiba na tela, automaticamente, 50 valores gerados aleatoriamente, entre 10 e 99
    Local nI       := 0
    Local aNumeros := {}
    QOUT("***************")
    QOUT("* Exercicio52 *")
    while nI < 50 
        // aAdd(aNumeros, Alltrim(str((int(Random()%89) + 10)))) 
        aAdd(aNumeros, Alltrim(str(HB_RandomInt(10,99))))  
        nI++
    enddo 
    QOUT("nI := 0  -- while nI < 50")
    QOUT(hb_valtoexp(aNumeros))
    QOUT("")

    aNumeros := {}
    for nI := 1 to 50
        // aAdd(aNumeros, Alltrim(str((int(Random()%89) + 10))))  
        aAdd(aNumeros, Alltrim(str(HB_RandomInt(10,99)))) 
    next nI
    QOUT("for nI := 1 to 50")
    QOUT(hb_valtoexp(aNumeros))
    QOUT("")
    
    aNumeros := {}
    nI := 1
    while .T.
        aAdd(aNumeros, Alltrim(str((int(Random()%89) + 10))))  
        //aAdd(aNumeros, Alltrim(str(HB_RandomInt(10,99)))) 
        if nI == 50
            exit
        endif
        nI++
    enddo 
    QOUT("while .T.")
    QOUT(hb_valtoexp(aNumeros))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio53()
// Os valores deverão ser gerados indefinidamente até que surja o valor 80
// que ao surgir não deve ser exibido na tela. 
    Local nI       := 0
    Local aNumeros := {}
    local nNum := 0
    QOUT("***************")
    QOUT("* Exercicio53 *")
    while .T.
        nNum := HB_RandomInt(10,99)
        if nNum == 80
            exit
        endif 
        aAdd(aNumeros, Alltrim(str(nNum)))  
    enddo 
    QOUT("while .T. ")
    QOUT(hb_valtoexp(aNumeros))
    QOUT("")

    aNumeros := {}
    for nI := 1 to 2
        nNum := HB_RandomInt(10,99)
        if nNum == 80
            exit
        endif 
        aAdd(aNumeros, Alltrim(str(nNum))) 
        nI := 1
    next nI
    QOUT("for nI := 1 to 2")
    QOUT(hb_valtoexp(aNumeros))
    QOUT("")
    
    QOUT("***************")
    QOUT("")
    
Return nil

Function Exercicio54()
    // ASCII (do 32 ao 126) 
    // formato “código – caractere”. Exemplo: “80 – P”
    local cASCII := ""
    local nI := 32
    QOUT("***************")
    QOUT("* Exercicio54 *")
    QOUT("while nI <= 126")
    while nI <= 126 
        cASCII := StrZero(nI,3) + " - " + CHR(nI) + "  ||  "
        cASCII += StrZero(nI+1,3) + " - " + CHR(nI+1) + "  ||  "
        cASCII += StrZero(nI+2,3) + " - " + CHR(nI+2) + "  ||  "
        cASCII += StrZero(nI+3,3) + " - " + CHR(nI+3) + "  ||  "
        cASCII += StrZero(nI+4,3) + " - " + CHR(nI+4) 
        QOUT(cASCII)
        nI += 5
    enddo 

    QOUT("")
    QOUT("for nI := 32 to 126 step 5")
    for nI := 32 to 126 step 5
        cASCII := StrZero(nI,3) + " - " + CHR(nI) + "  ||  "
        cASCII += StrZero(nI+1,3) + " - " + CHR(nI+1) + "  ||  "
        cASCII += StrZero(nI+2,3) + " - " + CHR(nI+2) + "  ||  "
        cASCII += StrZero(nI+3,3) + " - " + CHR(nI+3) + "  ||  "
        cASCII += StrZero(nI+4,3) + " - " + CHR(nI+4) 
        QOUT(cASCII)
    next nI 
    
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio55()
    local nI 
    local cResultado := ""
    QOUT("***************")
    QOUT("* Exercicio55 *")
    QOUT("multiplos de 3 existentes entre 1 e 100")
    for nI := 3 to 100 step 3
        cResultado += Alltrim(strZero(nI,2)) + " "
        if (nI % 30) == 0 .AND. nI != 100
            cResultado += CHR(10)
        endif
    next nI 
    QOUT(cResultado)
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio56()
    local nNumero, nLimite, nI
    local cResultado := ""
    QOUT("***************")
    QOUT("* Exercicio56 *")
    ACCEPT "Digite um numero: " to nNumero 
    nNumero := val(nNumero)
    ACCEPT "Digite um numero (limite): " to nLimite 
    nLimite := val(nLimite)

    QOUT("multiplos de " + Alltrim(str(nNumero)) + " existentes entre 1 e " + Alltrim(str(nLimite)))
    for nI := nNumero to nLimite step nNumero
        cResultado += Alltrim(str(nI)) 
        if  nI != nLimite
            cResultado += ", "
        endif
    next nI 
    QOUT(cResultado)

    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio57()
    // Elaborar um programa que gere, automaticamente, valores aleatórios, entre 0 e 99 
    // e exiba na tela apenas àqueles que são múltiplos de um número informado pelo usuário. 
    // A quantidade de valores a serem gerados, também deve ser informado pelo usuário. 
    // Fazer duas versões da solução utilizando diferentes estruturas de repetição, a sua escolha.
    Local nQtd , nEntrada , nRandon
    Local nI       := 0
    Local aNumeros := {}
    QOUT("***************")
    QOUT("* Exercicio57 *")
    ACCEPT "Digite um numero para a quantidade: " to nQtd 
    nQtd := val(nQtd)
    ACCEPT "Digite um numero referencia : " to nEntrada 
    nEntrada := val(nEntrada)
    while nI < nQtd 
        nRandon := HB_RandomInt(00,99)
        if nRandon % nEntrada == 0
            aAdd(aNumeros, Alltrim(str(nRandon)))  
        endif
        nI++
    enddo 
    QOUT("while nI < nQtd ")
    QOUT(hb_valtoexp(aNumeros))
    QOUT(Alltrim(STR(len(aNumeros))) + " de " + str(nQtd) + " sao multiplos de " + STR(nEntrada))

    QOUT("")
    aNumeros := {}
    for nI := 1 to nQtd 
        nRandon := HB_RandomInt(00,99)
        if nRandon % nEntrada == 0
            aAdd(aNumeros, Alltrim(str(nRandon)))  
        endif
    next nI  
    QOUT("for nI := 1 to nQtd ")
    QOUT(hb_valtoexp(aNumeros))
    QOUT(Alltrim(STR(len(aNumeros))) + " de " + str(nQtd) + " sao multiplos de " + STR(nEntrada))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio58()
    local nContagem := 0
    local cContagem := ""
    local nI 
    local nMax := 10
    QOUT("***************")
    QOUT("* Exercicio58 *")
    
    for nI := 0 to (nMax - 1)
        nContagem += nI
        cContagem += Alltrim(str(nI)) + " "
    next nI

    QOUT("soma dos "+ Alltrim(Str(nMax)) + " primeiros numeros naturais ")
    QOUT(cContagem +"e = " + Alltrim(Str(nContagem)))        

    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio59()
    local nContagem := 0
    local cContagem := ""
    local nI 
    local nMax := 10
    QOUT("***************")
    QOUT("* Exercicio59 *")
    
    for nI := 0 to (nMax - 1)
        if nI % 2 == 0
            nContagem += nI
            cContagem += Alltrim(str(nI)) + " "
        endif
    next nI

    QOUT("soma dos "+ Alltrim(Str(nMax)) + " primeiros numeros naturais pares")
    QOUT(cContagem +"e = " + Alltrim(Str(nContagem)))        

    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio60()
    local nContagem := 0
    local cContagem := ""
    local nI 
    local nMax 
    local cParOuImp
    QOUT("***************")
    QOUT("* Exercicio60 *")
    ACCEPT "Digite um numero para a quantidade de numeros: " to nMax 
    nMax := val(nMax)
    ACCEPT "Escolha (P)Par ou (I)Impar: " to cParOuImp 
    cParOuImp := upper(left(Alltrim(cParOuImp),1))
    
    for nI := 0 to (nMax - 1)
        if cParOuImp == "P" .AND. nI % 2 == 0
            nContagem += nI 
            cContagem += Alltrim(str(nI)) + " "
            
        elseif cParOuImp == "I" .AND. nI % 2 != 0
                nContagem += nI 
                cContagem += Alltrim(str(nI)) + " "
        endif
    next nI

    if cParOuImp == "P"
        cParOuImp := "Pares "
    elseif cParOuImp == "I" 
        cParOuImp := "Impares "
    endif
    QOUT("soma dos "+ Alltrim(Str(nMax)) + " primeiros numeros naturais " + cParOuImp)
    QOUT(cContagem +"e = " + Alltrim(Str(nContagem)))        

    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio61()
    Local nI       := 0
    Local cEntrada := ""
    Local nSoma    := 0
    QOUT("***************")
    QOUT("* Exercicio61 *")
    
    QOUT("while .T. ")
    while .T.
        ACCEPT "Digite um numero: " to cEntrada
        if IsDigit(cEntrada)
            if val(cEntrada) != 0
                nSoma += Val(cEntrada)
            else // = 0
                exit
            endif
        endif    
    enddo
    QOUT("Total = " + alltrim(str(nSoma)))
    QOUT("")

    nSoma    := 0
    cEntrada := "1" // deixar a variavel dif de 0 , mas ela sera alterada assim que digitar qualquer numero
    QOUT("while val(cEntrada) != 0 ")
    QOUT("Sem desvio incondicional ")
    while val(cEntrada) != 0
        ACCEPT "Digite um numero: " to cEntrada
        if IsDigit(cEntrada)
            nSoma += Val(cEntrada)
        endif    
    enddo
    QOUT("Total = " + alltrim(str(nSoma)))
    QOUT("")

    nSoma    := 0
    QOUT("for nI := 1 to 2 ")
    for nI := 1 to 2
        ACCEPT "Digite um numero: " to cEntrada
        if IsDigit(cEntrada)
            if val(cEntrada) != 0
                nSoma += Val(cEntrada)
            else // = 0
                exit
            endif
        endif        
        nI := 1
    next nI
    QOUT("Total = " + alltrim(str(nSoma)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio62()
    //
    QOUT("***************")
    QOUT("* Exercicio62 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio63()
    //
    QOUT("***************")
    QOUT("* Exercicio63 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio64()
    //
    QOUT("***************")
    QOUT("* Exercicio64 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio65()
// simule um cadastro de usuário e senha para um sistema qualquer. 
// O usuário informará um “username” e uma senha que deverá ser digitada duas vezes (confirmação de senha).
// Realizar as seguintes consistências: 
// a. o “username” deve possuir mais do que 5 caracteres. 
// b. a senha e a confirmação da senha devem ser idênticas. 
// c. a senha deve possuir ao menos 6 caracteres e deve conter
// obrigatoriamente: ao menos uma letra maiúscula, um dígito numérico e um símbolo.
    QOUT("***************")
    QOUT("* Exercicio65 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio66()
    //
    QOUT("***************")
    QOUT("* Exercicio66 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio67()
    //
    QOUT("***************")
    QOUT("* Exercicio67 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio68()
    //
    QOUT("***************")
    QOUT("* Exercicio68 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio69()
    //
    QOUT("***************")
    QOUT("* Exercicio69 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio70()
    //
    QOUT("***************")
    QOUT("* Exercicio70 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio71()
    //
    QOUT("***************")
    QOUT("* Exercicio71 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio72()
    //
    QOUT("***************")
    QOUT("* Exercicio72 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio73()
    //
    QOUT("***************")
    QOUT("* Exercicio73 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio74()
    //
    QOUT("***************")
    QOUT("* Exercicio74 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio75()
    //
    QOUT("***************")
    QOUT("* Exercicio75 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio76()
    //
    QOUT("***************")
    QOUT("* Exercicio76 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio77()
    //
    QOUT("***************")
    QOUT("* Exercicio77 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio78()
    //
    QOUT("***************")
    QOUT("* Exercicio78 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio79()
    //
    QOUT("***************")
    QOUT("* Exercicio79 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio80()
    //
    QOUT("***************")
    QOUT("* Exercicio80 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio81()
    //
    QOUT("***************")
    QOUT("* Exercicio81 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio82()
    //
    QOUT("***************")
    QOUT("* Exercicio82 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio83()
    //
    QOUT("***************")
    QOUT("* Exercicio83 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

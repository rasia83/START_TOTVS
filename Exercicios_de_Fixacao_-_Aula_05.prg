

Function Main()

    QOUT(" !!! aviso !!! ")
    QOUT(" todos exercicios em que o valor apresentar casas decimais")
    QOUT(" o mesmo deve ser representado no padrao ammericano ")
    QOUT(" ultilizar . e nao , ")
    QOUT("")

    Exercicio50()
    Exercicio51()
    Exercicio52()
    // Exercicio53()
    // Exercicio54()
    // Exercicio55()
    // Exercicio56()
    // Exercicio57()
    // Exercicio58()
    // Exercicio59()
    // Exercicio60()
    // Exercicio61()
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

    QOUT("")
    QOUT("")
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
    QOUT("")

    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio53()
    //
    QOUT("***************")
    QOUT("* Exercicio53 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio54()
    //
    QOUT("***************")
    QOUT("* Exercicio54 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio55()
    //
    QOUT("***************")
    QOUT("* Exercicio55 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio56()
    //
    QOUT("***************")
    QOUT("* Exercicio56 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio57()
    //
    QOUT("***************")
    QOUT("* Exercicio57 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio58()
    //
    QOUT("***************")
    QOUT("* Exercicio58 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio59()
    //
    QOUT("***************")
    QOUT("* Exercicio59 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio60()
    //
    QOUT("***************")
    QOUT("* Exercicio60 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio61()
    //
    QOUT("***************")
    QOUT("* Exercicio61 *")
    QOUT("")
    QOUT("")
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
    //
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

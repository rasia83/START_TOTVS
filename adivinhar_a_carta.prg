 
Function main()

    local aBaralho := E43_baralho_completo()
    local aBaralho21 := array(21)
    local cCarta , nI , nJ , nAux
    local aBaralho7X3 := {}

    QOUT("******************************")

    /* ******************************************** */

    for nI := 1 to 21
        cCarta := aBaralho[hb_RandomInt(1 , 52)]
        while AScan(aBaralho21, cCarta) != 0 
            cCarta := aBaralho[hb_RandomInt(1 , 52)]
        enddo
        aBaralho21[nI] := cCarta
    next

    /* ******************************************** */

    QOUT("")

    aBaralho7X3 := E43_Baralho7X3(aBaralho21)

    QOUT("")
    for nI := 1 to 7
        print_array(aBaralho7X3[nI])
    next
    QOUT("    (1)     (2)     (3)   >> colunas")
    QOUT("")


    /* ******************************************** */

    QOUT("Escolha 'uma carta' e indique a coluna")
    nAux := 0
    while nAux < 1 .OR. nAux > 3
        nAux := inp_num( "escolha uma coluna (1)(2)(3) " )
    enddo
    QOUT("...memorize a carta escolhida...")

    aBaralho21 := E43_7X3_para_21(aBaralho7X3 , nAux)

    QOUT("") 

    /* ******************************************** */

    aBaralho7X3 := E43_Baralho7X3(aBaralho21)
    QOUT("")
    for nI := 1 to 7
        print_array(aBaralho7X3[nI])
    next
    QOUT("    (1)     (2)     (3)  >> colunas")
    QOUT("")
   
    QOUT("Indique a coluna em que se encontra a carta memorizada")
    nAux := 0
    while nAux < 1 .OR. nAux > 3
        nAux := inp_num( "escolha uma coluna (1)(2)(3) " )
    enddo

    aBaralho21 := E43_7X3_para_21(aBaralho7X3 , nAux)
    
    aBaralho7X3 := E43_Baralho7X3(aBaralho21)
    
    QOUT("")
    for nI := 1 to 7
        print_array(aBaralho7X3[nI])
    next
    QOUT("    (1)     (2)     (3) >> colunas")
    QOUT("")

    QOUT("Indique a coluna em que se encontra a carta memorizada")
    nAux := 0
    while nAux < 1 .OR. nAux > 3
        nAux := inp_num( "escolha uma coluna (1)(2)(3) " )
    enddo
    
    aBaralho21 := E43_7X3_para_21(aBaralho7X3 , nAux)
    
    /* ******************************************** */

    QOUT("")
    QOUT("")

    QOUT("a carta escolhida foi " + aBaralho21[11])

    QOUT("")
    QOUT("******************************")
    QOUT("")
    wait
Return nil

/* ********************************************************************* */

Function E43_baralho_completo()
    local aBaralho := { " A"+chr(3) ,  " A"+chr(4) ,  " A"+chr(5) ,  " A"+chr(6) , ;
                        " 2"+chr(3) ,  " 2"+chr(4) ,  " 2"+chr(5) ,  " 2"+chr(6) , ;
                        " 3"+chr(3) ,  " 3"+chr(4) ,  " 3"+chr(5) ,  " 3"+chr(6) , ;
                        " 4"+chr(3) ,  " 4"+chr(4) ,  " 4"+chr(5) ,  " 4"+chr(6) , ;
                        " 5"+chr(3) ,  " 5"+chr(4) ,  " 5"+chr(5) ,  " 5"+chr(6) , ;
                        " 6"+chr(3) ,  " 6"+chr(4) ,  " 6"+chr(5) ,  " 6"+chr(6) , ;
                        " 7"+chr(3) ,  " 7"+chr(4) ,  " 7"+chr(5) ,  " 7"+chr(6) , ;
                        " 8"+chr(3) ,  " 8"+chr(4) ,  " 8"+chr(5) ,  " 8"+chr(6) , ;
                        " 9"+chr(3) ,  " 9"+chr(4) ,  " 9"+chr(5) ,  " 9"+chr(6) , ;
                        "10"+chr(3) ,  "10"+chr(4) ,  "10"+chr(5) ,  "10"+chr(6) , ;
                        " J"+chr(3) ,  " J"+chr(4) ,  " J"+chr(5) ,  " J"+chr(6) , ;
                        " Q"+chr(3) ,  " Q"+chr(4) ,  " Q"+chr(5) ,  " Q"+chr(6) , ;
                        " K"+chr(3) ,  " K"+chr(4) ,  " K"+chr(5) ,  " K"+chr(6) }

return aBaralho

/* ********************************************************************* */

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

/* ********************************************************************* */

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

/* ********************************************************************* */

Function print_array(aArray )
    local nI := 1
    local cOut := ""
 
    for nI := 1 to len(aArray)  // percorrer array
        
        if aArray[nI] = nil // se o campo estiver vazio ir para a proxima posição
            loop
        endif
        
        IF ValType( aArray[nI] )  != "N" // se o campo não for numerico adicionar a string 
            cOut += aArray[nI] 
        else  // se o campo  for numerico adicionar a string com allTrim(str())
            cOut += allTrim(str(aArray[nI]))
        endif
        
        if nI != len(aArray)  // adicionar " , " se não for o ultimo campo
            cOut += "  ,  " 
        endif
        
    next

   QOUT("   " + cOut)

Return nil

/* ********************************************************************* */

function inp_num( cMsg )
    local nNum , nI , bControle := .T.
    while bControle
        bControle := .F.
        ACCEPT cMsg TO nNum
        if len(nNum) < 1 // EM BRANCO, PEDIR ACCEPT NOVAMENTE 
            bControle := .T.
        endif
        if len(nNum) == 1 // ACEITAR SE PRIMEIRO DIGITO == "-"
            if !IsDigit(SubStr(nNum, 1 , 1)) .OR. SubStr(nNum, 1 , 1) == "-"
                bControle := .T.
                loop
            endif
        endif
        for nI := 2 to len(nNum) 
            if !IsDigit(SubStr(nNum, nI , 1))  .AND. !(SubStr(nNum, nI , 1) == ".")
                bControle := .T.
                loop
            endif
        next nI
    enddo
return val(nNum)

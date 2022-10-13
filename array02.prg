// REQUEST HB_GT_WIN_DEFAULT

Function Main()
    // Declarando variaveis
    Local nI       := 0
    Local aNumeros := {} 
    Local cEntrada := ""

    while cEntrada <> "F"
        ACCEPT "Digite um numero inteiro ou 'F' para finalizar, ou 'Z' para zerar, ou 'CE' para exluir o ultimo: " to cEntrada
        if IsAlpha(cEntrada)
            cEntrada := upper(cEntrada)
        ENDIF

        if cEntrada != "F" .and. cEntrada != "Z" .and. cEntrada != "CE"
            aAdd(aNumeros, Val(cEntrada))
        elseif cEntrada = "Z"
            aNumeros := {}
        elseif cEntrada = "CE"
            aDel(aNumeros, len(aNumeros))
        endif
    enddo

    for nI := 1 to len(aNumeros)
        //if IsDigit(aNumeros[nI])
            QOUT("Posicao [" + Alltrim(StrZero(nI,2)) + "] :" + Alltrim(Str(aNumeros[nI])))        
        //endif
    next nI

RETURN nil

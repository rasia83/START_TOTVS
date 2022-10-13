// slide  38 
 
Function Main()
    local nX, nR, nI, nJ

    ACCEPT "Digite um numero: " to nX
    nX := val(nX)
    
    if nX != 0
        QOUT("Tabuada do " + ALLtrim(str(nX))) 
        for nI := 1 to 10
            nR := nX * nI
            QOUT(ALLtrim(str(nX)) + " X " + Alltrim(Str(nI)) + " = " + Alltrim(Str(nR)))        
        next nI
    else
        for nJ := 1 to 10
            QOUT("Tabuada do " + ALLtrim(str(nJ))) 
            for nI := 1 to 10
                nR := nJ * nI
                QOUT(ALLtrim(str(nJ)) + " X " + Alltrim(Str(nI)) + " = " + Alltrim(Str(nR)))        
            next nI
        next nJ
    endif
        
RETURN nil

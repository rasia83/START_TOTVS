Function Main()
    local nPorcas := 0

    // receber o numero de porcas , testa se entre 4 e 8
    DO WHILE  ( nPorcas < 3 .or. nPorcas > 9 )
        ACCEPT "Digite o numero de porcas: " TO nPorcas
        nPorcas := Val(nPorcas)
    ENDDO

    // chamar a função para Soltar ou Apertar as porcas
    // passando a função e a quantidade de porcas
    Tira_Poe("S" , nPorcas)
    QOUT("trocar o pneu")
    Tira_Poe("A" , nPorcas)
    QOUT("ufa")
 
RETURN nil


Function Tira_Poe(cOper , nPorcas)
    local nContador := 1

    DO WHILE nContador <= nPorcas
        if cOper == "S" 
            QOUT("soltar uma porca")
        ELSE
            QOUT("aperte uma porca")
        ENDIF
        nContador++
    ENDDO

Return nil

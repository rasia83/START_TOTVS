
  
Function Main()

    local dAno // := Date()
    local nPreco := 0  // numero/valor
    local cNome := ""
    local cMsgDesc := ""
        
    ACCEPT "Digite o seu nome: " TO cNome
    ACCEPT "Digite a sua data de nascimento: " TO dAno
    ACCEPT "Digite o Preco do produto: " TO nPreco

    dAno := CtoD(dAno)
    nPreco := Val(nPreco)
    if (((Date() - dAno ) / 365) > 60) 
        nPreco = nPreco * 0.875
        cMsgDesc := "Voce recebeu um desconto"
    endif
   
    //QOUT("Preco:" + StrZero(nPreco , 6 , 2))
    QOUT(cNome + " nascido em " + Str( Year( dAno )) + " o preco final sera " + allTrim(str(round(nPreco,2)) + " " +cMsgDesc)
    /*
    QOUT("")
    QOUT( cNome )
    QOUT("Nascido em " + StrZero( Year( dAno ), 4 ))
    QOUT(cMsgDesc)
    QOUT("Preco:" + str(nPreco))
    QOUT("")
    */
    
Return nil

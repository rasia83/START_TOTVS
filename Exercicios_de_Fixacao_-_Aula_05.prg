

Function Main()

    QOUT(" !!! aviso !!! ")
    QOUT(" todos exercicios em que o valor apresentar casas decimais")
    QOUT(" o mesmo deve ser representado no padrao americano ")
    QOUT(" ultilizar . e nao , ")
    QOUT("")

    // Exercicio50()
    // Exercicio51()
    // Exercicio52()
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
    // Exercicio66() // REFAZER, calcular acumulando por meses
    // Exercicio67()
    // Exercicio68()
    // Exercicio69()
    // Exercicio70()
    // Exercicio71()
    // Exercicio72()
    // Exercicio73()
    Exercicio74()
    // Exercicio75() 
    // Exercicio76() // TODO
    // Exercicio77() 
    // Exercicio78()
    // Exercicio79() 
    // Exercicio80() // TODO
    // Exercicio81() // TODO
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
    QOUT(hb_ValToExp(aNumeros))
    QOUT("")

    aNumeros := {}
    for nI := 1 to 50
        // aAdd(aNumeros, Alltrim(str((int(Random()%89) + 10))))  
        aAdd(aNumeros, Alltrim(str(HB_RandomInt(10,99)))) 
    next nI
    QOUT("for nI := 1 to 50")
    QOUT(hb_ValToExp(aNumeros))
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
    QOUT(hb_ValToExp(aNumeros))
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
    QOUT(hb_ValToExp(aNumeros))
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
    QOUT(hb_ValToExp(aNumeros))
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
    QOUT(hb_ValToExp(aNumeros))
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
    QOUT(hb_ValToExp(aNumeros))
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
    local nCont, cChu, cFoi
    QOUT("***************")
    QOUT("* Exercicio62 *")
    
    for nCont:= 1 to 2
        ACCEPT "Digite uma letra ou sair para parar o programa: " to cChu
        cChu := UPPER(cChu)

        if cChu == "SAIR" 
            nCont := 2
        else 
            nCont := 1
            if Len(cChu) > 1
                QOUT( "insira apenas 1 letra")
                loop
            else
                if (cChu != cFoi )
                    QOUT("essa letra já foi informada anteriormente, tente outra letra")
                    loop
                else
                    cFoi += cChu
                end if
            end if
        end if
    next
    
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio63()
    local nN1, nN2, nN3, nN4, nMed, nExame
    local cSituacao := "reprovado"
    QOUT("***************")
    QOUT("* Exercicio63 *")
    while !IsDigit(nN1) .OR. val(nN1) < 0 .OR. val(nN1) > 10
        ACCEPT "Informe a primeira nota: " TO nN1
    enddo
    while !IsDigit(nN2) .OR. val(nN2) < 0 .OR. val(nN2) > 10
        ACCEPT "Informe a segunda nota: " TO nN2
    enddo
    while !IsDigit(nN3) .OR. val(nN3) < 0 .OR. val(nN3) > 10
        ACCEPT "Informe a terceira nota: " TO nN3
    enddo
    while !IsDigit(nN4) .OR. val(nN4) < 0 .OR. val(nN4) > 10
        ACCEPT "Informe a quarta nota: " TO nN4
    enddo
    nN1 := val(nN1)
    nN2 := val(nN2)
    nN3 := val(nN3)
    nN4 := val(nN4)
    nMed := ( nN1 + nN2 + nN3 + nN4 ) / 4
    if nMed >= 7
        cSituacao := "aprovado"
    else
        ACCEPT "Informe a nota do exame: " TO nExame
        nExame := val(nExame)
        nMed := ( nMed + nExame ) / 2
        if nMed >= 5
            cSituacao := "aprovado em exame"
        endif
    endif
    QOUT("Aluno " + cSituacao + " com media " + allTrim(str(round(nMed,2))) )
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio64()
    local cNome := "", cGenero
    QOUT("***************")
    QOUT("* Exercicio64 *")
    QOUT("Refactoring do 31")
    while cNome == ""
        ACCEPT "Informe o nome: " TO cNome
    enddo
    ACCEPT "Informe o genero (M/F): " TO cGenero
    cGenero := upper(left(cGenero, 1))
    if cGenero == "F" // .OR. cGenero == "f"
        QOUT("Ilma. Sra. " + cNome)
    elseif cGenero == "M" // .OR. cGenero == "m"
        QOUT("Ilmo. Sr" + cNome)
    endif
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
    local cUserName := "", cSenha := "", cSenha2 := "" 
    QOUT("***************")
    QOUT("* Exercicio65 *")
    while  .T.
        ACCEPT "Username: " TO cUserName
        if len(cUserName) < 6
            QOUT("Username deve possuir mais do que 5 caracteres")
        else
            exit
        endif
    enddo
    
    while .T. 
        ACCEPT "Senha: " TO cSenha
        if len(cSenha) < 6
            QOUT("Senha deve possuir mais do que 5 caracteres")
        elseif !TesteSenha(cSenha)
            QOUT("Senha deve possuir ao menos uma letra maiuscula, um digito numerico e um simbolo")
        else
            exit
        endif
    enddo
    
    while .T.
        ACCEPT "Repita a senha: " TO cSenha2
        if cSenha == cSenha2
            exit
        else
            QOUT("Confirmacao da senha diferente da senha")
        endif
    enddo

    QOUT("")
    QOUT("Usuario e senha cadastrado")
    QOUT("***************")
    QOUT("")
Return nil

static function TesteSenha(cSenha)
    local nI
    local lLetra := .F.
    local lDigito := .F.
    local lSimbolo := .F.
    
    for nI := 1 to len(cSenha)
        if isUpper(SubStr(cSenha, nI , 1))
            lLetra := .T.
            exit
        endif
    next nI
    
    for nI := 1 to len(cSenha)
        if IsDigit(SubStr(cSenha, nI , 1))
            lDigito := .T.
            exit
        endif
    next nI
    
    for nI := 1 to len(cSenha)
        if (asc(SubStr(cSenha, nI, 1)) >= 33 .and. asc(SubStr(cSenha, nI, 1)) <= 47) .or.(asc(SubStr(cSenha, nI, 1)) >=58 .and. asc(SubStr(cSenha, nI, 1)) <=64) .or. (asc(SubStr(cSenha, nI, 1)) >= 91 .and. asc(SubStr(cSenha, nI, 1)) <= 96) .or. (asc(SubStr(cSenha, nI, 1)) >= 123 .and. asc(SubStr(cSenha, nI, 1)) <= 126)
            lSimbolo := .T.
            exit
        endif
    next nI

    if lLetra .AND. lDigito .AND. lSimbolo
        return .T.
    endif
return .F.

Function Exercicio66()
    Local cOpcao   := ""
    Local nTaxa    := 0
    Local nProd    := 0
    QOUT("***************")
    QOUT("* Exercicio66 *")
    QOUT(" *** preciso refazer , nao havia entendido que a taxa e acumulativa *** ")

    While .T.
        QOUT("Selecione  tipo de contrato:")
        QOUT("(ESC) para sair")
        ACCEPT "(A)crescimo ou (D)ecrescimo: " to cOpcao
        cOpcao := UPPER(cOpcao)
        if cOpcao == "A"
            ACCEPT "Acrescimo (%): " to nTaxa
            ACCEPT "Valor do produto (R$): " to nProd
            nProd := (1 + (Val(ntaxa) / 100)) * Val(nProd)
        elseif cOpcao == "D"
            ACCEPT "Decrescimo (%): " to nTaxa
            ACCEPT "Valor do produto (R$): " to nProd
            nProd := (1 - (Val(ntaxa) / 100)) * Val(nProd)
        elseif cOpcao == "ESC"
            exit
        elseif cOpcao != "A" .or. cOpcao != "D" .or. cOpcao != "ESC"
            Qout("Opcao incorreta")
            Loop
        endif
        QOUT("Valor atualizado do produto: " + alltrim(str(nProd)))
        QOUT("")
    enddo
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio67()
    local cCartao := ""
    local nO := 0
    local nP := 0
    local nB := 0
    local nTotal := 0
    local bContinuar := .T. 
    QOUT("***************")
    QOUT("* Exercicio67 *")
    qout("Informar o cartao (O)uro, (P)rata, (B)ronze ou (F)im ")
    DO WHILE (bContinuar) // repetir até encontrar cartão F
        Accept "Cartao: " to cCartao
        cCartao := SubStr(alltrim(cCartao) , 1 , 1 )
            
        IF (cCartao == "F" .or. cCartao == "f") 
            bContinuar := .F. 
        ELSEIF (cCartao == "O" .or. cCartao == "o")
            nO := nO + 1
            nTotal := nTotal + 1
        ELSEIF (cCartao == "P" .or. cCartao == "p")
            nP := nP + 1
            nTotal := nTotal + 1
        ELSEIF (cCartao == "B" .or. cCartao == "b")
            nB := nB + 1
            nTotal := nTotal + 1
        // ELSE apenas repetir, pegar novo cartão
        ENDIF

    ENDDO
    // print result
    qout("")
    qout("Total de medalhas: ", alltrim(str(nTotal)))
    qout("Ouro:   ", alltrim(str(nO)))
    qout("Prata:  ", alltrim(str(nP)))
    qout("Bronze: ", alltrim(str(nB)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio68()
    local cNota := ""
    local nSomaTotal := 0
    local nTotalAlunos := 0
    local nMedia := 0
    local nMaiorNota := -1
    local nMenorNota := 9999
    QOUT("***************")
    QOUT("* Exercicio68 *")
    DO WHILE nTotalAlunos < 15 // repetir até RECEBER 15 NOTAS
        Accept "Informar nota: " to cNota
            
        IF cNota == "" 
            Loop
        ENDIF

        IF IsDigit(cNota)
            IF val(cNota) > nMaiorNota
                nMaiorNota := val(cNota)
            ENDIF
            
            IF val(cNota) < nMenorNota
                nMenorNota := val(cNota)
            ENDIF

            nSomaTotal := nSomaTotal + val(cNota)
            nTotalAlunos := nTotalAlunos + 1
        ENDIF
        
    ENDDO

    nMedia := nSomaTotal / nTotalAlunos
    
    // print result
    QOUT("")
    qout("Total de alunos: ", nTotalAlunos)
    qout("Media das notas: ", nMedia)
    qout("Maior nota: ", nMaiorNota)
    qout("Menor nota: ", nMenorNota)
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio69()
// Elaborar um programa que calcule e exiba as potências de 3 
// variando de 0 até 15, 
// O Pascal não possui uma função para cálculo de potência, 
// mas possui uma para cálculo de exponencial. 
// Desta forma através de propriedade matemática dos logaritmos, 
// você pode resolver cálculo de potência e até de raízes n ésimas da seguinte forma: 
// exp( expoente * ln(base));
    local nI 
    QOUT("***************")
    QOUT("* Exercicio69 *")
    QOUT("exiba as potencias de 3 variando de 0 até 15")
    for nI := 0 to 15
        QOUT("3 elevado a " + alltrim(strzero(nI,2)) + " = " + str(3 ** nI))
    next nI
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio70()
    local nI , nJ , nCalc
    QOUT("***************")
    QOUT("* Exercicio70 *")
    QOUT("exiba as potencias de 3 variando de 0 até 15 (sem a funcao) ")
    for nI := 0 to 15
        nCalc := 1
        for nJ := 1 to nI
            nCalc *= 3
            //QOUT(str(nI) + str(nJ) + str(nCalc))
        next nJ
        QOUT("3 elevado a " + alltrim(strzero(nI,2)) + " = " + str(nCalc))
    next nI
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio71()
    // dado um número inteiro positivo
    // calcule n e exiba o seu fatorial
    local nFatorial := 1
    local nNum := 0
    local cEntrada := "0"
    QOUT("***************")
    QOUT("* Exercicio71 *")
    QOUT("Fatorial")
    while !IsDigit(cEntrada) .OR. val(cEntrada) <= 0 
        ACCEPT "Informe um numero: " TO cEntrada
    enddo
    nNum := val(cEntrada)
    // nFatorial := Fact(nNum)
    if nNum > 1
        while nNum > 1
            nFatorial *= nNum
            nNum -= 1
        enddo
    endif 
    QOUT("Fatorial de " + cEntrada + "! = " + alltrim(str(nFatorial)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio72()
    local nNum
    local nA      := 0
    local nB      := 1
    local nC      := 0
    local nCont   := 1
    QOUT("***************")
    QOUT("* Exercicio72 *")
    QOUT("Fibonacci")
    
    while !IsDigit(nNum) .OR. val(nNum) <= 0 .OR. val(nNum) > 97
        ACCEPT "Informe a quantidade de numeros (1 - 97): " TO nNum
    enddo
    nNum := val(nNum)

    if nNum = 0
        QOUT(nA)
    elseif nNum = 1
        QOUT(nB)
    else
        QOUT()
        QOUT("A sequencia Fibonacci eh: ")
        QOUT()
        QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nB)))
        while (nCont < nNum)
            nC := nA + nB
            nA := nB
            nB := nC
                nCont++
            QOUT(StrZero(nCont,4) , ":" , AllTrim(str(nC)))
       enddo   
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio73()
    Local nCartao := ""
    Local nMaior := -999999999
    Local nMenor := 999999999
    local nSoma := 0
    local nAlunos := 0
    local nMedia := 0
    QOUT("***************")
    QOUT("* Exercicio73 *")
    while .T.
        ACCEPT "Informar a nota ou digite ESC para encerrar: " TO nCartao
        nCartao := UPPER(nCartao)
        if nCartao == "ESC" 
            exit
        elseif IsDigit(nCartao)
            if Val(nCartao) > nMaior
                nMaior := Val(nCartao)
            endif
            if Val(nCartao) < nMenor
                nMenor := Val(nCartao)
            endif
            nSoma += val(nCartao)
            nAlunos++
        else
            QOUT("valor invalido")
        endif
    enddo
    nMedia := nSoma / nAlunos

    QOUT("")
    QOUT("MAIOR NOTA:      " + AllTrim(str(nMaior)))
    QOUT("MENOR NOTA:      " + AllTrim(str(nMenor)))
    QOUT("TOTAL DE ALUNOS: " + AllTrim(str(nAlunos)))
    QOUT("MEDIA DAS NOTAS: " + AllTrim(str(nMedia)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio74()    
local nRandon, nValor, nTentativas := 0
    QOUT("***************")
    QOUT("* Exercicio74 *")
    nRandon := HB_RandomInt(0,100)
    //QOUT(STR(nRandon))
    while .T.
        ACCEPT "Informe um valor: " TO nValor
        nTentativas++
        if VAL(nValor) == nRandon
            QOUT("")
            QOUT("ACERTOU MISERAVI")
            if nTentativas <= 5
                QOUT("Voce e muito bom, acertou em " + AllTrim(str(nTentativas)) + " tentativas")
            elseif nTentativas <= 9
                QOUT("Voce e bom, acertou em " + AllTrim(str(nTentativas)) + " tentativas")
            elseif nTentativas <= 13
                QOUT("Voce e mediano, acertou em " + AllTrim(str(nTentativas)) + " tentativas")
            else
                QOUT("Voce e muito fraco, acertou em " + AllTrim(str(nTentativas)) + " tentativas")
            endif
            exit
        elseif VAL(nValor) > nRandon
            QOUT("Tente um numero menor")
        else
            QOUT("Tente um numero maior")
        endif
    enddo
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio75()
    local nSoma := 0, nI, nTrigo := 1
    QOUT("***************")
    QOUT("* Exercicio75 *")
    QOUT("O homem que calculava")
    for nI := 1 to 64
        nSoma += nTrigo
        nTrigo *= 2
    next nI
    // QOUT("O total de graos de trigo e = " + str(int(nSoma)))
    QOUT("O total de graos de trigo e = " + str(nSoma))
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
    local nArquivo := 0, nTotal := 0, nCapacidade := 1536
    QOUT("***************")
    QOUT("* Exercicio77 *")
 
    while .T.
        ACCEPT "Tamanho do arquivo (MB): " TO nArquivo
        if isDigit(nArquivo) 
            if ( val(nArquivo) + nTotal ) <= nCapacidade
                nTotal += val(nArquivo)
                QOUT("Total (MB): " + AllTrim(str(nTotal)))
                QOUT("")
            else
                QOUT("Arquivo de "+nArquivo+"MB nao foi adicionado, ")
                QOUT("estouro do limite " + AllTrim(str(nCapacidade)) + "MB")
                exit
            endif
        endif
    enddo
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio78()
    // Fazer um programa para determinar e exibir se um número informado é primo.
    local nNum, nI
    local cResultado := ""
    QOUT("***************")
    QOUT("* Exercicio78 *")
    QOUT("NUMERO PRIMO")
    
    while !IsDigit(nNum) .OR. val(nNum) <= 0 
        ACCEPT "Informe um numero: " TO nNum
    enddo
    nNum := val(nNum)

    for nI := 2 to (nNum - 1)
        if nNum % nI == 0
            cResultado := " nao"
            exit
        endif
    next nI
    
    QOUT(alltrim(str(nNum)) + cResultado + " e um numero primo")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio79()
    // Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 60
    local nPin 
    QOUT("***************")
    QOUT("* Exercicio79 *")
    QOUT("Jogo do 'pim'")
    while !IsDigit(nPin) .OR. val(nPin) <= 0 
        ACCEPT "Informe um numero PIM: " TO nPin
    enddo
    nPin := val(nPin)

    for nI := 1 to nTamanho
        if nI % nPin == 0
            QOUT("PIN")  
            Tone(1500, 10)
        else
            QOUT(Alltrim(str(nI)))
        endif
        //  Estabelecer um atraso a cada saída 
        // para que o jogador possa ira cantando juntamente com o programa
        WaitPeriod(80)
        while WaitPeriod()
        enddo
    next nI 
    QOUT("***************") 
    QOUT("")
Return nil

Function Exercicio80()
    // Considere dados referentes a altura e o sexo de 40 pessoas
    // a. A maior e a menor altura do grupo.
    // b. A média de altura das mulheres.
    // c. O número de homens.

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
    // Fazer um programa que leia 10 valores 
    // e apresente-os na ordem inversa em que foram digitados.
    local aValores := {}
    local aValoresInv := {}
    Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 10
    QOUT("***************")
    QOUT("* Exercicio82 *")
    for nI := 1 to nTamanho
        ACCEPT "Digite um numero: " to cEntrada   
        aAdd(aValores, Val(cEntrada))
    next nI
    aValores := aSort(aValores)
    for nI := len(aValores) to 1 step -1
        aAdd(aValoresInv, aValores[nI])
    next nI
    QOUT(hb_ValToExp(aValoresInv))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio83()
    // HB_RandomInt(0,100)
    local aValores := {}
    local aValoresInv := {}
    Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 10000
    QOUT("***************")
    QOUT("* Exercicio83 *")
    for nI := 1 to nTamanho
        //ACCEPT "Digite um numero: " to cEntrada   
        aAdd(aValores, HB_RandomInt(0,10000))
    next nI
    aValores := aSort(aValores)
    for nI := len(aValores) to 1 step -1
        aAdd(aValoresInv, aValores[nI])
    next nI
    QOUT(hb_ValToExp(aValoresInv))
    QOUT("***************")
    QOUT("")
Return nil


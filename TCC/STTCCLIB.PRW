// #include "protheus.ch"

// Biblioteca com as funções comuns às rotinas.



/* ************************************************************************************ */
                                                             
User Function TXTZZ1()
    local nHandle
    local cFile := 'STTCC-ZZ1.txt'
    local cNomeFor  := ""

    dbselectarea("ZZ1")
    ZZ1->(dbGOTOP())

    nHandle := FCreate(cFile)

    if nHandle == -1
        MsgStop("Falha ao criar arquivo ["+cFile+"]","FERROR "+cValToChar(fError()))
          Return
    elseif nHandle > 0
        FWrite(nHandle, Replicate("*", 154) + CRLF)
        FWrite(nHandle, "     RELATÓRIO ZZ1 - Controle de Fornecimento" + CRLF)
        FWrite(nHandle, Replicate("*", 154) + CRLF)
        Fwrite(nHandle, "|    COD | FORNEC | LOJA | NOME DO FORNECEDOR                       |" )
        Fwrite(nHandle, " DADOS DO CERTIFICADO           |" )
        Fwrite(nHandle, " VAL. CER | TOLERADO |     TOTAL OK |  TOTAL N. OK |" + CRLF)
        
        WHILE ZZ1->(!EOF()) 

            cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")               

            Fwrite(nHandle, "| " + ZZ1->ZZ1_CODIGO + " | ")
            Fwrite(nHandle, ZZ1->ZZ1_FORNEC + " | ")
            Fwrite(nHandle, "  " + ZZ1->ZZ1_LOJAFO + " | ")
            Fwrite(nHandle, LEFT(ALLTRIM(cNomeFor) , 40 ) + Replicate(" ", 40 - LEN(ALLTRIM(cNomeFor))) + " | ")
            Fwrite(nHandle, ALLTRIM(ZZ1->ZZ1_CERTIF) + Replicate(" ", 30 - LEN(ALLTRIM(ZZ1->ZZ1_CERTIF))) + " | ")
            Fwrite(nHandle, DTOC(ZZ1->ZZ1_VALCER) + " | "  )
            Fwrite(nHandle, Replicate(" ", 8 - LEN(ALLTRIM(STR(ZZ1->ZZ1_TOLERA)))) + ALLTRIM(STR(ZZ1->ZZ1_TOLERA)) + " | ")
            Fwrite(nHandle, Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ1->ZZ1_TOTOK)))) + ALLTRIM(STR(ZZ1->ZZ1_TOTOK)) + " | ")
            Fwrite(nHandle, Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ1->ZZ1_TOTNOK)))) + ALLTRIM(STR(ZZ1->ZZ1_TOTNOK)) + " | ")

            Fwrite(nHandle, CRLF) // "ENTER"
            ZZ1->(DBSKIP())

        end do
    Endif
    
    FClose(nHandle)
    ALERT("Arquivo gerado com sucesso")
    
Return Nil       

/* ************************************************************************************ */
                                                             
User Function CSVZZ1()
    local nHandle
    local cFile := 'STTCC-ZZ1.CSV'
    local cNomeFor  := ""

    dbselectarea("ZZ1")
    ZZ1->(dbGOTOP())

    nHandle := FCreate(cFile)

    if nHandle == -1
        MsgStop("Falha ao criar arquivo ["+cFile+"]","FERROR "+cValToChar(fError()))
          Return
    elseif nHandle > 0

        Fwrite(nHandle, "COD;FORNEC;LOJA;NOME DO FORNECEDOR;DADOS DO CERTIFICADO;VAL. CER;TOLERADO;TOTAL OK;TOTAL N. OK" + CRLF)
        
        WHILE ZZ1->(!EOF()) 

            cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")               

            Fwrite(nHandle, ZZ1->ZZ1_CODIGO + ";")
            Fwrite(nHandle, ZZ1->ZZ1_FORNEC + ";")
            Fwrite(nHandle, ZZ1->ZZ1_LOJAFO + ";")
            Fwrite(nHandle, LEFT(ALLTRIM(cNomeFor) , 40 ) + ";")
            Fwrite(nHandle, ALLTRIM(ZZ1->ZZ1_CERTIF) + ";")
            Fwrite(nHandle, DTOC(ZZ1->ZZ1_VALCER) + ";"  )
            Fwrite(nHandle, ALLTRIM(STR(ZZ1->ZZ1_TOLERA)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ1->ZZ1_TOTOK)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ1->ZZ1_TOTNOK)) )

            Fwrite(nHandle, CRLF) // "ENTER"
            ZZ1->(DBSKIP())

        end do
    Endif
    
    FClose(nHandle)
    ALERT("Arquivo gerado com sucesso")
    
Return Nil       


/* ************************************************************************************ */
                                                             
User Function TXTZZ2()
    local nHandle
    local cFile := 'STTCC-ZZ2.txt'
    local cNomeFor  := ""

    dbselectarea("ZZ2")
    ZZ2->(dbGOTOP())

    nHandle := FCreate(cFile)

    if nHandle == -1
        MsgStop("Falha ao criar arquivo ["+cFile+"]","FERROR "+cValToChar(fError()))
          Return
    elseif nHandle > 0
        FWrite(nHandle, Replicate("*", 154) + CRLF)
        FWrite(nHandle, "     RELATÓRIO ZZ1 - Controle de Fornecimento" + CRLF)
        FWrite(nHandle, Replicate("*", 154) + CRLF)
        Fwrite(nHandle, "|    COD | FORNEC | LOJA | NOME DO FORNECEDOR                       |" )
        Fwrite(nHandle, " DADOS DO CERTIFICADO           |" )
        Fwrite(nHandle, " VAL. CER | TOLERADO |     TOTAL OK |  TOTAL N. OK |" + CRLF)
        
        WHILE ZZ1->(!EOF()) 

            cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")               

            Fwrite(nHandle, "| " + ZZ2->ZZ2_CODIGO + " | ")
            Fwrite(nHandle, ZZ1->ZZ1_FORNEC + " | ")
            Fwrite(nHandle, "  " + ZZ1->ZZ1_LOJAFO + " | ")
            Fwrite(nHandle, LEFT(ALLTRIM(cNomeFor) , 40 ) + Replicate(" ", 40 - LEN(ALLTRIM(cNomeFor))) + " | ")
            Fwrite(nHandle, ALLTRIM(ZZ1->ZZ1_CERTIF) + Replicate(" ", 30 - LEN(ALLTRIM(ZZ1->ZZ1_CERTIF))) + " | ")
            Fwrite(nHandle, DTOC(ZZ1->ZZ1_VALCER) + " | "  )
            Fwrite(nHandle, Replicate(" ", 8 - LEN(ALLTRIM(STR(ZZ1->ZZ1_TOLERA)))) + ALLTRIM(STR(ZZ1->ZZ1_TOLERA)) + " | ")
            Fwrite(nHandle, Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ1->ZZ1_TOTOK)))) + ALLTRIM(STR(ZZ1->ZZ1_TOTOK)) + " | ")
            Fwrite(nHandle, Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ1->ZZ1_TOTNOK)))) + ALLTRIM(STR(ZZ1->ZZ1_TOTNOK)) + " | ")

            Fwrite(nHandle, CRLF) // "ENTER"
            ZZ2->(DBSKIP())

        end do
    Endif
    
    FClose(nHandle)
    ALERT("Arquivo gerado com sucesso")
    
Return Nil       

/* ************************************************************************************ */
                                                             
User Function CSVZZ2()
    local nHandle
    local cFile := 'STTCC-ZZ2.CSV'
    local cNomeFor  := ""

    dbselectarea("ZZ2")
    ZZ2->(dbGOTOP())

    nHandle := FCreate(cFile)

    if nHandle == -1
        MsgStop("Falha ao criar arquivo ["+cFile+"]","FERROR "+cValToChar(fError()))
          Return
    elseif nHandle > 0

        Fwrite(nHandle, "COD;FORNEC;LOJA;NOME DO FORNECEDOR;DADOS DO CERTIFICADO;VAL. CER;TOLERADO;TOTAL OK;TOTAL N. OK" + CRLF)
        
        WHILE ZZ2->(!EOF()) 

            cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")               

            Fwrite(nHandle, ZZ2->ZZ1_CODIGO + ";")
            Fwrite(nHandle, ZZ1->ZZ1_FORNEC + ";")
            Fwrite(nHandle, ZZ1->ZZ1_LOJAFO + ";")
            Fwrite(nHandle, LEFT(ALLTRIM(cNomeFor) , 40 ) + ";")
            Fwrite(nHandle, ALLTRIM(ZZ1->ZZ1_CERTIF) + ";")
            Fwrite(nHandle, DTOC(ZZ1->ZZ1_VALCER) + ";"  )
            Fwrite(nHandle, ALLTRIM(STR(ZZ1->ZZ1_TOLERA)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ1->ZZ1_TOTOK)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ1->ZZ1_TOTNOK)) )

            Fwrite(nHandle, CRLF) // "ENTER"
            ZZ1->(DBSKIP())

        end do
    Endif
    
    FClose(nHandle)
    ALERT("Arquivo gerado com sucesso")
    
Return Nil       



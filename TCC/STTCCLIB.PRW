// #include "protheus.ch"

// Biblioteca com as funções comuns às rotinas.



/* ************************************************************************************ */
// n) Criar uma rotina para exportar um arquivo TXT com o cabeçalho e todas as colunas para tabela ZZ1;
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

        Fwrite(nHandle, "ZZ1_CODIGO;ZZ1_FORNEC;ZZ1_LOJAFO;ZZ1_NOMEFO;ZZ1_CERTIF;ZZ1_VALCER;ZZ1_TOLERA;ZZ1_TOTOK;ZZ1_TOTNOK" + CRLF)
        
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
// o) Criar uma rotina para exportar um arquivo TXT com o cabeçalho e todas as colunas para tabela ZZ2;
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
        FWrite(nHandle, Replicate("*", 185) + CRLF)
        FWrite(nHandle, "     RELATÓRIO ZZ2 - Ocorrências do Fornecedor" + CRLF)
        FWrite(nHandle, Replicate("*", 185) + CRLF)
        Fwrite(nHandle, "| CONTROLE | FORNEC | LOJA | NOME DO FORNECEDOR                       |" )
        Fwrite(nHandle, " DATA OCORR | HORA  | PRODUTO         |       QTD OK |    QTD N. OK |" )
        Fwrite(nHandle, "   VALOR UNIT |     TOTAL OK |  TOTAL N. OK |" + CRLF)

        // Fwrite(nHandle, "CONTROLE;COD FORNEC;LOJA FORNEC;NOME DO FORNECEDOR;DATA OCORR;HORA;PRODUTO;QTDE OK;QTDE N. OK;VALOR UNIT;TOTAL OK;TOTAL N. OK" + CRLF)
                
        WHILE ZZ2->(!EOF()) 
        

            cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO,"A2_NOME")               

            Fwrite(nHandle, "|   " + ZZ2->ZZ2_CONFOR )
            Fwrite(nHandle, " | " + ZZ2->ZZ2_FORNEC )
            Fwrite(nHandle, " |   " + ZZ2->ZZ2_LOJAFO )
            Fwrite(nHandle, " | " + LEFT(ALLTRIM(cNomeFor) , 40 ) + Replicate(" ", 40 - LEN(ALLTRIM(cNomeFor))) )
            Fwrite(nHandle, " |   " + DTOC(ZZ2->ZZ2_DATA) )
            Fwrite(nHandle, " | " + ZZ2->ZZ2_HORA )
            Fwrite(nHandle, " | " + ZZ2->ZZ2_CODPRO )
            Fwrite(nHandle, " | " + Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_QTDOK)))) + ALLTRIM(STR(ZZ2->ZZ2_QTDOK)) )
            Fwrite(nHandle, " | " + Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_QTDNOK)))) + ALLTRIM(STR(ZZ2->ZZ2_QTDNOK)) )
            Fwrite(nHandle, " | " + Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_VLRUNI)))) + ALLTRIM(STR(ZZ2->ZZ2_VLRUNI)) )
            Fwrite(nHandle, " | " + Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_TOTOK)))) + ALLTRIM(STR(ZZ2->ZZ2_TOTOK)) )
            Fwrite(nHandle, " | " + Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_TOTNOK)))) + ALLTRIM(STR(ZZ2->ZZ2_TOTNOK)) )

            Fwrite(nHandle, " |" + CRLF) // "ENTER"
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

        Fwrite(nHandle, "ZZ2_CONFOR;ZZ2_FORNEC;ZZ2_LOJAFO;ZZ2_NOMEFO;ZZ2_DATA;ZZ2_HORA;ZZ2_CODPRO;ZZ2_QTDOK;ZZ2_QTDNOK;ZZ2_VLRUNI;ZZ2_TOTOK;ZZ2_TOTNOK" + CRLF)
        
        WHILE ZZ2->(!EOF()) 

            cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO,"A2_NOME")               

            Fwrite(nHandle, ZZ2->ZZ2_CONFOR + ";")
            Fwrite(nHandle, ZZ2->ZZ2_FORNEC + ";")
            Fwrite(nHandle, ZZ2->ZZ2_LOJAFO + ";")
            Fwrite(nHandle, LEFT(ALLTRIM(cNomeFor) , 40 ) + ";")
            Fwrite(nHandle, DTOC(ZZ2->ZZ2_DATA) + ";"  )
            Fwrite(nHandle, ZZ2->ZZ2_HORA + ";")
            Fwrite(nHandle, ZZ2->ZZ2_CODPRO + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ2->ZZ2_QTDOK)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ2->ZZ2_QTDNOK)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ2->ZZ2_VLRUNI)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ2->ZZ2_TOTOK)) + ";")
            Fwrite(nHandle, ALLTRIM(STR(ZZ2->ZZ2_TOTNOK)) )

            Fwrite(nHandle, CRLF) // "ENTER"
            ZZ2->(DBSKIP())

        end do
    Endif
    
    FClose(nHandle)
    ALERT("Arquivo gerado com sucesso")
    
Return Nil       



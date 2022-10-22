#include "fileio.ch"

Function Main()

    local nHandle   := nil
    local nHndlRead   := nil
    Local nI       := 0
    Local cEntrada := ""
    Local nSoma    := 0
    local nAsc      := 0
    local cOpcao    := ""
    local cLinha    := ""
    local cBuffer   := Space(1)

    ACCEPT "Deseja retomar o valor calculado (S/N): " to cOpcao
    cOpcao := UPPER(cOpcao)
    if cOpcao == "S"
        nHndlRead := FOpen("aula_arquivo_maquina_de_soma.txt", FC_NORMAL)

        if nHndlRead < 0
            qOut("Erro: ", nHndlRead)
        endif

        while len(cBuffer) > 0
            cBuffer := FReadStr( nHndlRead, 1 )
            nAsc := Asc(cBuffer)
            if nAsc <> 13 .and. nAsc <> 10
                cLinha += cBuffer
            endif

            
            
            if ((nAsc == 10 .or. nAsc == 13) .and. len(cLinha) > 0 ) .or. (len(cBuffer) == 0 .and. len(cLinha) > 0)
                nSoma := val(cLinha)
                cLinha := ""
            endif
        enddo
        FClose(nHndlRead)
    endif

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
    
    IF (nHandle := FCreate("aula_arquivo_maquina_de_soma.txt", FC_NORMAL)) == -1
        ? "O arquivo nao pode ser criado:", FError()
        BREAK
    ELSE
        FWrite(nHandle,  alltrim(str(nSoma)) + chr(13))
        FClose(nHandle)
    ENDIF

return nil

#include "fileio.ch"

Function Main()

    local nHndlRead := nil
    local cBuffer   := Space(1)
    local nI        := 0
    local nAsc      := 0
    local cLinha    := ""
    local aLinhas   := {}

    nHndlRead := FOpen("arquivo_teste.txt", FC_NORMAL)

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
            aAdd(aLinhas, cLinha)
            cLinha := ""
        endif
    enddo

    for nI := 1 to len(aLinhas)
        qOut(StrZero(nI,3), aLinhas[nI])
    next nI

    fClose(nHndlRead)

    qout()

return nil
//REQUEST HB_GT_WIN_DEFAULT

#include "fileio.ch"

function Main()
    local aLinhas := {}
    local cNome := "aula_arquivo2.txt"
    aLinhas := ler_arquivo(cNome)
    cNome := "aula_arquivo2_alterado.txt"
    gravar_arquivo(cNome,aLinhas)
return nil



function ler_arquivo(cNome)
    local nHandle   := FOpen( cNome , FC_NORMAL)
    local cBuffer := Space(1)
    local cLinha := ""
    local aLinhas := {}
    local nI

    while len(cBuffer) > 0
        cBuffer := FReadStr( nHandle, 1 )
        
        if Asc(cBuffer) != 13 .AND. Asc(cBuffer) != 10
            cLinha += Upper(cBuffer)
        endif

        if Asc(cBuffer) == 13 .OR. Asc(cBuffer) == 10 .OR. LEN(cBuffer) == 0 
            if len(cLinha) > 1
                aAdd(aLinhas , cLinha)
            endif
            cLinha := ""
        endif
    enddo

    FClose( nHandle )

    for nI := 1 to len(aLinhas)
        QOUT(aLinhas[nI])
    next nI

return aLinhas


function gravar_arquivo(cNome,aLinhas)
    local nHandle   := nil
    local nI

    IF (nHandle := FCreate(cNome, FC_NORMAL)) == -1
        ? "O arquivo nao pode ser criado:", FError()
        BREAK
     ELSE
     
        for nI := 1 to len(aLinhas)  
            FWrite(nHandle, aLinhas[nI] + chr(13))
        next nI

        FClose(nHandle)
     ENDIF
return nil

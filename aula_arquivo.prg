#include "fileio.ch"

function Main()
    local cNome := "Arquivo_aula_arquivo2.txt"
    apagar_arquivo(cNome)
    wait
    gravar_arquivo(cNome)
    wait
    ler_arquivo(cNome)

return nil

function gravar_arquivo(cNome)
    local nHandle   := nil
    local nI, cEntrada

    IF (nHandle := FCreate(cNome, FC_NORMAL)) == -1
        ? "O arquivo não pode ser criado:", FError()
        BREAK
    ELSE
        for nI := 1 to 3
            ACCEPT "Digite o nome: " to cEntrada 
            cEntrada += CHR(13)
            FWrite(nHandle, cEntrada)
        next nI
        FClose(nHandle)
    ENDIF

return nil

function apagar_arquivo(cNome)
    fErase(cNome)
return nil

function ler_arquivo(cNome)
    local nHandle   := nil
    local cBuffer := FReadStr( nHandle , 1 )
    IF ( nHandle := FOpen( cNome ) ) == F_ERROR
        FRead( nHandle, @cBuffer, 500 )
        ? cbuffer
    ENDIF

    FClose( nHandle )

return nil

#include "fileio.ch"

function Main()
    local nHandleArq   := 0
    local nI, cEntrada

    nHandleArq := FCreate("Arquivo_aula_arquivo.txt", FC_NORMAL)
        
    for nI := 1 to 10
        ACCEPT "Digite o nome: " to cEntrada 
        cEntrada += CHR(13)
        FWrite(nHandleArq, cEntrada)
    next nI

    FClose(nHandleArq)

return nil

/*
    IF (nHandleArq := FCreate("Arquivo_aula_arquivo2.txt", FC_NORMAL)) == -1
        ? "O arquivo não pode ser criado:", FError()
        BREAK
    ELSE
        for nI := 1 to 10
            ACCEPT "Digite o nome: " to cEntrada 
            cEntrada += CHR(13)
            FWrite(nHandleArq, cEntrada)
        next nI
        FClose(nHandleArq)
    ENDIF
*/
//  fErase("arquivo_teste.txt")

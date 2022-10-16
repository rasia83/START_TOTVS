
// REQUEST HB_GT_WIN_DEFAULT  // usar para debug
#define empresa "TOTVS IP/TM"

function Main()

    Local nNumero := 0                  // Numerico
    local nI
    Local aNotas  := { 4, 9, 10, 6.8 }  // Array
    Local lLogico := .T.                // Logico (.T. / .F.)
    Local cNome   := "Totvers"          // Caracter
    Local dHoje   := CtoD("01/01/01")   // Data
    Local bBloco  := { |x| x := x+1 }   // Bloco de Código

    QOUT("Ola " + cNome + " bem vindo a " + empresa )
    QOUT( upper(cNome) )
    QOUT( lower(cNome) )
    QOUT( left(cNome , 3) )

    while nNumero == 0 // enquanto nNumero for = a 0 repita
        // exit => sai do for/while
        // loop => vai para o inicio da proxima interação do for/while
        ACCEPT "Digite um numero: " to nNumero 
        if ISDIGIT( nNumero )
            nNumero := val(nNumero)
        // elseif
        else
            nNumero := 0
        endif
    enddo


    for nI := 1 to len(aNotas)  // step 2 ( pode se adicionar step caso a interação seja diferente de +1 )
        // exit => sai do for/while
        // loop => vai para o inicio da proxima interação do for/while
        QOUT("Posicao [" + Alltrim(StrZero(nI,2)) + "] :" + Alltrim(Str(aNotas[nI])))        
    next nI

    //chamada de função 
    Tira_Poe("S" , 4)

return nil



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

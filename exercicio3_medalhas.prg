/*/{Protheus.doc} main
    @type  Function
    @author Tiago
    @since 07/10/2022
    @version 0.1
    /*/

/*/
E1: Grave 0 em E15
E2 pegue um cartão e copie seu conteudo em E16
E3 Se E16 = "F" Vá para E8
E4 Se E16 = "O"  E15 = E15 + 1
E5 Se E16 = "P"  E14 = E14 + 1
E6 Se E16 = "B"  E13 = E13 + 1
E7 Volte para E1
E8 Imprime "Ouro: " + E15 
E9 Imprime "Prata: " + E14 
E10 Imprime "Bronze: " + E13 
E11 Pare
/*/

Function main()
    local cCartao := ""
    local nO := 0
    local nP := 0
    local nB := 0
    local nTotal := 0
    local bContinuar := .T. 

    DO WHILE (bContinuar) // repetir até encontrar cartão F
        Accept "Informar cartao: " to cCartao
            
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
    qout("Total de medalhas: ", nTotal)
    qout("Ouro: ", nO)
    qout("Prata: ", nP)
    qout("Bronze: ", nB)
    
Return nil

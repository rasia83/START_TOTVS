Function Main()

    // Aqui a rotina faz a declaracao das variaveis
    Local cCartao := ""
    Local nTotal := 0
    // local cContinuar := .T.

    BEGIN SEQUENCE 
        DO WHILE (.T.) // looping que irá até aparecer a medalha F
            ACCEPT "Informar o tipo de medalha: " TO cCartao

            IF (cCartao == "F" .or. cCartao == "f")
                BREAK
                // cContinuar := .F.
            ELSE
                nTotal += 1
            ENDIF
        ENDDO
    END SEQUENCE


    QOUT("O TOTAL:", nTotal)

RETURN nil

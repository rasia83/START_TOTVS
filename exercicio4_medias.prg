/*/{Protheus.doc} main
    @type  Function
    @author Tiago
    @since 07/10/2022
    @version 0.1
    @return nil
    /*/
Function main()
    
    local cNota := ""
    local nSomaTotal := 0
    local nTotalAlunos := 0
    local nMedia := 0
    local nMaiorNota := 0
    local nMenorNota := 10
    //local bContinuar := .T. 

    DO WHILE (.t.) // repetir até não encontrar nota
        Accept "Informar nota: " to cNota
            
        IF cNota == "" // se não houver entrada , continuar fica falso para encerrar a leitura 
            //bContinuar := .F. 
            exit
        ENDIF

        IF IsDigit(cNota) // :) 
            IF val(cNota) > nMaiorNota
                nMaiorNota := val(cNota)
            ENDIF
            
            IF val(cNota) < nMenorNota
                nMenorNota := val(cNota)
            ENDIF

            nSomaTotal := nSomaTotal + val(cNota)
            nTotalAlunos := nTotalAlunos + 1
        ENDIF
        
    ENDDO

    nMedia := nSomaTotal / nTotalAlunos
    
    // print result
    qout("Total de alunos: ", nTotalAlunos)
    qout("Media das notas: ", nMedia)
    qout("Maior nota: ", nMaiorNota)
    qout("Menor nota: ", nMenorNota)

Return nil

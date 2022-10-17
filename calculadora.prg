// 1. Ler dois números positivos e apresentar a soma, diferença, produto e
// quociente entre eles.

Function Main()

    local nValor1 := 0
    local nValor2 := 0
    local cOper   := ""

    ACCEPT "INSIRA SEU PRIMEIRO NUMERO:.......................................:" TO nValor1
        nValor1 := Val(nValor1)

    ACCEPT "INSIRA AQUI A OPERACAO QUE VOCE DESEJA EFETUAR (+ , - , * , / , ^):" TO cOper

    ACCEPT "INSIRA SEU SEGUNDO NUMERO:........................................:" TO nValor2
        nValor2 := Val(nValor2)

        IF cOper == "+"
            SOMA(nValor1 , nValor2)

        ELSEIF cOper == "-"
            DIFERENCA(nValor1 , nValor2)

        ELSEIF cOper == "*"
            PRODUTO(nValor1 , nValor2)

        ELSEIF cOper == "/"
            QUOCIENTE(nValor1 , nValor2)

        ELSEIF cOper == "^"
            POTENCIA(nValor1 , nValor2)

            ELSE
                QOUT("")
                QOUT("VOCE NAO DIGITOU UMA OPERACAO VALIDA")

        ENDIF
        
    WAIT "APERTE UMA TECLA PARA ENCERRAR"

Return NIL

Static Function SOMA(nValor1 , nValor2)

    local nResultado := 0

        nResultado := nValor1 + nValor2
            QOUT("")
            QOUT("O RESULTADO DE: " , ALLtrim(str(round(nValor1, 2))) , "+" , ALLtrim(str(round(nValor2, 2))) , "EH:"  , ALLtrim(str(round(nResultado,2))))
Return nResultado

Static Function DIFERENCA(nValor1 , nValor2)

local nResultado := 0

        nResultado := nValor1 - nValor2
            QOUT("")
            QOUT("O RESULTADO DE: " , ALLtrim(str(round(nValor1, 2))) , "-" , ALLtrim(str(round(nValor2, 2))) , "EH:"  , ALLtrim(str(round(nResultado,2))))
Return nResultado

Static Function PRODUTO(nValor1 , nValor2)

local nResultado := 0

        nResultado := nValor1 * nValor2
            QOUT("")
            QOUT("O RESULTADO DE: " , ALLtrim(str(round(nValor1, 2))) , "*" , ALLtrim(str(round(nValor2, 2))) , "EH:"  , ALLtrim(str(round(nResultado,2))))
Return nResultado

Static Function QUOCIENTE(nValor1 , nValor2)

local nResultado := 0

        nResultado := nValor1 / nValor2
            QOUT("")
            QOUT("O RESULTADO DE: " , ALLtrim(str(round(nValor1, 2))) , "/" , ALLtrim(str(round(nValor2, 2))) , "EH:"  , ALLtrim(str(round(nResultado,2))))
Return nResultado

Static Function POTENCIA(nValor1 , nValor2)

local nResultado := 0

        nResultado := (nValor1) ^ nValor2
            QOUT("")
            QOUT("O RESULTADO DE: " , ALLtrim(str(round(nValor1, 2))) , "^" , ALLtrim(str(round(nValor2, 2))) , "EH:"  , ALLtrim(str(round(nResultado,2))))
Return nResultado

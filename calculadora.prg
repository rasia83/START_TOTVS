// 1. Ler dois números positivos e apresentar a soma, diferença, produto e
// quociente entre eles.
SET PROCEDURE TO calc_lib.prg

Function Main()

    local nValor1 := 0
    local nValor2 := 0
    local cOper   := ""
    local nResultado := 0

    ENTRADA(@nValor1, @nValor2, @cOper)

    IF cOper == "+"
        nResultado := SOMA(nValor1 , nValor2)

    ELSEIF cOper == "-"
        nResultado := DIFERENCA(nValor1 , nValor2)

    ELSEIF cOper == "*"
        nResultado := PRODUTO(nValor1 , nValor2)

    ELSEIF cOper == "/"
        nResultado := QUOCIENTE(nValor1 , nValor2)

    ELSEIF cOper == "^"
        nResultado := POTENCIA(nValor1 , nValor2)

    ELSE
        QOUT("")
        QOUT("VOCE NAO DIGITOU UMA OPERACAO VALIDA")

    ENDIF

    SAIDA(nResultado, nValor1, nValor2, cOper)
Return NIL

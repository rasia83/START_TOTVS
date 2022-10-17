

Static Function SOMA(nValor1 , nValor2)
Return nValor1 + nValor2

Static Function DIFERENCA(nValor1 , nValor2)
Return nValor1 - nValor2

Static Function PRODUTO(nValor1 , nValor2)
Return nValor1 * nValor2

Static Function QUOCIENTE(nValor1 , nValor2)
Return nValor1 / nValor2

Static Function POTENCIA(nValor1 , nValor2)
Return nValor1 ^ nValor2

Static Function SAIDA(nResultado, nValor1, nValor2, cOper)
    //QOUT("O RESULTADO DE:" , ALLtrim(str(round(nValor1, 2))) , ALLtrim(cOper) , ALLtrim(str(round(nValor2, 2))) , "EH: " , ALLtrim(str(round(nResultado, 2))))
    QOUT("O RESULTADO DE: " + ALLtrim(str(round(nValor1, 2))) + " " + cOper + " " +  ALLtrim(str(round(nValor2, 2))) + " EH: "  + ALLtrim(str(round(nResultado,2))))
Return NIL

static Function ENTRADA (nValor1, nValor2, cOper)

    ACCEPT "INSIRA SEU PRIMEIRO NUMERO:..................................:" TO nValor1
    nValor1 := Val(nValor1)

    ACCEPT "INSIRA A OPERACAO QUE VOCE DESEJA EFETUAR (+ , - , * , / , ^):" TO cOper

    ACCEPT "INSIRA SEU SEGUNDO NUMERO:...................................:" TO nValor2
    nValor2 := Val(nValor2)

Return NIL

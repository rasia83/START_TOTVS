//     • Fórmulas:
//     ? Juros simples: VF = VP ( 1 + i + n )
//     ? Juros compostos: VF = VP ( 1 + i )^n
//     ? Juros a partir do VF: J = VF - VP
// • Onde:
//     ? VF = Montante ou Valor Futuro
//     ? VP = Capital ou Valor Presente
//     ? J = Juros
//     ? i = taxa em decimal
//     ? n = prazo

Function f_juros_simples(nValorP , nJur , nPrazo)
    local nValorF := nValorP + ( nValorP * ( nJur / 100 ) * nPrazo )
return nValorF

Function f_juros_composto(nValorP , nJur , nPrazo)
    local nValorF :=   nValorP  * ( 1 + ( nJur / 100 ) ) ^ nPrazo 
return nValorF

Function f_juros_valor_presente(nValorF , nJur , nPrazo)
     local nValorP := 0
return nValorP

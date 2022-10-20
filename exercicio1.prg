Function Main()
    local nValor1 := 0
    local nValor2 := 0
    local nValor3 := 0
    local nValor4 := 0
    local nMedia := 0

    qout("")
    Accept "Informe a primeira nota: " to nValor1
    Accept "Informe a segunda nota: " to nValor2
    Accept "Informe a terceira nota: " to nValor3
    Accept "Informe a quarta nota: " to nValor4
    nMedia := (val(nValor1) + val(nValor2) + val(nValor3) + val(nValor4) )/4
    // qout("A media do alune e = " , nMedia)

    if nMedia >= 7
        QOUT("APROVADO com media: " + Str(nMedia) )
    else
        QOUT("REPROVADO com media: " + Str(nMedia) )
    endif

    qout("")


RETURN .T.

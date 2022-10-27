

function inp_num( cMsg )
    local nNum , nI , bControle := .T.
    while bControle
        bControle := .F.
        ACCEPT cMsg TO nNum
        if len(nNum) < 1 // EM BRANCO, PEDIR ACCEPT NOVAMENTE 
            bControle := .T.
        endif
        if len(nNum) == 1 // ACEITAR SE PRIMEIRO DIGITO == "-"
            if !IsDigit(SubStr(nNum, 1 , 1)) .OR. SubStr(nNum, 1 , 1) == "-"
                bControle := .T.
                loop
            endif
        endif
        for nI := 2 to len(nNum) 
            if !IsDigit(SubStr(nNum, nI , 1))  .AND. !(SubStr(nNum, nI , 1) == ".")
                bControle := .T.
                loop
            endif
        next nI
    enddo
return val(nNum)


function is_digt_2( nNum )
    local nI 
    if len(nNum) < 1
        return .F.
    endif
    for nI := 1 to len(nNum)
        if !IsDigit(SubStr(nNum, nI , 1))
            return .F.
        endif
    next nI
return .T.


function inp_str( cMsg )
    local cStr , nI , bControle := .T.
    while bControle
        bControle := .F.
        ACCEPT cMsg TO cStr
        if len(cStr) < 1
            bControle := .T.
        endif
        for nI := 1 to len(cStr)
            if !IsAlpha(SubStr(cStr, nI , 1))
                bControle := .T.
            endif
        next nI
    enddo
return cStr


function inp_up_chr( cMsg )
    local cChr
    while !IsAlpha(cChr)
        ACCEPT cMsg TO cChr
    enddo
return upper(left(cChr, 1))


function is_alpha_2( cStr )
    local nI 
    if len(cStr) < 1
        return .F.
    endif
    for nI := 1 to len(cStr)
        if !IsAlpha(SubStr(cStr, nI , 1))
            return .F.
        endif
    next nI
return .T.



// REQUEST HB_GT_WIN_DEFAULT

Function Main()
    local nBase := "10"
    local nAlt := "10"
    local nArea := 10 
        
    QOUT("Vamos calcular a area do triangulo ...")
    //ACCEPT "Digite a base do triangulo: " TO nBase
    //ACCEPT "Digite a altura do triangulo: " TO nAlt

    nArea := (val(nBase) * val(nAlt)) / 2

    QOUT("Já que vocâ não decorou a formula: ( base * altura ) / 2 ")
    QOUT("Area do triangulo: " + allTrim(str(round(nArea,2))))
    
Return nil




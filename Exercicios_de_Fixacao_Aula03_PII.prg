
Function Main()
REQUEST HB_LANG_PT
hb_langSelect( "pt" )       // Default language is now Portuguese
//? CDoW( Date() )            // --> Segunda-feira

    //Exercicio1()
    //Exercicio2()
    Exercicio3()
Return nil

Function Exercicio1()
/*
1. Represente, no Harbour/ADVPL, a instru��o, para obter o valor das
vari�veis abaixo, que ser�o digitadas pelo usu�rio:
    a. Nome
    b. Conta, Cr�dito e D�bito
    c. Valor1 e Valor2
*/
    local cNome := ""
    Local nConta, nCredito, nDebito, nValor1, nValor2 := 0
    
    ACCEPT "digite o Nome: " TO cNome
    ACCEPT "digite a Conta: " TO nConta
    ACCEPT "digite o Cr�dito: " TO nCredito
    ACCEPT "digite o D�bito: " TO nDebito
    ACCEPT "digite o Valor1: " TO nValor1
    ACCEPT "digite o Valor2: " TO nValor2

    Qout("Valores gravados")
    Qout("Nome:     ",cNome)
    Qout("Conta:    ",nConta)
    Qout("Cr�dito:  ",nCredito)
    Qout("D�bito:   ",nDebito)
    Qout("Valor1    ",nValor1)
    Qout("Valor2    ",nValor2)
Return nil

Function Exercicio2()
/*
2. Represente, no Harbour/ADVPL, a instru��o, para apresentar na tela, o
conte�do das vari�veis e express�es abaixo:
    a. Nome
    b. Cr�dito � D�bito
    c. (Base * Altura) / 2
*/
    local cNome := ""
    Local nCredito, nDebito, nBase, nAltura := 0
    
    ACCEPT "digite o Nome: " TO cNome
    ACCEPT "digite o Cr�dito: " TO nCredito
    ACCEPT "digite o D�bito: " TO nDebito
    ACCEPT "digite o Valor1: " TO nBase
    ACCEPT "digite o Valor2: " TO nAltura
    Qout("Valores gravados")
    Qout("a. Nome:                  ",nCredito)
    Qout("b. Cr�dito � D�bit        ",val(nCredito)-val(nDebito))
    Qout("c. (Base * Altura) / 2    ",(val(nBase)*val(nAltura))/2)
Return nil

Function Exercicio3()
    local nNota1 := 0
    local nNota2 := 0
    local nMedia := 0
/*
3. Represente os algoritmos abaixo em fluxograma e pseudoc�digo:
    a. Programa para c�lculo da medida de hipotenusa de um tri�ngulo
    ret�ngulo: obter valor do cateto oposto; obter o valor do cateto
    adjacente; calcular o valor da hipotenusa; apresentar o valor da
    hipotenusa.
    
*/
    Qout("a. ")

    Qout("b. Programa para c�lculo de m�dia escolar: obter nota1 e nota2; calcular a m�dia aritm�tica; exibir a m�dia.")
    

    qout("")
    Accept "Informe a primeira nota: " to nNota1
    Accept "Informe a segunda nota: " to nNota2
    nMedia := (val(nNota1) + val(nNota2) )/2
    qout("A media do alune e = " , nMedia)
    qout("")

Return nil

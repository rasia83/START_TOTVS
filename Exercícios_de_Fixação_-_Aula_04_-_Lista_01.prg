/*
Exerc�cios:
1. Ler dois n�meros positivos e apresentar a soma, diferen�a, produto e
quociente entre eles.
2. Ler uma temperatura em graus Celsius e apresent�-la convertida em
graus Fahrenheit. A f�rmula de convers�o �: F (9* C + 160) / 5. Onde F
� a temperatura em Fahrenheit e C � a temperatura em Celsius.

3. Ler uma temperatura em graus Fahrenheit e apresent�-la convertida em
graus Celsius. A f�rmula de convers�o �: C (F - 32) * (5/9). Onde F � a
temperatura em Fahrenheit e C � a temperatura em Celsius.
4. Calcular e apresentar o valor do volume de uma lata de �leo, utilizando a
f�rmula: VOLUME = 3,14159 x R2 x ALTURA.
5. Efetuar o c�lculo da quantidade de litros de combust�vel gastos em uma
viagem, utilizando-se um autom�vel que faz 12 Km por litro. Para obter o
c�lculo, o usu�rio dever� fornecer o tempo gasto na viagem e a
velocidade m�dia durante a mesma. Desta forma, ser� poss�vel obter a
dist�ncia percorrida com a f�rmula DIST�NCIA = TEMPO x VELOCIDADE.
Tendo o valor da dist�ncia, basta calcular a quantidade de litros de
combust�vel utilizada na viagem com a f�rmula: LITROS_USADOS =
DIST�NCIA / 12. O programa dever� apresentar os valores da velocidade
m�dia, tempo gasto na vigem, a dist�ncia percorrida e a quantidade de
litros utilizada na viagem.
6. Alterar o programa do exerc�cio anterior de modo que ele possa ser usado
em ve�culos com padr�o de consumo diferente de 12 Km por litro.
7. Efetuar o c�lculo e a apresenta��o do valor de uma presta��o em atraso,
utilizando a f�rmula, PRESTA��O = VALOR + (VALOR x (TAXA / 100) x
TEMPO).
8. Efetuar e apresentar o valor com desconto, dado o valor normal e a
porcentagem de desconto.
9. Ler dois valores para as vari�veis A e B, efetuar a troca dos valores de
forma que a vari�vel A passe a possuir o valor da vari�vel B e que a
vari�vel B passe a possuir o valor da vari�vel A. Apresentar os valores
trocados. Os valores devem ser efetivamente trocados nas respectivas
vari�veis.
10. Efetuar a leitura de um n�mero inteiro e apresentar o resultado do
quadrado deste n�mero.
11. Ler dois inteiros (vari�veis A e B) e imprimir o resultado do quadrado
da diferen�a do primeiro valor pelo segundo.
12. Elaborar um programa que efetue a apresenta��o do valor da
convers�o em real (R$) de um valor lido em d�lar (US$). O programa
dever� solicitar o valor da cota��o do d�lar e, tamb�m, a quantidade de
d�lares dispon�vel com o usu�rio.

13. Elaborar um programa que efetue a apresenta��o do valor da
convers�o em d�lar (US$) de um valor lido em real (R$). O programa
dever� solicitar o valor da cota��o do d�lar e, tamb�m, a quantidade de
reais dispon�vel com o usu�rio.
14. Elaborar um programa que efetue a leitura de tr�s valores. (A, B e C)
e apresente como resultado final a soma dos quadrados dos tr�s valores
lidos.
15. Elaborar um programa que efetue a leitura de tr�s valores. (A, B e C)
e apresente como resultado final o quadrado da soma dos tr�s valores
lidos.
16. Elaborar um programa que apresente o produto da soma pela
diferen�a do quadrado de dois valores lidos.
17. Indique os erros no pseudoc�digo abaixo:

18. Atrav�s de teste de mesa indique a finalidade do algoritmo abaixo:

19. Fazer um programa que apresente o m�dulo de um valore informado
pelo usu�rio. O m�dulo � o n�mero sempre positivo. Exemplo | 5 | = 5 e
| -5 | = 5 (m�dulo de 5 igual a cinco e m�dulo de -5 igual a cinco
tamb�m.
*/


Function Main()

    QOUT(" !!! aviso !!! ")
    QOUT(" todos exercicios em que o valor apresentar casas decimais")
    QOUT(" o mesmo deve ser representado no padrao ammericano ")
    QOUT(" ultilizar . e nao , ")
    QOUT("")

    Exercicio01()
    Exercicio02()
    Exercicio03()
    Exercicio04()
    Exercicio05()
    Exercicio06()
    Exercicio07()
    Exercicio08()
    Exercicio09()
    Exercicio10()
    Exercicio11()
    Exercicio12()
    Exercicio13()
    Exercicio14()
    Exercicio15()
    Exercicio16()
    Exercicio17()
    Exercicio18()
    Exercicio19()

Return nil

Function Exercicio01()
    local n1 , n2
    QOUT("***************")
    QOUT("* Exercicio01 *")
    ACCEPT "Digite o primeiro numero: " TO n1
    ACCEPT "Digite o segundo numero: " TO n2
    n1 := val(n1)
    n2 := val(n2)
    QOUT("soma.........." + allTrim(str( n1 + n2)))
    QOUT("diferenca....." + allTrim(str( n1 - n2)))
    QOUT("prouto........" + allTrim(str( n1 * n2)))
    QOUT("quociente....." + allTrim(str( n1 / n2)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio02()
    local nTempC
    QOUT("***************")
    QOUT("* Exercicio02 *")
    ACCEPT "Digite a temperatura em graus Celsius: " TO nTempC
    nTempC := val(nTempC)
    QOUT("convertida em graus Fahrenheit: " + allTrim(str((((9 * nTempC) / 5)) + 32)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio03()  
    local nTempF
    QOUT("***************")
    QOUT("* Exercicio03 *")
    ACCEPT "Digite a temperatura em graus Fahrenheit: " TO nTempF
    nTempF := val(nTempF)
    QOUT("convertida em graus Celsius: " + allTrim(str((( nTempF - 32) * ( 5 / 9 ) ))))    
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio04()
    local nAltura, nRaio
    QOUT("***************")
    QOUT("* Exercicio04 *")
    ACCEPT "Digite a altura (cm): " TO nAltura
    ACCEPT "Digite o raio (cm): " TO nRaio
    nAltura := val(nAltura)
    nRaio := val(nRaio)
    QOUT("Volume....." + allTrim(str( round(3.14159 * ( nRaio ^ 2 ) * nAltura , 2))) + " cm3")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio05()
    local nDistancia, nTempo, nVelocidade, nLitros
    QOUT("***************")
    QOUT("* Exercicio05 *")
    ACCEPT "Digite o tempo da viagem (horas): " TO nTempo
    ACCEPT "Digite a velocidade (KM/h): " TO nVelocidade
    nTempo := val(nTempo)
    nVelocidade := val(nVelocidade)
    nDistancia := nTempo * nVelocidade
    nLitros := nDistancia / 12

    QOUT("velocidade media............... " + allTrim(str(nVelocidade)) + " KM/h")
    QOUT("tempo gasto.................... " + allTrim(str(nTempo)) + " Horas")
    QOUT("distancia percorrida........... " + allTrim(str(nDistancia)) + " KM")
    QOUT("quantidade de litros utilizada. " + allTrim(str(round(nLitros,1))) + " L")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio06()
    local nDistancia, nTempo, nVelocidade, nLitros, nKmL
    QOUT("***************")
    QOUT("* Exercicio06 *")
    ACCEPT "Digite o tempo da viagem (horas): " TO nTempo
    ACCEPT "Digite a velocidade (KM/h): " TO nVelocidade
    ACCEPT "Km por litro: " TO nKmL
    nTempo := val(nTempo)
    nVelocidade := val(nVelocidade)
    nKmL := val(nKmL)
    nDistancia := nTempo * nVelocidade
    nLitros := nDistancia / nKmL

    QOUT("velocidade media............... " + allTrim(str(nVelocidade)) + " KM/h")
    QOUT("tempo gasto.................... " + allTrim(str(nTempo)) + " Horas")
    QOUT("distancia percorrida........... " + allTrim(str(nDistancia)) + " KM")
    QOUT("quantidade de litros utilizada. " + allTrim(str(round(nLitros,1))) + " L")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio07()
    local nPrestacao, nValor, nTaxa, nTempo
    QOUT("***************")
    QOUT("* Exercicio07 *")
    ACCEPT "Valor base (R$) " TO nValor
    nValor := val(nValor)
    ACCEPT "Taxa de juros ( x.xx %/Dia) " TO nTaxa 
    nTaxa := val(nTaxa)
    ACCEPT "Dias de atraso " TO nTempo 
    nTempo := val(nTempo)
    nPrestacao := nValor + ( nValor * ( nTaxa / 100 ) * nTempo )
    QOUT("Prestacao em atraso")
    QOUT("Valor atualizado ... R$ " + allTrim(str(round(nPrestacao,2))))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio08()
    local nValor, nDesc, nValDesc
    QOUT("***************")
    QOUT("* Exercicio08 *")
    ACCEPT "Valor original (R$) " TO nValor
    nValor := val(nValor)
    ACCEPT "Desconto ( x.xx %) " TO nDesc 
    nDesc := val(nDesc)
    nValDesc := nValor - ( nValor * ( nDesc / 100 ) )
    QOUT("Desconto")
    QOUT("Valor atualizado ... R$ " + allTrim(str(round(nValDesc,2))))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio09()
    local nA, nB , nTemp // n�o necessariamente ser�o variaveis numericas , pode ser de qualquer tipo
    QOUT("***************")
    QOUT("* Exercicio09 *")
    ACCEPT "Valor de A = " TO nA 
    ACCEPT "Valor de B = " TO nB
    nTemp := nA 
    nA := nB
    nB := nTemp
    QOUT("Novo valor de A = " + nA)
    QOUT("Novo valor de B = " + nB)
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio10()
    local nEntrada , nResultado
    QOUT("***************")
    QOUT("* Exercicio10 *")
    ACCEPT "Digite um numero inteiro " TO nEntrada
    nEntrada := val(nEntrada)
    nResultado := nEntrada ^ 2
    QOUT("Novo valor de " + allTrim(str(nEntrada)) + " ao quadrado e = " + allTrim(str(nResultado)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio11()
    // (a � b)� ? quadrado da diferen�a de dois termos
    local nA, nB, nCalc
    QOUT("***************")
    QOUT("* Exercicio11 *")
    ACCEPT "Valor de A = " TO nA 
    ACCEPT "Valor de B = " TO nB
    nA := val(nA)
    nB := val(nB)
    nCalc := ( nA - nB ) ^ 2
    QOUT("(a - b)� = " + allTrim(str(nCalc)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio12()
    local nBRL, nUSD, nCambio
    QOUT("***************")
    QOUT("* Exercicio12 *")
    ACCEPT "Valor em USD = " TO nUSD 
    ACCEPT "Cambio USD/BRL = " TO nCambio
    nUSD := val(nUSD)
    nCambio := val(nCambio)
    nBRL := nUSD * nCambio 
    QOUT("Valor atualizado ... R$ " + allTrim(str(round(nBRL,2))))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio13()
    local nBRL, nUSD, nCambio
    QOUT("***************")
    QOUT("* Exercicio13 *")
    ACCEPT "Valor em BRL = " TO nBRL 
    // manter a leitura de dollar para real para efetuar a opera��o inversa no calculo
    ACCEPT "Cambio USD/BRL = " TO nCambio
    nBRL := val(nBRL)
    nCambio := val(nCambio)
    nBRL := nBRL / nCambio 
    QOUT("Valor atualizado ... US$ " + allTrim(str(round(nBRL,2))))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio14()
    // soma dos quadrados dos tr�s valores
    local nA, nB, nC, nCalc
    QOUT("***************")
    QOUT("* Exercicio14 *")
    ACCEPT "Valor de A = " TO nA 
    ACCEPT "Valor de B = " TO nB
    ACCEPT "Valor de C = " TO nC
    nA := val(nA)
    nB := val(nB)
    nC := val(nC)
    nCalc := nA ^ 2 + nB ^ 2 + nC ^ 2
    QOUT("soma dos quadrados dos tres valores = " + allTrim(str(nCalc)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio15()
    // quadrado da soma dos tr�s valores
    local nA, nB, nC, nCalc
    QOUT("***************")
    QOUT("* Exercicio15 *")
    ACCEPT "Valor de A = " TO nA 
    ACCEPT "Valor de B = " TO nB
    ACCEPT "Valor de C = " TO nC
    nA := val(nA)
    nB := val(nB)
    nC := val(nC)
    nCalc := (nA + nB + nC) ^ 2
    QOUT("quadrado da soma dos tres valores = " + allTrim(str(nCalc)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio16()
    // �O produto da soma pela diferen�a de dois termos � igual ao quadrado do primeiro termo menos o quadrado do segundo termo�
    // (a + b)(a � b) == a*a � a*b + b*a � b*b == a� � b�
    local nA, nB, nC, nCalc
    QOUT("***************")
    QOUT("* Exercicio16 *")
    ACCEPT "Valor de A = " TO nA 
    ACCEPT "Valor de B = " TO nB
    nA := val(nA)
    nB := val(nB)
    nCalc := nA ^ 2 - nB ^ 2 
    QOUT("O produto da soma pela diferen�a de dois termos = " + allTrim(str(nCalc)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio17()
    QOUT("***************")
    QOUT("* Exercicio17 *")
    QOUT("")
    QOUT("Indique os erros no pseudocodigo")
    QOUT("o calculo da media esta errado,")
    QOUT("por causa da prioridade dos operadores na matematica")
    QOUT("o calculo deveria ser")
    QOUT("MED = ( X + Y ) / 2 ")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio18()
    QOUT("***************")
    QOUT("* Exercicio18 *")
    QOUT("")
    QOUT("Indique a finalidade do algoritmo")
    QOUT("")
    QOUT("O programa demonstra que a ordem dos fatores n�o altera o resultado da multiplicacao")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio19()
    //apresente o m�dulo de um valore informado
    // | 5 | = 5 e | -5 | = 5 (m�dulo de 5 igual a cinco e m�dulo de -5 igual a cinco tamb�m.
    local nValor
    QOUT("***************")
    QOUT("* Exercicio19 *")
    ACCEPT "Informe um valor: " TO nValor
    nValor := val(nValor)
    if( nValor < 0)
        nValor := nValor * -1
    endif
    QOUT("Modulo = " + allTrim(str(nValor)))
    QOUT("***************")
    QOUT("")
Return nil

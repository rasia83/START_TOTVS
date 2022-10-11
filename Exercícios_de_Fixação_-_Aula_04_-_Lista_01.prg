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

    //Exercicio01()
    //Exercicio02()
    //Exercicio03()
    // Exercicio04()
    // Exercicio05()
    // Exercicio06()
    Exercicio07()
    Exercicio08()
    Exercicio09()
    // Exercicio10()
    // Exercicio11()
    // Exercicio12()
    // Exercicio13()
    // Exercicio14()
    // Exercicio15()
    // Exercicio16()
    // Exercicio17()
    // Exercicio18()
    // Exercicio19()

Return nil

Function Exercicio01()
    local n1 , n2
    QOUT("*****")
    QOUT("* Exercicio01 *")
    ACCEPT "Digite o primeiro numero: " TO n1
    ACCEPT "Digite o segundo numero: " TO n2
    n1 := val(n1)
    n2 := val(n2)
    QOUT("soma.........." + allTrim(str( n1 + n2)))
    QOUT("diferenca....." + allTrim(str( n1 - n2)))
    QOUT("prouto........" + allTrim(str( n1 * n2)))
    QOUT("quociente....." + allTrim(str( n1 / n2)))
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio02()
    local nTempC
    QOUT("*****")
    QOUT("* Exercicio02 *")
    ACCEPT "Digite a temperatura em graus Celsius: " TO nTempC
    nTempC := val(nTempC)
    QOUT("convertida em graus Fahrenheit: " + allTrim(str((((9 * nTempC) / 5)) + 32)))
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio03()  
    local nTempF
    QOUT("*****")
    QOUT("* Exercicio03 *")
    ACCEPT "Digite a temperatura em graus Fahrenheit: " TO nTempF
    nTempF := val(nTempF)
    QOUT("convertida em graus Celsius: " + allTrim(str((( nTempF - 32) * ( 5 / 9 ) ))))    
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio04()
    local nAltura, nRaio
    QOUT("*****")
    QOUT("* Exercicio04 *")
    ACCEPT "Digite a altura (cm): " TO nAltura
    ACCEPT "Digite o raio (cm): " TO nRaio
    nAltura := val(nAltura)
    nRaio := val(nRaio)
    QOUT("Volume....." + allTrim(str( round(3.14159 * ( nRaio ^ 2 ) * nAltura , 2))) + " cm3")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio05()
    local nDistancia, nTempo, nVelocidade, nLitros
    QOUT("*****")
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
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio06()
    local nDistancia, nTempo, nVelocidade, nLitros, nKmL
    QOUT("*****")
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
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio07()
    // PRESTA��O = VALOR + (VALOR x (TAXA / 100) x TEMPO).
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio08()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio09()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio10()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio11()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio12()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio13()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio14()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio15()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio16()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio17()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio18()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

Function Exercicio19()
    //
    QOUT("*****")
    QOUT("* Exercicio01 *")
    QOUT("*****")
    QOUT("")
Return nil

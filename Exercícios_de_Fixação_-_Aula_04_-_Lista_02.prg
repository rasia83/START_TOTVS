/*
Exercícios:
20.Elaborar um programa que efetue a leitura de um determinado valor
e apresente-o caso este não seja maior que três.
21.Efetuar a leitura de um valor inteiro positivo ou negativo e apresentar
o número lido como sendo um valor negativo. Lembre-se de verificar

se o número fornecido é maior que zero, sendo multiplique-o por -1.
Usar apenas o desvio condicional simples. Não poderá utilizar o
“senão”.
22.Ler dois valores numéricos e apresentar a diferença do maior pelo
menor. Usar apenas o desvio condicional simples. Não poderá utilizar
o “senão”.
23.Ler quatro valores referentes a quatro notas escolares de um aluno e
imprimir uma mensagem dizendo que o aluno foi aprovado, se o valor
da média escolar for maior ou igual a 5. Se o aluno não foi aprovado,
indicar uma mensagem informando esta condição. Apresentar junto
das mensagens o valor da média do aluno para qualquer condição.
24.Ler quatro valores referentes a quatro notas escolares de um aluno e
imprimir uma mensagem dizendo que o aluno foi aprovado, se o valor
da média escolar for maior ou igual a 7. Se o valor da média for
menor que 7, solicitar a nota de exame, sornar com o valor da média
e obter nova média. Se a nova média for maior ou igual a 5,
apresentar uma
mensagem dizendo que o aluno foi aprovado em exame. Se o aluno
não foi aprovado, indicar uma mensagem informando esta condição.
Apresentar com as mensagens o valor da média do aluno, para
qualquer condição.
25.Desenvolva um programa que dado um número, calcule e exiba se ele
é par ou ímpar.
26.Elaborar um programa que calcule a raiz real de uma equação de 1o
grau, informados os valores do coeficiente de x (a) e do elemento
neutro (b).
27.Elaborar um programa que calcule as raízes reais de uma equação de
2o grau, informados os valores do coeficiente de x

2(a), do coeficiente

de x (b) e do elemento neutro (c).
28.Efetuar a leitura de quatro números inteiros e apresentar os números
que são divisíveis por 2 e 3.
29.Efetuar a leitura de quatro números inteiros e apresentar os números
que são divisíveis por 2 ou 3.
30.Elaborar um programa que efetue a leitura de um valor que esteja
entre a faixa de 1 a 9. Após a leitura do valor fornecido pelo usuário,
o programa deverá indicar uma de duas mensagens: "O valor está na
faixa permitida", caso o usuário forneça o valor nesta faixa ou a
mensagem "O valor está fora da faixa permitida", caso o usuário
forneça valores menores que 1 ou maiores que 9.
31.Elaborar um programa que efetue a leitura do nome e do sexo de
uma pessoa, apresentando como saída uma das seguintes
mensagens: "Ilmo. Sr.", para o sexo informado como masculino ou a

mensagem "Ilma. Sra. ", para o sexo informado como feminino.
Apresente também abaixo da mensagem impressa o nome da
pessoa.
32.Ler a hora de início e a hora de fim de um jogo de Poker (considere
apenas horas inteiras, sem os minutos) e calcule a duração do jogo
em horas, sabendo-se que o tempo máximo de duração do jogo é de
24 horas e que o jogo pode iniciar em um dia e terminar no dia
seguinte.
33.A jornada de trabalho semanal de um funcionário é de 40 horas. O
funcionário que trabalhar mais de 40 horas receberá hora extra, cujo
cálculo é o valor da hora regular com um acréscimo de 50%. Escreva
um algoritmo que leia o número de horas trabalhadas em um mês, o
salário por hora e escreva o salário total do funcionário, que deverá
ser acrescido das horas extras, caso tenham sido trabalhadas
(considere que o mês possua 4 semanas exatas).
34.Ler um valor e escrever se é positivo, negativo ou zero.
35.Faça um algoritmo para ler um nome de usuário (user name) e uma
senha. Caso correspondam aos dados armazenados internamente no
programa através do uso de constantes (“chumbado”), deve ser
apresentada a mensagem “Acesso permitido”. Caso o usuário/senha
não coincidam, exibir a mensagem “Usuário ou senha inválido”. A
verificação da senha só deverá ocorrer caso o usuário coincida, porém
o usuário não deve saber especificamente se foi o nome de usuário ou
a senha que não coincidiu.
36.Dado um caractere qualquer, verificar se ele é uma vogal.
37.Dado um número de 1 até 12, apresentar o número de dias do mês
correspondente. Se o número escolhido for 2 (fevereiro), considere
28 dias.
38.Dados um caractere qualquer, verificar e informar se ele é uma vogal,
um dígito numérico ou um símbolo.
39.Dada uma data informada pelo usuário indicar ordinalmente o dia do
ano que ela representa do 1o dia ao 365o/366o (conforme o ano for
ou
não bissexto). O usuário informará separadamente dos valores do dia,
do mês e do ano pesquisado.
40.Ler três valores para os lados de um triângulo, considerando lados
como: A, B e C. Verificar se os lados fornecidos formam realmente um
triângulo (teste de verificação), e se for esta condição verdadeira,
deverá ser indicado qual tipo de triângulo foi formado: isósceles,
escaleno ou equilátero. Dica: para saber se um conjunto de três
segmentos de reta formas um triângulo basta verificar que cada a
medida de cada um dos segmentos (lados) seja menor do que a soma

dos outros dois.
41.Efetuara leitura de três valores (variáveis A, B e C) e apresentar o
maior deles.
42.Efetuar a leitura de 3 valores inteiros e exibir na tela o menor e o
maior deles.
43.Efetuar a leitura de 4 valores inteiros e exibir na tela o menor e o
maior deles.
44.Efetuar a leitura de 5 valores inteiros e exibir na tela o menor e o
maior deles.
45.O programa abaixo possui erros de sintaxe e lógica. Erros de sintaxe
são aqueles relativos às regras do VisualG. Já os erros de lógica
indicam um funcionamento inesperado do algoritmo. Analise o
programa abaixo e indique através de comentários esses erros.
Algoritmo_Compara NUM
Var
A, B : Inteiros;
Inicio
Leia(A, B)
Se A = B
Escreva(Os números são iguais)
Senão faça
Se A > B então
Escreva(A, " É menor que ", B)
Senão
Escreva (B, " É menor que ", A)
Fimse
Fimalgoritmo
46.Através de teste de mesa, analise e indique a finalidade do algoritmo
abaixo:

Leia(R1, R2)
Se R1 >= R2 então
Aux R1
R1 R2
R2 Aux
Fimse
Escreva(R1, R2)

47.Jogo Adivinha o número - parte 1: Elaborar um jogo do tipo
adivinha o número. Onde deverá ser sorteado um número entre 0 e
100. Em seguida solicitado que o usuário adivinhe qual foi o número

sorteado. Após o “chute” do usuário apresentar uma mensagem
informando se o número sorteado é maior, menor ou igual ao número
“chutado”. Pesquise como gerar números aleatórios no VisualG.
48.Efetuar a leitura de três valores (variáveis A, B e C) e apresentar os
valores dispostos em ordem crescente.
49.Efetuar a leitura de 4 valores (variáveis A, B, C e D) e apresentar os
valores dispostos em ordem crescente.
*/


Function Main()

    QOUT(" !!! aviso !!! ")
    QOUT(" todos exercicios em que o valor apresentar casas decimais")
    QOUT(" o mesmo deve ser representado no padrao ammericano ")
    QOUT(" ultilizar . e nao , ")
    QOUT("")

    Exercicio20()
    Exercicio21()
    Exercicio22()
    Exercicio23()
    Exercicio24()
    Exercicio25()
    Exercicio26()
    Exercicio27()
    Exercicio28()
    Exercicio29()
    Exercicio30()
    Exercicio31()
    Exercicio32()
    Exercicio33()
    Exercicio34()
    Exercicio35()
    Exercicio36()
    Exercicio37()
    Exercicio38()
    Exercicio39()
    Exercicio40()
    Exercicio41()
    Exercicio42()
    Exercicio43()
    Exercicio44()
    Exercicio45()
    Exercicio46()
    Exercicio47()
    Exercicio48()
    Exercicio49()
return NIL

Function Exercicio20()
    local nValor
    QOUT("***************")
    QOUT("* Exercicio20 *")
    ACCEPT "Informe um numero: " TO nValor
    nValor := val(nValor)
    if nValor < 3 
        QOUT("OK " + allTrim(str(nValor)) + " e menor que 3 ")
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio21()
    local nValor
    QOUT("***************")
    QOUT("* Exercicio21 *")
    ACCEPT "Informe um numero: " TO nValor
    nValor := val(nValor)
    if nValor > 0
        nValor := nValor * -1
    endif
    QOUT("valor negativo = " + allTrim(str(nValor)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio22()
    local nValor1, nValor2, nDif
    QOUT("***************")
    QOUT("* Exercicio22 *")
    ACCEPT "Informe um numero: " TO nValor1
    ACCEPT "Informe outro numero: " TO nValor2
    nValor1 := val(nValor1)
    nValor2 := val(nValor2)
    nDif := nValor1 - nValor2
    if nDif < 0
        nDif := nDif * -1
    endif
    QOUT("Diferenca do maior pelo menor = " + allTrim(str(nDif)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio23()
    local nN1, nN2, nN3, nN4, nMed
    local cSituacao := "reprovado"
    QOUT("***************")
    QOUT("* Exercicio23 *")
    ACCEPT "Informe a primeira nota: " TO nN1
    ACCEPT "Informe a segunda nota: " TO nN2
    ACCEPT "Informe a terceira nota: " TO nN3
    ACCEPT "Informe a quarta nota: " TO nN4
    nN1 := val(nN1)
    nN2 := val(nN2)
    nN3 := val(nN3)
    nN4 := val(nN4)
    nMed := ( nN1 + nN2 + nN3 + nN4 ) / 4
    if nMed >= 5
        cSituacao := "aprovado"
    endif
    QOUT("Aluno " + cSituacao + " com media " + allTrim(str(round(nMed,2))) )
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio24()
    local nN1, nN2, nN3, nN4, nMed, nExame
    local cSituacao := "reprovado"
    QOUT("***************")
    QOUT("* Exercicio24 *")
    ACCEPT "Informe a primeira nota: " TO nN1
    ACCEPT "Informe a segunda nota: " TO nN2
    ACCEPT "Informe a terceira nota: " TO nN3
    ACCEPT "Informe a quarta nota: " TO nN4
    nN1 := val(nN1)
    nN2 := val(nN2)
    nN3 := val(nN3)
    nN4 := val(nN4)
    nMed := ( nN1 + nN2 + nN3 + nN4 ) / 4
    if nMed >= 7
        cSituacao := "aprovado"
    else
        ACCEPT "Informe a nota do exame: " TO nExame
        nExame := val(nExame)
        nMed := ( nMed + nExame ) / 2
        if nMed >= 5
            cSituacao := "aprovado em exame"
        endif
    endif
    QOUT("Aluno " + cSituacao + " com media " + allTrim(str(round(nMed,2))) )
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio25()
    local nValor
    local cResultado := "impar"
    QOUT("***************")
    QOUT("* Exercicio25 *")
    ACCEPT "Informe um numero: " TO nValor
    nValor := val(nValor)
    if (nValor % 2) == 0
        cResultado := "par"
    endif
    QOUT(allTrim(str(nValor)) + " e " + cResultado)
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio26()
    local nA, nB, nX
    QOUT("***************")
    QOUT("* Exercicio26 *")
    ACCEPT "Digite o valor de a: " to nA
    ACCEPT "Digite o valor de b: " to nB
    nX = -Val(nB) / Val(nA) 
    QOUT("o resultado da equacao e de: " + ALLtrim(STR(nX)))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio27()
    Local nA, nB, nC, nDelta, nX1, nX2
    QOUT("***************")
    QOUT("* Exercicio27 *")
    ACCEPT "Digite o valor de a: " to nA
    ACCEPT "Digite o valor de b: " to nB
    ACCEPT "Digite o valor de c: " to nC

    nDelta = (Val(nB) ** 2) - 4 * Val(nA)  * Val(nC) 
    if (nDelta <0)
        QOUT("nao possui raizes reais")

    else
        if (nDelta == 0)
            nX1 = -Val(nB) /(2 * Val(nA))
                QOUT("resultado: delta: " + ALLtrim(STR(nDelta)) + "n': " + ALLtrim(STR(nX1)))

        else
            nX1 = (-Val(nB) - sqrt(nDelta))/(2 * Val(nA))
            nX2 = (-Val(nB) + sqrt(nDelta))/(2 * Val(nA))
            QOUT("Resultado: delta " + ALLtrim(STR(nDelta)) + " n': "+ ALLtrim(STR(nX1)) + " n'': " + ALLtrim(STR(nX2)))

        endif
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio28()
    local nNum, nContador := 0
    QOUT("***************")
    QOUT("* Exercicio28 *")
    DO WHILE nContador < 4
        ACCEPT "Informe o numero: " TO nNum
        nNum := val(nNum)
        IF nNum % 2 == 0 .AND. nNum % 3 == 0
            QOUT(ALLtrim(STR(nNum)) + " e divisivel por 2 e 3")
        ELSE
            QOUT(ALLtrim(STR(nNum)) + " nao e divisivel por 2 e 3")
        ENDIF
        nContador++
    ENDDO
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio29()
    local nNum, nContador := 0
    QOUT("***************")
    QOUT("* Exercicio29 *")
    DO WHILE nContador < 4
        ACCEPT "Informe o numero: " TO nNum
        nNum := val(nNum)
        IF nNum % 2 == 0 .OR. nNum % 3 == 0
            QOUT(ALLtrim(STR(nNum)) + " e divisivel por 2 ou 3")
        ELSE
            QOUT(ALLtrim(STR(nNum)) + " nao e divisivel por 2 ou 3")
        ENDIF
        nContador++
    ENDDO
    QOUT("***************")
    QOUT("")
Return nil


Function Exercicio30()
    // efetue a leitura de um valor que esteja entre a faixa de 1 a 9
    // o programa deverá indicar uma de duas mensagens:
    // "O valor está na faixa permitida", caso o usuário forneça o valor nesta faixa
    // "O valor está fora da faixa permitida", caso o usuário forneça valores menores que 1 ou maiores que 9.
    local nValor
    QOUT("***************")
    QOUT("* Exercicio30 *")
    ACCEPT "Informe um numero: " TO nValor
    nValor := val(nValor)
    if nValor >= 1 .AND. nValor <= 9
        QOUT("O valor esta na faixa permitida")
    else
        QOUT("O valor esta fora da faixa permitida")
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio31()
    local cNome, cGenero
    QOUT("***************")
    QOUT("* Exercicio31 *")
    ACCEPT "Informe o nome: " TO cNome
    ACCEPT "Informe o genero (M/F): " TO cGenero
    cGenero := upper(left(cGenero, 1))
    if cGenero == "F" // .OR. cGenero == "f"
        QOUT("Ilma. Sra. ")
    elseif cGenero == "M" // .OR. cGenero == "m"
        QOUT("Ilmo. Sr")
    endif
    QOUT(cNome)
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio32()
    local nHIni, nHFim, nTempo
    QOUT("***************")
    QOUT("* Exercicio32 *")
    QOUT("Jogo de Poker")
    ACCEPT "Informe a hora de inicio (24h): " TO nHIni
    ACCEPT "Informe a hora do fim (24h): " TO nHFim
    nHIni := val(nHIni)
    nHFim := val(nHFim)
    // se a hora de inicio for maior que a hora do fim, a partira durou de um dia para o outro
    // se não a partida ocorreu apenas em um dia
    if nHIni > nHFim 
        nTempo := (24 - nHIni) + nHFim
    else
        nTempo := nHFim - nHIni
    endif
    QOUT("a partida durou " + ALLtrim(str(nTempo)) + " horas")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio33()
    /*
A jornada de trabalho semanal de um funcionário é de 40 horas
O funcionário que trabalhar mais de 40 horas receberá hora extra, 
cujo cálculo é o valor da hora regular com um acréscimo de 50%.
leia o número de horas trabalhadas em um mês
salário por hora
escreva o salário total do funcionário
e deverá ser acrescido das horas extras, caso tenham sido trabalhadas
(considere que o mês possua 4 semanas exatas)
    */
    local nHorasMes, nSalarioHora, nSalarioMes
    QOUT("***************")
    QOUT("* Exercicio33 *")
    ACCEPT "Horas no mes: " TO nHorasMes
    ACCEPT "Salario por hora: " TO nSalarioHora
    nHorasMes := val(nHorasMes)
    nSalarioHora := val(nSalarioHora)
    if nHorasMes > 160 // descobrir se tem horas extras para calcular
        nSalarioMes := (160 * nSalarioHora) +  ((nHorasMes - 160) * (nSalarioHora * 1.5 ))
    else // calculo sem hora extra
        nSalarioMes := nHorasMes * nSalarioHora
    endif
    QOUT("salario do mes = R$ " + ALLtrim(str(round(nSalarioMes,2))))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio34()
    // Ler um valor e escrever se é positivo, negativo ou zero.
    local nValor
    QOUT("***************")
    QOUT("* Exercicio34 *")
    ACCEPT "Informe um numero: " TO nValor
    nValor := val(nValor)
    if nValor > 0 
        QOUT("o numero " + ALLtrim(str(nValor)) + " e positivo")
    elseif nValor < 0 
        QOUT("o numero " + ALLtrim(str(nValor)) + " e negativo")
    else 
        QOUT("o numero " + ALLtrim(str(nValor)) + " e zero")
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio35()
    /**
ler um nome de usuário (user name) e uma senha
Caso correspondam aos dados armazenados internamente no programa através do uso de constantes (“chumbado”), 
deve ser apresentada a mensagem “Acesso permitido”
Caso o usuário/senha não coincidam, exibir a mensagem “Usuário ou senha inválido”. 
a verificação da senha só deverá ocorrer caso o usuário coincida, 
porém o usuário não deve saber especificamente 
se foi o nome de usuário ou a senha que não coincidiu.
*/
    local cUserName, cSenha
    #DEFINE cSysUserName  "adm"
    #DEFINE cSysSenha  "123"
    QOUT("***************")
    QOUT("* Exercicio35 *")
    ACCEPT "Usuario: " TO cUserName
    ACCEPT "Senha: " TO cSenha
    // sem ocultar o password , sem converter para um hash
    // se alguem pergunter eu nego que fiz esse codigo
    if cUserName == cSysUserName .AND. cSenha == cSysSenha
        QOUT("Acesso permitido")
    else
        QOUT("Usuario ou senha invalido")
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio36()
    local cCaracter
    QOUT("***************")
    QOUT("* Exercicio36 *")
    ACCEPT "Digite um caracter: " TO cCaracter
    if IsAlpha(cCaracter)
        cCaracter := upper(left(cCaracter, 1))
        if cCaracter == "A" .OR. cCaracter == "E" .OR. cCaracter == "I" .OR. cCaracter == "O" .OR. cCaracter == "U" 
            QOUT(cCaracter + " e uma vogal")
        endif
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio37()
    local nMes
    QOUT("***************")
    QOUT("* Exercicio37 *")
    ACCEPT "Informe o mes (numero): " TO nMes
    nMes := val(nMes)
    if nMes == 1 .OR. nMes == 3 .OR. nMes == 5 .OR. nMes == 7 .OR. nMes == 8 .OR. nMes == 10 .OR. nMes == 12 
        QOUT("este mes possui 31 dias")
    elseif nMes == 4 .OR. nMes == 6 .OR. nMes == 9 .OR. nMes == 11
        QOUT("este mes possui 30 dias")
    elseif nMes == 2
        QOUT("este mes possui 28 dias (29 em ano bissexto)")
    else
        QOUT("mes invalido")
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio38()
    local cCaracter
    QOUT("***************")
    QOUT("* Exercicio38 *")
    ACCEPT "Digite um caracter: " TO cCaracter
    if IsAlpha(cCaracter)
        cCaracter := upper(left(cCaracter, 1))
        if cCaracter == "A" .OR. cCaracter == "E" .OR. cCaracter == "I" .OR. cCaracter == "O" .OR. cCaracter == "U" 
            QOUT(cCaracter + " e uma vogal")
        else
            QOUT(cCaracter + " e uma consoante")
        endif
    elseif IsDigit(cCaracter)
        QOUT(cCaracter + " e um numero")
    else
        QOUT(cCaracter + " e um caracter especial")
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio39()
    // IsLeap()   Tests if a specific year is a leap year
    // DiadoAno := DoY(dData)
    local dData 
    QOUT("***************")
    QOUT("* Exercicio39 *")
    ACCEPT "Informar uma data: (aaaa/mm/dd) " TO dData
    QOUT("")
    dData := CtoD(dData)
    QOUT("Este e o " + ALLtrim(str(DoY(dData))) + "º dia do ano indicado")
    QOUT("na ", ALLtrim(str(hb_Week(dData))), "ª semana do ano indicado")
    if IsLeap(Year( dData ))
        QOUT(StrZero( Year( dData ), 4 ) + " e um ano bixesto")
    else
        QOUT(StrZero( Year( dData ), 4 ) + " NAO e um ano bixesto")
    endif
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio40()
    Local nA, nB, nC
    QOUT("***************")
    QOUT("* Exercicio40 *")
    QOUT("***************")
    QOUT("digite os lados de um triangulo")
    ACCEPT "Digite o valor de a: " to nA
    ACCEPT "Digite o valor de b: " to nB
    ACCEPT "Digite o valor de c: " to nC
    nA := val(nA)
    nB := val(nB)
    nC := val(nC)

    if nA >= nB + nC .OR. nB >= nA + nC .OR. nC >= nA + nB
        QOUT("os valores informados NAO formam um triangulo")
    else
        // deverá ser indicado qual tipo de triângulo foi formado: isósceles, escaleno ou equilátero. 
        if nA == nB .AND. nA == nC // equilátero possui os três lados com as mesmas medidas
            QOUT("triangulo equilatero")
            QOUT("possui os tres lados com as mesmas medidas")
        else
            if nA == nB .OR. nA == nC .OR. nB == nC // isósceles dois lados congruentes, ou seja, com a mesma medida
                QOUT("triangulo isoceles")
                QOUT("dois lados congruentes, ou seja, com a mesma medida")
            else // escaleno as medidas dos lados são todas diferentes
                QOUT("triangulo escaleno")
                QOUT("as medidas dos lados sao todas diferentes")
            endif
        endif
    endif

    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio41()
    // Efetuara leitura de três valores (variáveis A, B e C) e apresentar o maior deles.
    Local nA, nB, nC, nMax
    QOUT("***************")
    QOUT("* Exercicio41 *")
    ACCEPT "Digite o valor de a: " to nA
    ACCEPT "Digite o valor de b: " to nB
    ACCEPT "Digite o valor de c: " to nC
    nMax := Max(val(nA) , val(nB))
    nMax := Max(nMax , val(nC))
    QOUT("maior = " + str(nMax))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio42()
    // Efetuar a leitura de 3 valores inteiros e exibir na tela o menor e o maior deles.
    local aValores := {}
    Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 3
    QOUT("***************")
    QOUT("* Exercicio42 *")
    for nI := 1 to nTamanho
        ACCEPT "Digite um numero: " to cEntrada   
        aAdd(aValores, Val(cEntrada))
    next nI
    aValores := aSort(aValores)
    QOUT("menor = " + str(aValores[1]))
    QOUT("maior = " + str(aValores[len(aValores)]))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio43()
    // Efetuar a leitura de 4 valores inteiros e exibir na tela o menor e o maior deles.
    local aValores := {}
    Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 4
    QOUT("***************")
    QOUT("* Exercicio43 *")
    for nI := 1 to nTamanho
        ACCEPT "Digite um numero: " to cEntrada   
        aAdd(aValores, Val(cEntrada))
    next nI
    aValores := aSort(aValores)
    QOUT("menor = " + str(aValores[1]))
    QOUT("maior = " + str(aValores[len(aValores)]))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio44()
    // Efetuar a leitura de 5 valores inteiros e exibir na tela o menor e o maior deles
    local aValores := {}
    Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 5
    QOUT("***************")
    QOUT("* Exercicio44 *")
    for nI := 1 to nTamanho
        ACCEPT "Digite um numero: " to cEntrada   
        aAdd(aValores, Val(cEntrada))
    next nI
    aValores := aSort(aValores)
    QOUT("menor = " + str(aValores[1]))
    QOUT("maior = " + str(aValores[len(aValores)]))
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio45()
    //
    QOUT("***************")
    QOUT("* Exercicio45 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio46()
    //
    QOUT("***************")
    QOUT("* Exercicio46 *")
    QOUT("Atraves de teste de mesa, analise e indique a finalidade do algoritmo")
    QOUT("Leia(R1, R2)")
    QOUT("Se R1 >= R2 entao")
    QOUT("  Aux R1")
    QOUT("  R1 R2")
    QOUT("  R2 Aux")
    QOUT("Fimse")
    QOUT("Escreva(R1, R2)")
    QOUT("")
    QOUT("Este algotitimo ordena de forma crescente e mostra os numeros que foram recebidos na entrada")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio47()
    local nRandon, nValor
    QOUT("***************")
    QOUT("* Exercicio47 *")
    nRandon := HB_RandomInt(0,100)
    //QOUT(STR(nRandon))
    while .T.
        ACCEPT "Informe um valor: " TO nValor
        if VAL(nValor) == nRandon
            QOUT("")
            QOUT("ACERTOU MISERAVI")
            exit
        elseif VAL(nValor) > nRandon
            QOUT("Tente um numero menor")
        else
            QOUT("Tente um numero maior")
        endif
    enddo
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio48()
    // Efetuar a leitura de três valores (variáveis A, B e C) e apresentar os valores dispostos em ordem crescente.
    local aValores := {}
    Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 3
    QOUT("***************")
    QOUT("* Exercicio48 *")
    for nI := 1 to nTamanho
        ACCEPT "Digite um numero: " to cEntrada   
        aAdd(aValores, Val(cEntrada))
    next nI
    aValores := aSort(aValores)    
    for nI := 1 to len(aValores)
        QOUT("Posicao [" + Alltrim(Str(nI)) + "]: " + Alltrim(Str(aValores[nI])))   
    next nI
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio49()
    // Efetuar a leitura de 4 valores (variáveis A, B, C e D) e apresentar os valores dispostos em ordem crescente.
    local aValores := {}
    Local cEntrada := ""
    Local nI       := 0
    local nTamanho := 4
    QOUT("***************")
    QOUT("* Exercicio49 *")
    for nI := 1 to nTamanho
        ACCEPT "Digite um numero: " to cEntrada   
        aAdd(aValores, Val(cEntrada))
    next nI
    aValores := aSort(aValores)    
    for nI := 1 to len(aValores)
        QOUT("Posicao [" + Alltrim(Str(nI)) + "]: " + Alltrim(Str(aValores[nI])))   
    next nI
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


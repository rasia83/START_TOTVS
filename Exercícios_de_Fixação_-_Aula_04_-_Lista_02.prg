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

    // Exercicio20()
    // Exercicio21()
    Exercicio22()
    Exercicio23()
    // Exercicio24()
    // Exercicio25()
    // Exercicio26()
    // Exercicio27()
    // Exercicio28()
    // Exercicio29()
    // Exercicio30()
    // Exercicio31()
    // Exercicio32()
    // Exercicio33()
    // Exercicio34()
    // Exercicio35()
    // Exercicio36()
    // Exercicio37()
    // Exercicio38()
    // Exercicio39()
    // Exercicio40()
    // Exercicio41()
    // Exercicio42()
    // Exercicio43()
    // Exercicio44()
    // Exercicio45()
    // Exercicio46()
    // Exercicio47()
    // Exercicio48()
    // Exercicio49()
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
    //
    QOUT("***************")
    QOUT("* Exercicio23 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio24()
    //
    QOUT("***************")
    QOUT("* Exercicio24 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio25()
    //
    QOUT("***************")
    QOUT("* Exercicio25 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio26()
    //
    QOUT("***************")
    QOUT("* Exercicio26 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio27()
    //
    QOUT("***************")
    QOUT("* Exercicio27 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio28()
    //
    QOUT("***************")
    QOUT("* Exercicio28 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio29()
    //
    QOUT("***************")
    QOUT("* Exercicio29 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio30()
    //
    QOUT("***************")
    QOUT("* Exercicio30 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio31()
    //
    QOUT("***************")
    QOUT("* Exercicio31 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio32()
    //
    QOUT("***************")
    QOUT("* Exercicio32 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio33()
    //
    QOUT("***************")
    QOUT("* Exercicio33 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio34()
    //
    QOUT("***************")
    QOUT("* Exercicio34 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio35()
    //
    QOUT("***************")
    QOUT("* Exercicio35 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio36()
    //
    QOUT("***************")
    QOUT("* Exercicio36 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio37()
    //
    QOUT("***************")
    QOUT("* Exercicio37 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio38()
    //
    QOUT("***************")
    QOUT("* Exercicio38 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio39()
    //
    QOUT("***************")
    QOUT("* Exercicio39 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio40()
    //
    QOUT("***************")
    QOUT("* Exercicio40 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio41()
    //
    QOUT("***************")
    QOUT("* Exercicio41 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio42()
    //
    QOUT("***************")
    QOUT("* Exercicio42 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio43()
    //
    QOUT("***************")
    QOUT("* Exercicio43 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio44()
    //
    QOUT("***************")
    QOUT("* Exercicio44 *")
    QOUT("")
    QOUT("")
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
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio47()
    //
    QOUT("***************")
    QOUT("* Exercicio47 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio48()
    //
    QOUT("***************")
    QOUT("* Exercicio48 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil

Function Exercicio49()
    //
    QOUT("***************")
    QOUT("* Exercicio49 *")
    QOUT("")
    QOUT("")
    QOUT("***************")
    QOUT("")
Return nil


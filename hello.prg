// #include "const.ch"
#define meu_nome "Tiago Rasia"

Function Main()
local nVal1 := 0
local nVal2 := 0
local cTexto 
    local cVar
    local nI := 0

    ? ""
    ? "Hello Starter", meu_nome, "!"
    ? "Seja bem vindo ao programa Start TOTVS IP/TM!"
    ? ""
    ? "raiz quadrada de 150 = " , sqrt(150)
    ? ""
    ? "agora sao: ", time()
    ? "de meia noite até agora se passaram ", Seconds() , " segundos"
    ? "Hoje e ", CDoW(Date()) , ", ", Day(Date()), " de ", CMonth(Date()) , " de ", Year(Date())
    ? "ja se passaram ", hb_Week(Date()), " semanas deste ano"
    ? ""
    ? "o sistema operacional que uso é ", os()
    ? "Version of Harbour compiler: " , Version()
    ? ""

    Wait "Pressione uma tecla para continuar."

    ? ""
    input "Informe a primeira nota: " to nVal1
    input "Informe a segunda nota:" to nVal2
    ? "A media do alune e = " , (nVal1+nVal2)/2
    ? ""

    Wait "Pressione uma tecla para continuar."

    ? ""
    Accept "Qual seu nome ? " to cTexto
    cTexto := AllTrim(cTexto)
    ? "Ola, " , cTexto
    ? Upper(cTexto)
    ? Lower(cTexto)
    ? "Agora vou chamalo de agente ", Left(cTexto,1),"."
    // ? Left( "Hello Harbour", 1 )




    WAIT "Iniciando - Pressione uma tecla"

    for nI := 100 to 3000 step 100
        Tone(nI, 2)
    next nI

    Qout("Fim")


    Wait "Pressione uma tecla para continuar."


RETURN nil 

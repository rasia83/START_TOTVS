#include "protheus.ch"

// c) Rotina MBrowse da tabela ZZ1

USER FUNCTION STTCC003()

    LOCAL cFiltro   := ""

    // e) Criar uma legenda na rotina mBrowse da tabela ZZ1
    LOCAL aCores  := {{ 'ZZ1->ZZ1_VALCER > (Date()+30)' , 'ENABLE'  },; //Caso o periodo de vencimento seja maior que 30 dias, a legenda fica verde
                    { 'ZZ1->ZZ1_VALCER < (Date()+30)' , 'DISABLE' }}  //Caso contrário, fica vermelha


    PRIVATE cCadastro := "Controle de Fornecimento"
    PRIVATE aRotina     := {{"Pesquisar",	            "AxPesqui"      , 0, 1 },;
                            {"Visualizar",	            "AxVisual"      , 0, 2 },;
                            {"Incluir",		            "AxInclui"      , 0, 3 },;
                            {"Alterar",		            "AxAltera"      , 0, 4 },;
                            {"Excluir",		            "AxDeleta"      , 0, 5 },;
                            {"Relatorio",	            "U_STIPZZ1R"    , 0, 6 },;  // g) Criar um relatório com todas as colunas para tabela ZZ1
                            {"Relat. Cert. a expirar",	"U_ZZ1_CERT30" 	, 0, 7 },;  // k) Criar um relatório mostrando apenas os certificados que irão vencer nos próximos 30 dias
                            {"Exportar TXT",	        "U_TXTZZ1"      , 0, 8 },;  // n) Criar uma rotina para exportar um arquivo TXT com o cabeçalho e todas as colunas para tabela ZZ1
                            {"Exportar CSV",	        "U_CSVZZ1"      , 0, 9 }}
        
    // m) Criar uma rotina, que ajuste o total de material entregue CONFORME e NÃO CONFORME
    U_UPDATEZZ1()     
                            
    dbSelectArea('ZZ1')
    dbSetOrder(1)

    mBrowse( ,,,,'ZZ1',,,,,,aCores,,,,,,,,cFiltro)

RETURN NIL         



/* ************************************************************************************ */                      
// m) Criar uma rotina, que ajuste o total de material entregue CONFORME e NÃO CONFORME na tabela ZZ1
User Function UPDATEZZ1()      

	PRIVATE nOk  := 0
	PRIVATE nNOK := 0

    dbselectarea('ZZ1') // Selecionando a tabela a ser alterada
    dbsetorder(1)

    ZZ1->(dbgotop()) // Indo ao topo dela 

    // Loop para fazer a pesquisa nas tabelas e comparar
    while ZZ1->(!eof())     
		
        nOk := 0 // variável que vai somar valores totais OK
        nNOK := 0 // variável que vai somar os valores totais nao OK 

        dbselectarea('ZZ2') // Selecionando a tabela a ser vasculhada
        dbsetorder(5) // Escolhendo o índice a ser comparado/pesquisado pelo programa
        dbseek(xFilial("ZZ2")+ZZ1->ZZ1_CODIGO+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO) // Pesquisando pelo índice mencionado

        //Loop que vai percorrer a tabela e identificar os índices iguais para realizar a soma das quantidades OK e N.OK.
        // alert(ZZ1->ZZ1_CODIGO+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO + " == " + ZZ2->ZZ2_CONFOR+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO)
        while (ZZ1->ZZ1_CODIGO+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO == ZZ2->ZZ2_CONFOR+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO .and. ZZ2->(!Eof()))
            nOK += ZZ2->ZZ2_QTDOK
            nNOK += ZZ2->ZZ2_QTDNOK
            ZZ2->(DBSKIP()) // Para evitar loop infinito
        End do

        WHILE .T. // Enquanto meu RECLOCK for 'verdadeiro', ele vai executar a rotina.
            IF RECLOCK("ZZ1",.F.) // Se meu RECLOCK der 'falso' ele vai gravar os itens na variável e sair.
                ZZ1->ZZ1_TOTOK := nOK
                ZZ1->ZZ1_TOTNOK := nNOK
                msunlock()
                EXIT // Aqui ele sai desse loop.
            END IF
        END DO

        dbselectarea('ZZ1') //Depois de selecionar a ZZ2, ele volta para a ZZ1 e dá um 'skip' para o próximo valor.
        ZZ1->(dbskip())  
        
		// ALERT('while ZZ1->(!eof())  ' + str(nOK) + ' ' + str(nNOK) )
    end do

Return Nil


/* ************************************************************************************ */                      
// g) Criar um relatório com todas as colunas para tabela ZZ1
User Function STIPZZ1R()  
                                       
//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³ Define variaveis padroes para todos os relatorios...                     ³
//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
PRIVATE nLimite     := 216       // Limite de Colunas
PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
PRIVATE cTitulo     := "Relatorio do Controle de Fornecimento" // Titulo do Relatorio
PRIVATE cDesc1      := "" // Descritivo para o usuario
PRIVATE cDesc2      := "" // Descritivo para o usuario
PRIVATE cDesc3      := ""
PRIVATE cAlias      := "ZZ1" // Alias
PRIVATE cRel        := "STIPZZ1" // Nome do Relatorio
PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
PRIVATE cCabecalho  := "Relatorio Referente ao Controle de Fornecimento"
PRIVATE m_pag       := 1    // Variavel padrao para contar numero da pagina
PRIVATE lCompres    := .F. // nao mude e padrao
PRIVATE lDicion     := .F. // nao mude e padrao
PRIVATE lFiltro     := .F. // Habilitar o filtro ou nao
PRIVATE lCrystal    := .F. // nao mudar controle do crystal reports
PRIVATE aReturn     := { "", 1,"", 1, 1, 1, "",1 } // padrao nao mude
PRIVATE lAbortPrint := .F. // Controle para abortar (sempre como esta aqui)
PRIVATE cCabec1     := "" // Primeira linha do cabecalho ;
PRIVATE cCabec2     := "" // utilizado pela funcao cabec...
PRIVATE nColuna     := 03 // Numero da coluna que sera impresso as colunas
PRIVATE nRegistros  := 0
PRIVATE nI	 		:= 0
PRIVATE cNomeFor  	:= ""

dbSelectArea("ZZ1") // SELECIONA A TABELA
dbSetOrder(1) // DEFINE O INDICE A SER UTILIZADO
ZZ1->(dbGoTop()) // VAI PAR AO PRIMEIRO REGISTRO 

cRel	:= SetPrint(cAlias,cRel,"",@cTitulo,cDesc1,cDesc2,cDesc3, .F., {}, .F., cTamanho, , .F.)   

SetDefault(aReturn,cAlias)

@ ++nLi, 80 pSay "**** "+ALLTRIM(cTitulo)+" ****"
@ ++nLi, nColuna pSay Replicate("*", nLimite)
@ ++nLi, nColuna pSay cCabecalho
@ ++nLi, nColuna pSay Replicate("*", nLimite)

    @ ++nLi, nColuna PSAY "CODIGO"
    @ nLi, 12 PSAY "COD FORNEC"
    @ nLi, 25 PSAY "LOJA"
    @ nLi, 35 PSAY "NOME FORNEC"
    @ nLi, 80 PSAY "DADOS CERT" 
    @ nLi, 120 PSAY "VAL. CERTIF."
    @ nLi, 140 PSAY "TOLERANCIA"
    @ nLi, 160 PSAY "TOTAL OK"
    @ nLi, 180 PSAY "TOTAL N. OK"

While !ZZ1->(Eof()) .AND. !lAbortPrinT
    
    cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")      
                                          
    @ ++nLi, nColuna PSAY ZZ1->ZZ1_CODIGO
    @ nLi, 12 PSAY ZZ1->ZZ1_FORNEC
    @ nli, 25 PSay ZZ1->ZZ1_LOJAFO
    @ nli, 35 PSay ALLTRIM(cNomeFor)
    @ nLi, 80 PSAY Left(ZZ1->ZZ1_CERTIF , 38 )
    @ nLi, 120 PSAY ZZ1->ZZ1_VALCER
    @ nLi, 140 PSAY ZZ1->ZZ1_TOLERA
    @ nLi, 160 PSAY ZZ1->ZZ1_TOTOK
    @ nLi, 180 PSAY ZZ1->ZZ1_TOTNOK 
    
    nRegistros++

    ZZ1->(dbSkip())
    
EndDo


@ ++nLi, nColuna pSay Replicate("*", nLimite)
@ ++nLi, nColuna pSay ALLTRIM(STR(nRegistros)) + " Registro (s) Listado (s)"
@ ++nLi, nColuna pSay Replicate("*", nLimite)

Set Printer To
Ourspool(cRel)

Return nil
      
   

/* ************************************************************************************ */
// k) Criar um relatório mostrando apenas os certificados que irão vencer nos próximos 30 dias
User Function ZZ1_CERT30()

    PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
    PRIVATE nLimite     := 216       // Limite de Colunas
    PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
    PRIVATE cTitulo     := "Relatorio de Certificados a vencer" // Titulo do Relatorio
    PRIVATE cDesc1      := "Certificados que irão vencer nos próximos 30 dias" // Descritivo para o usuario
    PRIVATE cDesc2      := "" // Descritivo para o usuario
    PRIVATE cDesc3      := ""
    PRIVATE cAlias      := "ZZ1" // Alias
    PRIVATE cRel        := "CERTIF" // Nome do Relatorio
    PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
    PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
    PRIVATE m_pag       := 1    // Variavel padrao para contar numero da pagina
    PRIVATE lCompres    := .F. // nao mude e padrao
    PRIVATE lDicion     := .F. // nao mude e padrao
    PRIVATE lFiltro     := .F. // Habilitar o filtro ou nao
    PRIVATE lCrystal    := .F. // nao mudar controle do crystal reports
    PRIVATE aReturn     := { "", 1,"", 1, 1, 1, "",1 } // padrao nao mude
    PRIVATE lAbortPrint := .F. // Controle para abortar (sempre como esta aqui)
    PRIVATE cCabec1     := "" // Primeira linha do cabecalho ;
    PRIVATE cCabec2     := "" // utilizado pela funcao cabec...
    PRIVATE nColuna     := 03 // Numero da coluna que sera impresso as colunas
    PRIVATE nLinha		:= 0
    PRIVATE nContador   := 0
    PRIVATE cNomeFor  := ""

    cRel	:= SetPrint(cAlias,cRel,"",@cTitulo,cDesc1,cDesc2,cDesc3, .F., {}, .F., cTamanho, , .F.)   

    SetDefault(aReturn,cAlias) 

    dbSelectArea("ZZ1")
    dbSetOrder(1)
    ZZ1->(dbGoTop())
    
    @ ++nLi, nColuna pSay Replicate("*", nLimite)
    @ ++nLi, nColuna pSay "CERTIFICADOS A EXPIRAR"
    @ ++nLi, nColuna pSay Replicate("*", nLimite)

    @ ++nLi, nColuna PSAY "COD.FORN"
    @ nLi, 15 pSay "NOME.FORN."
    @ nLi, 40 psay "VAL.CERT."

    While !ZZ1->(EoF()) .and. !lAbortPrint
            
            cNomeFor := Posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")
            
            if ZZ1->ZZ1_VALCER < (Date() + 30)
                @ ++nLi, nColuna PSAY ZZ1->ZZ1_FORNEC
                @ nLi, 15 pSay Left(ALLTRIM(cNomeFor) , 25 )
                @ nLi, 40 pSay ZZ1->ZZ1_VALCER PICTURE "@E 99/99/99"
            nLinha++  
            end if
            ZZ1->(dbSkip())
    End Do

    @ ++nLi, nColuna pSay Replicate("*", nLimite)
    @ ++nLi, nColuna pSay alltrim(str(nLinha)) + " Registro(s) listado(s)."
    @ ++nLi, nColuna pSay Replicate("*", nLimite)

    Set Printer To
    Ourspool(cRel)
Return nil



        

#include "protheus.ch"

// d) Rotina MBrowse da tabela ZZ2

USER FUNCTION STTCC004()

LOCAL cFiltro   := ""

// f) Criar uma legenda na rotina mBrowse da tabela ZZ2
LOCAL aCores  := {{ 'ZZ2->ZZ2_QTDNOK <= (ZZ2->ZZ2_QTDOK) * 0.10' , 'ENABLE'  },; 
                  { 'ZZ2->ZZ2_QTDNOK > (ZZ2->ZZ2_QTDOK) * 0.10' , 'DISABLE' }}  

PRIVATE cCadastro := "Complemento de Credito"
PRIVATE aRotina     := {{"Pesquisar",	        "AxPesqui"      , 0, 1 },;
						{"Visualizar",  	    "AxVisual"      , 0, 2 },;
						{"Incluir",             "AxInclui"      , 0, 3 },;
						{"Alterar",             "AxAltera"      , 0, 4 },;
						{"Excluir",             "AxDeleta"      , 0, 5 },;
						{"Relatorio",           "U_STIPZZ2R"    , 0, 6 },;  // h) Criar um relatório com todas as colunas para tabela ZZ2h) Criar um relatório com todas as colunas para tabela ZZ2
						{"Relat Nao Conf",      "U_ZZ2_PNCONF"  , 0, 7 },;  // l) Criar um relatório mostrando apenas as entregas que estão com a quantidade NÃO CONFORME, superior a 10% 
						{"Exportar TXT",        "U_TXTZZ2"      , 0, 8 },;  // o) Criar uma rotina para exportar um arquivo TXT com o cabeçalho e todas as colunas para tabela ZZ2
						{"Exportar CSV",        "U_CSVZZ2"      , 0, 9 }}
dbSelectArea('ZZ2')
dbSetOrder(1)

mBrowse( ,,,,'ZZ2',,,,,,aCores,,,,,,,,cFiltro)

RETURN NIL



/* ************************************************************************************ */   
// h) Criar um relatório com todas as colunas para tabela ZZ2
User Function STIPZZ2R()

    //ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    //³ Define variaveis padroes para todos os relatorios...                     ³
    //ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
    PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
    PRIVATE nLimite     := 216       // Limite de Colunas
    PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
    PRIVATE cTitulo     := "Relatorio das Ocorencias do Fornecedor" // Titulo do Relatorio
    PRIVATE cDesc1      := "" // Descritivo para o usuario
    PRIVATE cDesc2      := "" // Descritivo para o usuario
    PRIVATE cDesc3      := ""
    PRIVATE cAlias      := "ZZ2" // Alias
    PRIVATE cRel        := "STIPZZ2" // Nome do Relatorio
    PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
    PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
    PRIVATE cCabecalho  := "Relatorio das Ocorencias do Fornecedor"
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
    PRIVATE cNomeFor  := ""

    dbSelectArea("ZZ2") // SELECIONA A TABELA
    dbSetOrder(1) // DEFINE O INDICE A SER UTILIZADO
    ZZ2->(dbGoTop()) // VAI PAR AO PRIMEIRO REGISTRO

    cRel	:= SetPrint(cAlias,cRel,"",@cTitulo,cDesc1,cDesc2,cDesc3, .F., {}, .F., cTamanho, , .F.)   

    SetDefault(aReturn,cAlias)

    @ ++nLi, nColuna pSay "**** "+cTitulo
    @ nLi, 18 pSay "****"
    @ ++nLi, nColuna pSay Replicate("*", nLimite)
    @ ++nLi, nColuna pSay cCabecalho
    @ ++nLi, nColuna pSay Replicate("*", nLimite)     

    @ ++nLi, nColuna PSAY "CONTROLE"
    @ nLi, 13 PSAY "COD. FORNEC."
    @ nLi, 26 PSAY "LOJA"
    @ nLi, 33 PSAY "NOME FORNEC"
    @ nLi, 80 PSAY "DATA OCORRI." 
    @ nLi, 90 PSAY "HORA"
    @ nLi, 100 PSAY "PRODUTO"
    @ nLi, 140 PSAY "QTDE. OK"
    @ nLi, 155 PSAY "QTDE. N. OK"
    @ nLi, 170 PSAY "VALOR UNIT."
    @ nLi, 185 PSAY "TOTAL OK"
    @ nLi, 200 PSAY "TOTAL N. OK"

    While !ZZ2->(Eof()) .AND. !lAbortPrinT
        
        cNomeFor := posicione("SA2",1,xFilial("SA2")+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO,"A2_NOME")  
                                            
        @ ++nLi, nColuna PSAY ZZ2->ZZ2_CONFOR
        @ nLi, 13 PSAY ZZ2->ZZ2_FORNEC
        @ nli, 26 PSay ZZ2->ZZ2_LOJAFO
        @ nli, 33 PSay LEFT(ALLTRIM(cNomeFor) , 40 ) + Replicate(" ", 40 - LEN(ALLTRIM(cNomeFor)))
        @ nLi, 80 PSAY ZZ2->ZZ2_DATA
        @ nLi, 90 PSAY ZZ2->ZZ2_HORA
        @ nLi, 100 PSAY ZZ2->ZZ2_CODPRO
        @ nLi, 120 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_QTDOK)))) + ALLTRIM(STR(ZZ2->ZZ2_QTDOK))
        @ nLi, 140 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_QTDNOK)))) + ALLTRIM(STR(ZZ2->ZZ2_QTDNOK))
        @ nLi, 160 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_VLRUNI)))) + ALLTRIM(STR(ZZ2->ZZ2_VLRUNI))
        @ nLi, 180 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_TOTOK)))) + ALLTRIM(STR(ZZ2->ZZ2_TOTOK))
        @ nLi, 200 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_TOTNOK)))) + ALLTRIM(STR(ZZ2->ZZ2_TOTNOK))

        nRegistros++

        ZZ2->(dbSkip())
        
    EndDo

    @ ++nLi, nColuna pSay Replicate("*", nLimite)
    @ ++nLi, nColuna pSay alltrim(str(nRegistros)) + " Registro(s) listado(s)."
    @ ++nLi, nColuna pSay Replicate("*", nLimite)

    Set Printer To
    Ourspool(cRel)
Return nil


/* ************************************************************************************ */ 
// l) Criar um relatório mostrando apenas as entregas que estão com a quantidade NÃO CONFORME, superior a 10%
User Function ZZ2_PNCONF() // Relatorio das entregas não conforme > 10%

    //ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
    //³ Define variaveis padroes para todos os relatorios...                     ³
    //ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  

    PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
    PRIVATE nLimite     := 216       // Limite de Colunas
    PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
    PRIVATE cTitulo     := "Titulo do Relatorio 1" // Titulo do Relatorio
    PRIVATE cDesc1      := "Descricao do Relatorio 1" // Descritivo para o usuario
    PRIVATE cDesc2      := "" // Descritivo para o usuario
    PRIVATE cDesc3      := ""
    PRIVATE cAlias      := "ZZ2" // Alias
    PRIVATE cRel        := "VALID_CERT" // Nome do Relatorio
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

    dbSelectArea("ZZ2")
    dbSetOrder(1)
    ZZ2->(dbGoTop())
    
    @ ++nLi, nColuna pSay Replicate("*", nLimite)
    @ ++nLi, nColuna pSay "CERTIFICADOS A EXPIRAR"
    @ ++nLi, nColuna pSay Replicate("*", nLimite)

    @ ++nLi, nColuna PSAY "CONTROLE"
    @ nLi, 13 PSAY "COD. FORNEC."
    @ nLi, 26 PSAY "LOJA"
    @ nLi, 33 PSAY "NOME FORNEC"
    @ nLi, 80 PSAY "DATA OCORRI." 
    @ nLi, 90 PSAY "HORA"
    @ nLi, 100 PSAY "PRODUTO"
    @ nLi, 140 PSAY "QTDE. OK"
    @ nLi, 155 PSAY "QTDE. N. OK"
    @ nLi, 170 PSAY "VALOR UNIT."
    @ nLi, 185 PSAY "TOTAL OK"
    @ nLi, 200 PSAY "TOTAL N. OK"    


    While !ZZ2->(EoF()) .and. !lAbortPrint
        
		cNomeFor := posicione("SA2",1,xFilial("SA2")+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO,"A2_NOME")
         
		if ZZ2->ZZ2_QTDNOK > (ZZ2->ZZ2_QTDOK * 0.10)
                           
            @ ++nLi, nColuna PSAY ZZ2->ZZ2_CONFOR
            @ nLi, 13 PSAY ZZ2->ZZ2_FORNEC
            @ nli, 26 PSay ZZ2->ZZ2_LOJAFO
            @ nli, 33 PSay LEFT(ALLTRIM(cNomeFor) , 40 ) + Replicate(" ", 40 - LEN(ALLTRIM(cNomeFor)))
            @ nLi, 80 PSAY ZZ2->ZZ2_DATA
            @ nLi, 90 PSAY ZZ2->ZZ2_HORA
            @ nLi, 100 PSAY ZZ2->ZZ2_CODPRO
            @ nLi, 120 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_QTDOK)))) + ALLTRIM(STR(ZZ2->ZZ2_QTDOK))
            @ nLi, 140 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_QTDNOK)))) + ALLTRIM(STR(ZZ2->ZZ2_QTDNOK))
            @ nLi, 160 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_VLRUNI)))) + ALLTRIM(STR(ZZ2->ZZ2_VLRUNI))
            @ nLi, 180 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_TOTOK)))) + ALLTRIM(STR(ZZ2->ZZ2_TOTOK))
            @ nLi, 200 PSAY Replicate(" ", 12 - LEN(ALLTRIM(STR(ZZ2->ZZ2_TOTNOK)))) + ALLTRIM(STR(ZZ2->ZZ2_TOTNOK))

		    nLinha++  

		end if
    ZZ2->(dbSkip())
    End Do

    @ ++nLi, nColuna pSay Replicate("*", nLimite)
    @ ++nLi, nColuna pSay alltrim(str(nLinha)) + " Registro(s) listado(s)."
    @ ++nLi, nColuna pSay Replicate("*", nLimite)

    Set Printer To
    Ourspool(cRel)   

Return nil       


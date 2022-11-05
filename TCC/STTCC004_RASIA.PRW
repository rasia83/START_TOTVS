#include "protheus.ch"
          
// Rotina MBrowse da tabela ZZ2


USER FUNCTION STTCC004()
	
	LOCAL cFiltro   := "" 
	LOCAL aCores  := {{ 'ZZ2->ZZ2_QTDNOK < (ZZ2->ZZ2_QTDOK) * 0.10' , 'ENABLE'  },; 
                      { 'ZZ2->ZZ2_QTDNOK > (ZZ2->ZZ2_QTDOK) * 0.10' , 'DISABLE' }}
	
	PRIVATE cCadastro := "Controle de Fornecimento"
	PRIVATE aRotina     := {{"Pesquisar",   "AxPesqui"          , 0, 1 },;
	                        {"Visualizar",  "AxVisual"          , 0, 2 },;
	                        {"Incluir",     "AxInclui"          , 0, 3 },;
	                        {"Alterar",     "AxAltera"          , 0, 4 },;
	                        {"Excluir",     "AxDeleta"          , 0, 5 },;					   
	                        {"Relatorio",	"U_STIZZ2"  	, 0, 6 } }
	                    
	
	dbSelectArea('ZZ2')
	dbSetOrder(1)
	
	mBrowse( ,,,,'ZZ2',,,,,,aCores,,,,,,,,cFiltro)   
	// mBrowse( ,,,,'ZZ2',,,,,,,,,,,,,,cFiltro)
	     	
Return Nil             
                  


User Function STIZZ2()
	
	//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
	//³ Define variaveis padroes para todos os relatorios...                     ³
	//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
	PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
	PRIVATE nLimite     := 220       // Limite de Colunas
	PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
	PRIVATE cTitulo     := "Relatorio de Ocorrências do Fornecedor" // Titulo do Relatorio
	PRIVATE cDesc1      := "" // Descritivo para o usuario
	PRIVATE cDesc2      := "" // Descritivo para o usuario
	PRIVATE cDesc3      := ""
	PRIVATE cAlias      := "ZZ2" // Alias
	PRIVATE cRel        := "IMPXPTO" // Nome do Relatorio
	PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
	PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
	PRIVATE cCabecalho  := "Relatorio Referente as Ocorrências do Fornecedor"
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
	    @ nLi, 15 PSAY "COD. FORNEC."
	    @ nLi, 30 PSAY "LOJA FORNEC"
	    @ nLi, 45 PSAY "NOME FORNEC"
	    @ nLi, 80 PSAY "DATA" 
	    @ nLi, 90 PSAY "HORA"
	    @ nLi, 100 PSAY "PRODUTO"
	    @ nLi, 120 PSAY "QTD OK"
	    @ nLi, 140 PSAY "QTD N. OK"
	    @ nLi, 160 PSAY "VALOR UNIT." 
	    @ nLi, 180 PSAY "TOTAL OK" 
	    @ nLi, 200 PSAY "TOTAL N. OK" 
	
	While !ZZ2->(Eof()) .AND. !lAbortPrinT
	     
		cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")  
	                                          
	    @ ++nLi, nColuna PSAY ZZ2->ZZ2_CONFOR
	    @ nLi, 15 PSAY ZZ2->ZZ2_FORNEC
	    @ nli, 30 PSay ZZ2->ZZ2_LOJAFO
	    @ nli, 45 PSay ALLTRIM(cNomeFor)
	    @ nLi, 80 PSAY ZZ2->ZZ2_DATA
	    @ nLi, 90 PSAY ZZ2->ZZ2_HORA
	    @ nLi, 100 PSAY ZZ2->ZZ2_CODPRO
	    @ nLi, 120 PSAY ZZ2->ZZ2_QTDOK
	    @ nLi, 140 PSAY ZZ2->ZZ2_QTDNOK
	    @ nLi, 160 PSAY ZZ2->ZZ2_VLRUNI
	    //@ nLi, 180 PSAY ZZ2->ZZ2_TOTOK
	    //@ nLi, 200 PSAY ZZ2->ZZ2_TOTNOK
		
	    nRegistros++
	
	    ZZ2->(dbSkip())
	    
	EndDo
	
	@ ++nLi, nColuna pSay Replicate("*", nLimite)
	@ ++nLi, nColuna pSay ALLTRIM(STR(nRegistros)) + " Registro (s) Listado (s)"
	@ ++nLi, nColuna pSay Replicate("*", nLimite)
	
    
	Set Printer To
	
	Ourspool(cRel)
	

Return nil

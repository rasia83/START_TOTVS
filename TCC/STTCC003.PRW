#include "protheus.ch"

USER FUNCTION STTCC003()

LOCAL cFiltro   := ""
LOCAL aCores  := {{ 'ZZ1->ZZ1_VALCER > (Date()+30)' , 'ENABLE'  },; //Caso o periodo de vencimento seja maior que 30 dias, a legenda fica verde
                  { 'ZZ1->ZZ1_VALCER < (Date()+30)' , 'DISABLE' }}  //Caso contrário, fica vermelha

PRIVATE cCadastro := "Controle de Fornecimento"
PRIVATE aRotina     := {{"Pesquisar",	"AxPesqui"   	   	, 0, 1 },;
						{"Visualizar",	"AxVisual"   		, 0, 2 },;
						{"Incluir",		"AxInclui"  	 	, 0, 3 },;
						{"Alterar",		"AxAltera"   		, 0, 4 },;
						{"Excluir",		"AxDeleta"     		, 0, 5 },;
						{"Relatorio",	"U_STIPCLIENTE"  	, 0, 6 },;
						{"Relat. Cert.",	"U_STCCRELAT03" , 0, 7 },;
						{"Exportar TXT",	"U_TXTZZ1"      , 0, 8 },;
						{"Exportar CSV",	"U_CSVZZ1"      , 0, 9 }}
                        
dbSelectArea('ZZ1')
dbSetOrder(1)

mBrowse( ,,,,'ZZ1',,,,,,aCores,,,,,,,,cFiltro)

RETURN NIL

User Function STIPCLIENTE()  
                                       
//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³ Define variaveis padroes para todos os relatorios...                     ³
//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
PRIVATE nLimite     := 220       // Limite de Colunas
PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
PRIVATE cTitulo     := "Relatorio do Controle de Fornecimento" // Titulo do Relatorio
PRIVATE cDesc1      := "" // Descritivo para o usuario
PRIVATE cDesc2      := "" // Descritivo para o usuario
PRIVATE cDesc3      := ""
PRIVATE cAlias      := "ZZ1" // Alias
PRIVATE cRel        := "IMPXPTO" // Nome do Relatorio
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

@ ++nLi, nColuna pSay "**** "+cTitulo
@ nLi, 18 pSay "****"
@ ++nLi, nColuna pSay Replicate("*", nLimite)
@ ++nLi, nColuna pSay cCabecalho
@ ++nLi, nColuna pSay Replicate("*", nLimite)

    @ ++nLi, nColuna PSAY "CODIGO"
    @ nLi, 20 PSAY "COD. FORNEC."
    @ nLi, 40 PSAY "LOJA FORNEC"
    @ nLi, 60 PSAY "NOME FORNEC"
    @ nLi, 80 PSAY "DADOS CERT" 
    @ nLi, 100 PSAY "VAL. CERTIF."
    @ nLi, 120 PSAY "TOLERANCIA"
    @ nLi, 140 PSAY "TOTAL OK"
    @ nLi, 160 PSAY "TOTAL N. OK"

While !ZZ1->(Eof()) .AND. !lAbortPrinT
    
    cNomeFor  := posicione("SA2",1,xFilial("SA2")+ZZ1->ZZ1_FORNEC+ZZ1->ZZ1_LOJAFO,"A2_NOME")      
                                          
    @ ++nLi, nColuna PSAY ZZ1->ZZ1_CODIGO
    @ nLi, 20 PSAY ZZ1->ZZ1_FORNEC
    @ nli, 40 PSay ZZ1->ZZ1_LOJAFO
    @ nli, 60 PSay ALLTRIM(cNomeFor)
    @ nLi, 80 PSAY Left(ZZ1->ZZ1_CERTIF , 19 )
    @ nLi, 100 PSAY ZZ1->ZZ1_VALCER
    @ nLi, 120 PSAY ZZ1->ZZ1_TOLERA
    @ nLi, 140 PSAY ZZ1->ZZ1_TOTOK
    @ nLi, 160 PSAY ZZ1->ZZ1_TOTNOK 
    
    nRegistros++

    ZZ1->(dbSkip())
    
EndDo


@ ++nLi, nColuna pSay Replicate("*", nLimite)
@ ++nLi, nColuna pSay ALLTRIM(STR(nRegistros)) + " Registro (s) Listado (s)"
@ ++nLi, nColuna pSay Replicate("*", nLimite)

Set Printer To
Ourspool(cRel)

Return nil

User Function STCCRELAT03() // Relatório dos certificados a expirar

//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³ Define variaveis padroes para todos os relatorios...                     ³
//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  

	ALERT('Relatórios a expirar em 30 dias!') //Apenas um aviso do que se trata o relatório solicitado.

PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
PRIVATE nLimite     := 220       // Limite de Colunas
PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
PRIVATE cTitulo     := "Relatorio do Controle de Fornecimento" // Titulo do Relatorio
PRIVATE cDesc1      := "Descricao do Relatorio 1" // Descritivo para o usuario
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
   


        

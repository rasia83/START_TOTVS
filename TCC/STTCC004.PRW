#include "protheus.ch"

USER FUNCTION STTCC004()

LOCAL cFiltro   := ""
LOCAL aCores  := {{ 'ZZ2->ZZ2_QTDNOK <= (ZZ2->ZZ2_QTDOK) * 0.10' , 'ENABLE'  },; 
                  { 'ZZ2->ZZ2_QTDNOK > (ZZ2->ZZ2_QTDOK) * 0.10' , 'DISABLE' }}  

PRIVATE cCadastro := "Complemento de Credito"
PRIVATE aRotina     := {{"Pesquisar",	"AxPesqui"   	   	, 0, 1 },;
						{"Visualizar",	"AxVisual"   		, 0, 2 },;
						{"Incluir",		"AxInclui"  	 	, 0, 3 },;
						{"Alterar",		"AxAltera"   		, 0, 4 },;
						{"Excluir",		"AxDeleta"     		, 0, 5 },;
						{"Relatorio",	"U_STIPCLI"     	, 0, 6 },;
						{"Relat. Na Conf",	"U_STCCNACONF"  , 0, 7 },;
						{"Exportar TXT",	"U_TXTZZ2"      , 0, 8 },;
						{"Exportar CSV",	"U_CSVZZ2"      , 0, 9 }}
dbSelectArea('ZZ2')
dbSetOrder(1)

mBrowse( ,,,,'ZZ2',,,,,,aCores,,,,,,,,cFiltro)

RETURN NIL

User Function STIPCLI()

//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³ Define variaveis padroes para todos os relatorios...                     ³
//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
PRIVATE nLimite     := 220       // Limite de Colunas
PRIVATE cTamanho    := "G"       // P=Pequeno;M=Medio;G=Grande -> P=80;M=132;G=220 (colunas)
PRIVATE cTitulo     := "Relatorio do Complemento do Cliente 2" // Titulo do Relatorio
PRIVATE cDesc1      := "" // Descritivo para o usuario
PRIVATE cDesc2      := "" // Descritivo para o usuario
PRIVATE cDesc3      := ""
PRIVATE cAlias      := "ZZ2" // Alias
PRIVATE cRel        := "IMPXPTO" // Nome do Relatorio
PRIVATE nli         := 01   // Variavel padrao para controlar numero de linha
PRIVATE nQtdini     := nli  // Variavel para controlar numero de linha inicial
PRIVATE cCabecalho  := "Relatorio Referente aos Cliente Cadastrados"
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
    @ nLi, 60 PSAY "DATA OCORRI." 
    @ nLi, 75 PSAY "HORA"
    @ nLi, 90 PSAY "PRODUTO"
    @ nLi, 105 PSAY "QTDE. OK"
    @ nLi, 120 PSAY "QTDE. N. OK"
    @ nLi, 135 PSAY "VALOR UNIT."
    @ nLi, 150 PSAY "TOTAL OK"
    @ nLi, 165 PSAY "TOTAL N. OK"

While !ZZ2->(Eof()) .AND. !lAbortPrinT
     
   	cNomeFor := posicione("SA2",1,xFilial("SA2")+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO,"A2_NOME")  
                                          
    @ ++nLi, nColuna PSAY ZZ2->ZZ2_CONFOR
    @ nLi, 15 PSAY ZZ2->ZZ2_FORNEC
    @ nli, 30 PSay ZZ2->ZZ2_LOJAFO
    @ nli, 45 PSay ALLTRIM(cNomeFor)
    @ nLi, 60 PSAY ZZ2->ZZ2_DATA
    @ nLi, 75 PSAY ZZ2->ZZ2_HORA
    @ nLi, 90 PSAY ZZ2->ZZ2_CODPRO
    @ nLi, 105 PSAY ZZ2->ZZ2_QTDOK
    @ nLi, 120 PSAY ZZ2->ZZ2_QTDNOK
    @ nLi, 135 PSAY ZZ2->ZZ2_VLRUNI
    //@ nLi, 150 PSAY ZZ2->ZZ2_TOTOK
    //@ nLi, 165 PSAY ZZ2->ZZ2_TOTNOK
    nRegistros++

    ZZ2->(dbSkip())
    
EndDo

@ ++nLi, nColuna pSay Replicate("*", nLimite)
@ ++nLi, nColuna pSay alltrim(str(nRegistros)) + " Registro(s) listado(s)."
@ ++nLi, nColuna pSay Replicate("*", nLimite)

Set Printer To
Ourspool(cRel)
Return nil

User Function STCCNACONF() // Relatorio das entregas não conforme > 10%

//ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
//³ Define variaveis padroes para todos os relatorios...                     ³
//ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ  

	ALERT('Produtos em NÃO Conformidade') //Apenas um aviso do que se trata o relatório solicitado.

PRIVATE nQtdLin     := 58       // Qtd de Linhas Por Pagina
PRIVATE nLimite     := 220       // Limite de Colunas
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
    @ nLi, 15 PSAY "COD. FORNEC."
    @ nLi, 30 PSAY "LOJA FORNEC"
    @ nLi, 45 PSAY "NOME FORNEC"
    @ nLi, 60 PSAY "DATA OCORRI." 
    @ nLi, 75 PSAY "HORA"
    @ nLi, 90 PSAY "PRODUTO"
    @ nLi, 105 PSAY "QTDE. OK"
    @ nLi, 120 PSAY "QTDE. N. OK"
    @ nLi, 135 PSAY "VALOR UNIT."
    @ nLi, 150 PSAY "TOTAL OK"
    @ nLi, 165 PSAY "TOTAL N. OK"

While !ZZ2->(EoF()) .and. !lAbortPrint
        
		cNomeFor := posicione("SA2",1,xFilial("SA2")+ZZ2->ZZ2_FORNEC+ZZ2->ZZ2_LOJAFO,"A2_NOME")
         
		if ZZ2->ZZ2_QTDNOK > (ZZ2->ZZ2_QTDOK * 0.10)
		    @ ++nLi, nColuna PSAY ZZ2->ZZ2_CONFOR
		    @ nLi, 15 PSAY ZZ2->ZZ2_FORNEC
		    @ nli, 30 PSay ZZ2->ZZ2_LOJAFO
		    @ nli, 45 PSay ALLTRIM(cNomeFor)
		    @ nLi, 60 PSAY ZZ2->ZZ2_DATA
		    @ nLi, 75 PSAY ZZ2->ZZ2_HORA
		    @ nLi, 90 PSAY ZZ2->ZZ2_CODPRO
		    @ nLi, 105 PSAY ZZ2->ZZ2_QTDOK
		    @ nLi, 120 PSAY ZZ2->ZZ2_QTDNOK
		    @ nLi, 135 PSAY ZZ2->ZZ2_VLRUNI
		    @ nLi, 150 PSAY ZZ2->ZZ2_TOTOK
		    @ nLi, 165 PSAY ZZ2->ZZ2_TOTNOK
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


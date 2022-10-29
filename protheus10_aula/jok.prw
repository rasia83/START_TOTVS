#Include "PROTHEUS.CH"   

// SIMPLES EXEMPLO DO JOGO JOKENPO MULTI LINGUAGEM
// CLAYTON NOGUEIRA
// ADVPL
// INUMEROS ITENS PODEM SER APRIMORADOS


//Constante para pular de linha na mensagem de fim de partida, por exemplo
#Define CRLF Chr(13)+Chr(10)


// INICIA FUNCAO PRINCIPAL DO JOGO EM ADVPL COM OPCAO MULTI LINGUAGEM
User Function jok()


// Variaveis
Local oselecionetituloSay
Local Sair
Static aItems := {'Portugues','Ingles'}
Static ajogadausuario
Static partidas := 0
Static partidasusuario := 0
Static partidascomputador := 0
Static partidasempates := 0 
Static partidasaleatoriocomputador := 0
Static aleatoriocomputadortexto
Static resultadopartida
Static oDlg, ojogo
Static selecionetitulo
Static titulojanelajogo
Static posicaolinguagem


// ARRAY COM O RESULTADO DA PARTIDA 1-PORTUGUES 2-INGLES
Static empateresultadopartida := {"EMPATE","A TIE"}    
Static usuarioresultadopartida := {"USUÁRIO GANHOU","USER WON"}
Static computadorresultadopartida := {"COMPUTADOR GANHOU","COMPUTER WON"}


// CHAMA JANELA PRINCIPAL PARA ESCOLHA DO IDIOMA
DEFINE MSDIALOG oDlg TITLE "Jokenpô" FROM 000, 000 TO 150, 230 COLORS 0, 16777215 PIXEL
    cCombo1:= aItems[1]
    oCombo1 := TComboBox():New(20,10,{|u|if(PCount()>0,cCombo1:=u,cCombo1)},;
    aItems,100,20,oDlg,,{||u_mudaidioma()};      
    ,,,,.T.,,,,,,,,,'cCombo1') 

    u_mudaidioma()
ACTIVATE MSDIALOG oDlg CENTERED
Return


// JANELA PRINCIPAL - MUDA IDIOMA CONFORME SELECIONADO
User Function mudaidioma() 
	if cCombo1 == aItems[1]
		@ 050, 010 BUTTON Alterar PROMPT "Jogar" SIZE 037, 012 OF oDlg PIXEL Action U_iniciajogo()
		@ 050, 070 BUTTON Sair PROMPT "Sair" SIZE 037, 012 OF oDlg PIXEL Action oDlg:End()
	   	selecionetitulo := "Selecione o idioma:"
	   	titulojanelajogo := "Jogando Jokenpô" 
	   	posicaolinguagem := 1
	else
		@ 050, 010 BUTTON Alterar PROMPT "Gamer" SIZE 037, 012 OF oDlg PIXEL Action U_iniciajogo()
		@ 050, 070 BUTTON Sair PROMPT "Exit" SIZE 037, 012 OF oDlg PIXEL Action oDlg:End()
		selecionetitulo := "Select Language:"
	   	titulojanelajogo := "Playing Jokenpô"
	   	posicaolinguagem := 2
	endif  
		// Muda titulo de linguagem usando variavel - selecionetitulo
		@ 010, 010 SAY oselecionetituloSay PROMPT selecionetitulo SIZE 090, 007 OF oDlg COLORS 0, 16777215 PIXEL
Return
 

// TELA DO JOGO - CONFORME LINGUAGEM ESCOLHIDA
User Function iniciajogo() 

U_zerarodadas()

DEFINE MSDIALOG ojogo TITLE titulojanelajogo FROM 000, 000 TO 300, 500 COLORS 0, 16777215 PIXEL

	// JOGO EM PORTUGUES
	if cCombo1 == aItems[1]
		
	   	@ 010, 010 SAY oselecionetituloSay PROMPT "Escolha do Usuário:" SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
	   	@ 050, 140 SAY oselecionetituloSay PROMPT "Vitórias do Usuário: "+cValToChar(partidasusuario) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
     	@ 060, 140 SAY oselecionetituloSay PROMPT "Vitórias do Computador: "+cValToChar(partidascomputador) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
     	@ 070, 140 SAY oselecionetituloSay PROMPT "Empates: "+cValToChar(partidasempates) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
	   	@ 090, 140 SAY oselecionetituloSay PROMPT "Total de Partidas: "+cValToChar(partidas) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL

		ajogadausuario := {'PAPEL','PEDRA','TESOURA'}

        cCombo2:= ajogadausuario[1]
        oCombo2 := TComboBox():New(20,10,{|u|if(PCount()>0,cCombo2:=u,cCombo2)},;
        ajogadausuario,100,20,ojogo,,{||};      
        ,,,,.T.,,,,,,,,,'cCombo2') 

		@ 40, 10 BUTTON Alterar PROMPT "Iniciar Partida" SIZE 045, 012 OF ojogo PIXEL Action U_executapartida()
		@ 130, 90 BUTTON Sair PROMPT "Voltar  /  Recomeçar Jogo" SIZE 080, 014 OF ojogo PIXEL Action ojogo:End()


	// JOGO EM INGLES
	else

	   	@ 010, 010 SAY oselecionetituloSay PROMPT "User Choice:" SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
	   	@ 050, 140 SAY oselecionetituloSay PROMPT "User Wins: "+cValToChar(partidasusuario) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
     	@ 060, 140 SAY oselecionetituloSay PROMPT "Computer wins: "+cValToChar(partidascomputador) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
     	@ 070, 140 SAY oselecionetituloSay PROMPT "Draws: "+cValToChar(partidasempates) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL
	   	@ 090, 140 SAY oselecionetituloSay PROMPT "Total Matches: "+cValToChar(partidas) SIZE 090, 007 OF ojogo COLORS 0, 16777215 PIXEL

		ajogadausuario := {'PAPER','STONE','SCISSORS'}

        cCombo2:= ajogadausuario[1]
        oCombo2 := TComboBox():New(20,10,{|u|if(PCount()>0,cCombo2:=u,cCombo2)},;
        ajogadausuario,100,20,ojogo,,{||};      
        ,,,,.T.,,,,,,,,,'cCombo2') 

		@ 40, 10 BUTTON Alterar PROMPT "Start Game" SIZE 045, 012 OF ojogo PIXEL Action U_executapartida()
		@ 130, 90 BUTTON Sair PROMPT "Back / Restart Game" SIZE 080, 014 OF ojogo PIXEL Action ojogo:End()

endif 
ACTIVATE MSDIALOG ojogo CENTERED
Return


// EXECUTA PARTIDA
User Function executapartida()
    
	// INCREMENTA NUMERO TOTAL PARTIDAS
	partidas := partidas+1

	// ESCOLHA ALEATORIA DO COMPUTADOR 1-PAPEL 2-PEDRA 3-TESOURA 
	// Variavel ajogadausuario já vem do array conforme traducao da linguagem selecionada
	partidasaleatoriocomputador := Randomize(1,4)

	if partidasaleatoriocomputador == 1
			aleatoriocomputadortexto := ajogadausuario[1]
	else
	if partidasaleatoriocomputador == 2
			aleatoriocomputadortexto := ajogadausuario[2]
	else
	if partidasaleatoriocomputador == 3
			aleatoriocomputadortexto := ajogadausuario[3]
	endif
	endif
	endif


	// USUARIO JOGOU PAPEL  
	// Variavel posicaolinguagem determina no array a linguagem selecionada
	If cCombo2 == ajogadausuario[1]

			If partidasaleatoriocomputador == 1
				partidasempates := partidasempates + 1
				resultadopartida := cValToChar(empateresultadopartida[posicaolinguagem])
            else
   			If partidasaleatoriocomputador == 2
				partidasusuario := partidasusuario + 1
				resultadopartida := cValToChar(usuarioresultadopartida[posicaolinguagem])				
				
            else
   			If partidasaleatoriocomputador == 3
				partidascomputador := partidascomputador + 1
				resultadopartida := cValToChar(computadorresultadopartida[posicaolinguagem])				
			endif
			endif
			endif
   
	Else

	// USUARIO JOGOU PEDRA
	// Variavel posicaolinguagem determina no array a linguagem selecionada
	If cCombo2 == ajogadausuario[2]

			If partidasaleatoriocomputador == 2
				partidasempates := partidasempates + 1
				resultadopartida := cValToChar(empateresultadopartida[posicaolinguagem])
            else
   			If partidasaleatoriocomputador == 3
				partidasusuario := partidasusuario + 1
				resultadopartida := cValToChar(usuarioresultadopartida[posicaolinguagem])				
            else
   			If partidasaleatoriocomputador == 1
				partidascomputador := partidascomputador + 1
				resultadopartida := cValToChar(computadorresultadopartida[posicaolinguagem])				
			endif
			endif
			endif

Else

	// USUARIO JOGOU TESOURA
	// Variavel posicaolinguagem determina no array a linguagem selecionada
	If cCombo2 == ajogadausuario[3]

			If partidasaleatoriocomputador == 3
				partidasempates := partidasempates + 1
				resultadopartida := cValToChar(empateresultadopartida[posicaolinguagem])
            else
   			If partidasaleatoriocomputador == 1
				partidasusuario := partidasusuario + 1
				resultadopartida := cValToChar(usuarioresultadopartida[posicaolinguagem])				
            else
   			If partidasaleatoriocomputador == 2
				partidascomputador := partidascomputador + 1
				resultadopartida := cValToChar(computadorresultadopartida[posicaolinguagem])				
			endif
			endif
			endif

	endif
	endif
	endif
  

	// Memsagem resultado da partida - Portugues ou Ingles
	if cCombo1 == aItems[1]
		MsgInfo( "Partida: "+cValToChar(partidas)+CRLF+"Escolha do Usuário: "+cValToChar(cCombo2)+CRLF+"Escolha do Computador: "+cValToChar(aleatoriocomputadortexto)+CRLF+CRLF+"Resultado da Partida: "+cValToChar(resultadopartida), "Resultado da Partida")
	else
		MsgInfo( "Match: "+cValToChar(partidas)+CRLF+"User Choice: "+cValToChar(cCombo2)+CRLF+"Computer choice: "+cValToChar(aleatoriocomputadortexto)+CRLF+CRLF+"Match Result: "+cValToChar(resultadopartida), "Match Result")
	endif

Return 


// ZERA RODADAS - REINICIA ZERANDO OS NUMEROS DAS RODADAS
User Function zerarodadas()
	partidas := 0
	partidasusuario := 0
	partidascomputador := 0
	partidasempates := 0
Return
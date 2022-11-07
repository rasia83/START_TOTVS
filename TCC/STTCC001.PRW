#include "protheus.ch"
          
// a) Rotina AxCadastro da tabela ZZ1

USER FUNCTION STTCC001()
     	
	dbSelectArea("ZZ1")
	dbSetOrder(1)	 
	 
	AxCadastro("ZZ1", "Controle de Fornecimento", nil, nil)
     	
Return Nil  


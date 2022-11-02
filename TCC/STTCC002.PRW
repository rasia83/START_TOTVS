#include "protheus.ch"
          
// Rotina AxCadastro da tabela ZZ2 


USER FUNCTION STTCC002()
     	
	dbSelectArea("ZZ2")
	dbSetOrder(1)	 
	 
	AxCadastro("ZZ2", "Ocorrências do Fornecedor", nil, nil)
     	
Return Nil  

 /*

Array()
Array( <nElements>[, <nElements>...] ) ? aArray

LOCAL aArray := {}, tmp
FOR tmp := 1 TO 10
   AAdd( aArray, tmp )
NEXT
? hb_ValToExp( aArray )

ADel( aArray, 2 )


// Adjust the size of an array
LOCAL aArray := { 1 }
? hb_ValToExp( aArray )  // --> { 1 }
ASize( aArray, 3 )
? hb_ValToExp( aArray )  // --> { 1, NIL, NIL }
ASize( aArray, 1 )
? hb_ValToExp( aArray )  // --> { 1 }


// Copy elements from one array to another
LOCAL nCount := 2, nStart := 1
LOCAL aOne := { "Harbour", " is ", "Power" }
LOCAL aTwo := { "Clipper", " was ", "Power" }
ACopy( aOne, aTwo, nStart, nCount )
? hb_ValToExp( aTwo )  // --> { "Harbour", " is ", "Power" }


// Fill an array with a specified value
LOCAL aArray := { NIL, 0, 1, 2 }
AFill( aArray, 5 )
? hb_ValToExp( aArray )


AIns()
Insert a NIL value at an array subscript position.
AIns( <aArray>, <nPos> ) ? aArray

 */
 
// lib para tratamento de entradas
// SET PROCEDURE TO start_lib.prg

Function print_array(aArray , lReverso)
    local nI := 1
    local cOut := ""

   if lReverso = nil // parametro reverso preenchido, se não atribuir falso
      lReverso := .F.
   endif

   if lReverso // imprimir em ordem reverrsa
      for nI := len(aArray) to 1 step -1 // percorrer array

         if aArray[nI] = nil // se o campo estiver vazio ir para a proxima posição
            loop
         endif

         IF ValType( aArray[nI] )  != "N" // se o campo não for numerico adicionar a string 
            cOut += aArray[nI] 
         else // se o campo  for numerico adicionar a string com allTrim(str())
            cOut += allTrim(str(aArray[nI]))
         endif
         
         if nI != 1 // adicionar " , " se não for o ultimo campo
            cOut += " , " 
         endif
      next
   else  // imprimir em ordem
      for nI := 1 to len(aArray)  // percorrer array
         
         if aArray[nI] = nil // se o campo estiver vazio ir para a proxima posição
            loop
         endif
         
         IF ValType( aArray[nI] )  != "N" // se o campo não for numerico adicionar a string 
            cOut += aArray[nI] 
         else  // se o campo  for numerico adicionar a string com allTrim(str())
            cOut += allTrim(str(aArray[nI]))
         endif
         
         if nI != len(aArray)  // adicionar " , " se não for o ultimo campo
            cOut += " , " 
         endif
         
      next
   endif

   QOUT(cOut)

   // teria sido bem mais simples :)
   //? hb_ValToExp( aArray )
Return nil



Function a_chr_r_up(aArray, nTamanho) // array char randon UPPER
   local nI

   if nTamanho != nil // definir novo array com tamanho especificado
      aArray := array(nTamanho)
   endif
    
    for nI := 1 to len(aArray)
        aArray[nI] := CHR(hb_RandomInt(65 , 90))
    next

Return aArray

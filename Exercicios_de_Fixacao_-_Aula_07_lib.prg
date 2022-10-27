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

Function print_array(aArray , lReverso , lOrdenar)
    local nI := 1
    local cOut := ""
 
   if lReverso == nil // parametro reverso preenchido, se não atribuir falso
      lReverso := .F.
   endif
 
   if lOrdenar != nil 
      if lOrdenar == .T. 
         ASort(aArray)
      endif
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



Function fill_a_chr(aArray, nTamanho, cUpLow , lUnic) // array char randon UPPER
   local nI , cRnd

   if cUpLow = nil // parametro Upper preenchido, se não atribuir Upper
      cUpLow := "U"
   endif

   if lUnic = nil // parametro unico preenchido, se não atribuir falso
      lUnic := .F.
   endif

   if nTamanho != nil // definir novo array com tamanho especificado
      aArray := array(nTamanho)
   endif

   for nI := 1 to len(aArray)
      if cUpLow == "U"
         cRnd := CHR(hb_RandomInt(65 , 90))
         if lUnic
            while AScan(aArray, cRnd) != 0
               cRnd := CHR(hb_RandomInt(65 , 90))
            enddo
         endif
      else
         cRnd := CHR(hb_RandomInt(97 , 122))
         if lUnic
            while AScan(aArray, cRnd) != 0
               cRnd := CHR(hb_RandomInt(97 , 122))
            enddo
         endif
      endif
      aArray[nI] := cRnd
   next

Return aArray



FUNCTION BinToDec( cString )

   LOCAL nNumber := 0, nX
   LOCAL cNewString := AllTrim( cString )
   LOCAL nLen := Len( cNewString )

   FOR nX := 1 TO nLen
      nNumber += ( At( SubStr( cNewString, nX, 1 ), "01" ) - 1 ) * ( 2 ^ ( nLen - nX ) )
   NEXT

RETURN nNumber


FUNCTION DecToBin( nNumber )

   LOCAL cNewString := ""
   LOCAL nTemp

   DO WHILE nNumber > 0
      nTemp := nNumber % 2
      cNewString := hb_BSubStr( "01", nTemp + 1, 1 ) + cNewString
      nNumber := Int( ( nNumber - nTemp ) / 2 )
   ENDDO

RETURN cNewString


function VetorCaracteres(nCar)
    local nCont:=1, aux:=1,aVA:=ARRAY(50), aVB:={}

    for nCont := 1 TO 50
        aVA[nCont] := CHR(hb_randomint(65,90))

        if nCar == aVA[nCont]
            Qout("O caracter",alltrim(nCar),"que foi informado esta presente no vetor",alltrim(STR(nCont)))
            AADD(aVB, nCont)
        else
            Qout( nCont,"º = ", aVA[nCont])
        end if
    next
    Asort(aVB)

    Qout("A primeira posicao da letra foi no vetor de posicao: ", alltrim(STR(aVB[1])))
    Qout("A ultima posicao foi no vetor de posicao: ", alltrim(STR(aVB[len(aVB)])))

RETURN nil

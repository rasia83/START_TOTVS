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

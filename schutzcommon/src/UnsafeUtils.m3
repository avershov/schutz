  
(* -----------------------------------------------------------------------1- *)
(* File UnsafeUtils.m3  Modula-3 source code.                                *)
(* Copyright 2010 .. 2020, Rodney M. Bates.                                  *)
(* rodney.m.bates@acm.org                                                    *)
(* Licensed under the MIT License.                                           *) 
(* -----------------------------------------------------------------------2- *)

UNSAFE MODULE UnsafeUtils 

(* From m3core: *)
; IMPORT RT0 
; IMPORT RTHeapRep 
; IMPORT RTType 
; IMPORT Word 
 
(* EXPORTED *) 
; PROCEDURE IntOfRefany ( Ref : REFANY ) : INTEGER 

  = BEGIN (* IntOfRefany *) 
      RETURN LOOPHOLE ( Ref , INTEGER ) 
    END IntOfRefany  

(* EXPORTED *) 
; PROCEDURE RefanyOfInt ( I : INTEGER ) : REFANY 

  = BEGIN (* RefanyOfInt *) 
      RETURN LOOPHOLE ( I , REFANY ) 
    END RefanyOfInt   

(* EXPORTED *) 
; PROCEDURE NULLOfInt ( I : INTEGER ) : <* NOWARN *> NULL

  = BEGIN (* NULLOfInt *) 
      RETURN LOOPHOLE ( I , NULL ) 
    END NULLOfInt   

(* EXPORTED *) 
; PROCEDURE PtrTo8CharArray ( VAR W : Word . T ) 
  : UNTRACED REF ARRAY [ 0 .. 7 ] OF CHAR 

  = BEGIN 
      RETURN ( LOOPHOLE ( ADR ( W ) , UNTRACED REF ARRAY [ 0 .. 7 ] OF CHAR ) )
    END PtrTo8CharArray 

(* EXPORTED *) 
; PROCEDURE AdrToRT0_ActivationPtr ( Address : ADDRESS ) : RT0 . ActivationPtr

  = BEGIN
      RETURN LOOPHOLE ( Address , RT0 . ActivationPtr ) 
    END AdrToRT0_ActivationPtr 

(* EXPORTED *) 
; PROCEDURE ObjectSize ( TC : TypeCodeTyp ) : INTEGER 

  = BEGIN 
      RETURN
        RTType . Get ( TC ) . dataSize (* DIV BitsPerAddrUnit *) 
        + ADRSIZE ( RTHeapRep . Header ) 
    END ObjectSize 

; BEGIN (* UnsafeUtils *) 
  END UnsafeUtils 
. 

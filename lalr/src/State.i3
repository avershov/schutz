
(* -----------------------------------------------------------------------1- *)
(* This file is part of the Schutz semantic editor.                          *)
(* Copyright 1988..2017, Rodney M. Bates.                                    *)
(* rodney.m.bates@acm.org                                                    *)
(* Licensed under the MIT License.                                           *)
(* -----------------------------------------------------------------------2- *)

INTERFACE State 

(* Used as Element to instantiate VarArray of states. *) 

; IMPORT LALRTypes 

; CONST Brand = "State" 

; TYPE T = LALRTypes . StateTyp 

; END State 
. 

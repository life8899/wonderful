(******************************************************************************)
(* Author: Xiaozhi Li                                                      *)
(******************************************************************************)

structure ex843Script = struct

open HolKernel Parse boolLib bossLib;

val _ =new_theory "ex843";

(* 8-4-3 *)

val conj1Thm =
let
val th2 =ASSUME ``p/\q``
val th3 =CONJUNCT1 th2
val th4 =CONJUNCT2 th2
val th5 =CONJ th4 th3 
in
DISCH (hd(hyp th2)) th5
end;

val conj2Thm =
let
val th1 =ASSUME ``q/\p``
val th2 =CONJUNCT1 th1
val th3 =CONJUNCT2 th1

val th4 =CONJ th3 th2
in
DISCH (hd(hyp th1)) th4
end;


val conjSymThm =
IMP_ANTISYM_RULE conj1Thm conj2Thm;


val conjSymAll=GENL [``p:bool``, ``q:bool``] conjSymThm;

(* val _=save_thm("conjSymAll", conjSymAll) *)

val _=export_theory();
end (* structure *)
(******************************************************************************)
(* Author: Xiaozhi Li                                                      *)
(******************************************************************************)

(******************************************************************************)
(* All HOL script files are ML modules, so we need to declare the file        *)
(* example1Script as an ML structure.  Do this with the "structure: command   *)
(* as the very first executable line.  The very last executable line is "end" *)
(******************************************************************************)

structure proj5Script = struct

(******************************************************************************)
(* Note: everything after new_theory must be part of a val assignment, when   *)
(* using Holmake.  Otherwise, there will be compilation errors. If you don't  *)
(* want to assign an expression to a name, just use "val _ = <expression>"    *)
(* The "_" indicates that we don't want to have a name.                       *)
(******************************************************************************)
open HolKernel Parse boolLib bossLib;

val _ = new_theory "proj5";
(******************************************************************************)
(* val problem1Thm                                                            *)
(* [] |-p==> (p==>q) ==> (q==>r) ==>r 					      *)
(******************************************************************************)

(* 8-4-1  *)
val problem1Thm =
let
val th1 =ASSUME ``p:bool``
val th2 =ASSUME ``p ==> q``
val th3 =ASSUME ``q ==> r``
val th4 =MP th2 th1
val th5 =MP th3 th4 
val th6 = DISCH (hd(hyp th3)) th5
val th7 = DISCH (hd(hyp th2)) th6

in
DISCH (hd(hyp th1)) th7
end

val _ =save_thm("problem1Thm",problem1Thm);








(* 8-4-2*)

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

val _ =save_thm("conjSymThm",conjSymThm);


(*********)
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

val _=save_thm("conjSymAll", conjSymAll)

val _=export_theory();

end (* structure *)
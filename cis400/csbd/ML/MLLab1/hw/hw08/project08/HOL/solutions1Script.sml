(***************************************************)
(* csbd project08: solutions1.sml   *)
(* Xiaozhi Li                                   *)
(* Date: 25 Oct. 2017                         *)
(***************************************************)
(* Interactive mode: these are theories that are in the ACL  *)
(* subdirectory pointed to in the Holmakefile file. The file *)
(* acl_infRules contains the ML functions that are the       *)
(* inference rules in the access control logic.              *)

(* only necessary when working interactively
app load ["acl_infRules","aclrulesTheory","aclDrulesTheory","example1Theory"];
open acl_infRules aclrulesTheory aclDrulesTheory example1Theory
*)

(* The following structure is similar to the module command in Haskell *)
structure solutions1Script = struct

open HolKernel boolLib Parse bossLib (* used by Holmake, not in interactive  *)
open acl_infRules aclrulesTheory aclDrulesTheory example1Theory (* used by Holmake and interactive mode *)

(***********
* create a new theory
***********)
val _ = new_theory "solutions1";




val princTerm = ``Name Alice``;
(* Principals make statements *)
val term1 = ``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;

(* Principals have jurisdiction *)
val term2 = ``((Name Alice) controls (prop go)):(commands,staff,'d,'e)Form``;

(*exercise 13.10.1 *)

(*part A *)
val aclExercise1=
let
val th1 = ACL_ASSUM term1;
val th2 = ACL_ASSUM term2;
val th3 = ACL_CONJ th1 th2;
val th4 = AND_SAYS_RL th3;
val th5 = DISCH(hd(hyp th2)) th4;
in
 DISCH(hd(hyp th1)) th5
end;

val _=save_thm("aclExercise1",aclExercise1)



(* part B*)
(******************************************************************************)
(* A goal-oriented proof                                                      *)
(******************************************************************************)


val aclExercise1A= TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Bob says (prop go) ==>
  (M,Oi,Os) sat Name Alice meet Name Bob says (prop go)``)
,
PROVE_TAC[Conjunction,And_Says_Eq])


val _ = save_thm("aclExercise1A",aclExercise1A)

(* part C *)
val aclExercise2B=
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
   Name Alice says (prop go) ==>
  (M,Oi,Os) sat Name Bob says (prop go) ==>
  (M,Oi,Os) sat Name Alice meet Name Bob says (prop go)``)
  ,
 REPEAT STRIP_TAC THEN
 ACL_AND_SAYS_RL_TAC THEN
 ACL_CONJ_TAC THEN
PROVE_TAC[] THEN
PROVE_TAC[])

val _ = save_thm("aclExercise2B", aclExercise2B)
(*Holmake has no problem*)



(*13.10.2*)

(*Part A  aclExcercise2 *)

(*forward proof*)
val term1=``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;
val term2=``((Name Alice) controls (prop go)):(commands,staff,'d,'e)Form``;
val term3=``((prop go) impf (prop launch)):(commands,staff,'d,'e)Form``;


val term4=``((Name Bob) says (prop launch)):(commands,staff,'d,'e)Form``;

val aclExercise2=
let
val thm1 = ACL_ASSUM term1
val thm2 = ACL_ASSUM term2
val thm3 = ACL_ASSUM term3
val thm4 = ACL_ASSUM term4

val thm5 = CONTROLS thm2 thm1
val thm6 = ACL_MP thm5 thm3
in
SAYS ``Name Bob`` thm6
end;

val _ = save_thm("aclExerciseTwo",aclExercise2)

(*part B  goal oriented proof *)

val aclExercise2A=
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
Name Alice says (prop go) ==>
(M,Oi,Os) sat Name Alice controls (prop go) ==>
(M,Oi,Os) sat (prop go) impf (prop launch) ==>
(M,Oi,Os) sat Name Bob says (prop launch)``)
,
PROVE_TAC[Controls, Modus_Ponens,Says])

val _= save_thm("aclExercise2A",aclExercise2A)

(* Holmake succeed *)

(* Part C not finished*)


(*******************************)
(* Print and export the theory *)
(*******************************)
val _ = print_theory "-";

val _ = export_theory();

end (* structure *)

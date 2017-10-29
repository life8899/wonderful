(***************************************************)
(* csbd project08: example1Script.sml   *)
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
structure example1Script = struct

open HolKernel boolLib Parse bossLib (* used by Holmake, not in interactive  *)
open acl_infRules aclrulesTheory aclDrulesTheory (* used by Holmake and interactive mode *)

(***********
* create a new theory
***********)
val _ = new_theory "example1";

(* Example 1: Practice with ACL syntax in HOL *)
(************************************************************)
(* let's define a concrete example of a set of instructions *)
(************************************************************)
val _ =
Datatype
`commands = go | nogo | launch | abort`

(******************************************************)
(* Define some names of people who will be principals *)
(******************************************************)
val _ =
Datatype
`staff = Alice | Bob | Carol | Dan`

(* The simplest access-control logic formula is a proposition *)
val commandProp = ``(prop go):(commands,staff,'d,'e)Form``;

(* We can still use type variables for propositions *)
val xProposition = ``(prop x):('a,'c,'d,'e)Form``





(* Alice with Bob says <go> *)
val term3 = 
 ``((Name Alice) meet (Name Bob) says (prop launch)):(commands,staff,'d,'e)Form``;

(* proof *)

val term1 = ``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;

val term2 = ``((Name Bob) says (prop go)):(commands,staff,'d,'e)Form``;

val th1 = ACL_ASSUM term1;
val th2 = ACL_ASSUM term2;
val th3 = ACL_CONJ th1 th2;
val th4 = AND_SAYS_RL th3;
val th5 = DISCH(hd(hyp th2)) th4;
val th6 = DISCH(hd(hyp th1)) th5;

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

(* Part C *)

(* These are unfinished work==========
val term1=``((Name Alice) says (prop go)):(commands,staff,'d,'e)Form``;
val term2=``((Name Alice) controls (prop go)):(commands,staff,'d,'e)Form``;
val term3=``((prop go) impf (prop launch)):(commands,staff,'d,'e)Form``;

val thm1 = ACL_ASSUM term1
val thm2 = ACL_ASSUM term2
val thm3 = ACL_ASSUM term3

val aclExercise2B=
TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
Name Alice says (prop go) ==>
(M,Oi,Os) sat Name Alice controls (prop go) ==>
(M,Oi,Os) sat (prop go) impf (prop launch) ==>
(M,Oi,Os) sat Name Bob says (prop launch)``))
,
REPEAT STRIP_TAC  THEN
ACL_SAYS_TAC 

try it :

val bob1=``((Name Bob) says (prop launch)):(commands,staff,'d,'e)Form``;
val bob2=``((Name Bob) controls (prop launch)):(commands,staff,'d,'e)Form``;
val launch=``((prop launch)):(commands,staff,'d,'e)Form``;

TAC_PROOF(([],
``((M :(commands, 'b, staff, 'd, 'e) Kripke),(Oi :'d po),(Os :'e po)) sat
(Name Bob) says (prop launch) ==>
(M,Oi,Os) sat(Name Bob) controls (prop launch) ==>
(M,Oi,Os) sat(prop launch)``
REPEAT STRIP_TAC  THEN

ACL_CONTROLS_TAC
PAT_ASSUM
``(M,Oi,Os) sat Name Bob says prop launch``
(fn th1 =>??


PAT_ASSUM
``(M,Oi,Os) sat (prop go) impf (prop launch)``
(fn th1 =>
 (PAT_ASSUM
  ``(M,Oi,Os) sat ((prop go))``
  (fn th2 => ASSUME_TAC(Modus_Ponens th1))))

PAT_ASSUM
``(M,Oi,Os) sat (Name Alice speaks_for Name Bob)``
(fn th1 =>
 (PAT_ASSUM
  ``(M,Oi,Os) sat (Name Alice says (prop go))``
  (fn th2 => ASSUME_TAC(SPEAKS_FOR th1 th2)))) THEN
ASM_REWRITE_TAC[])


ACL_ASSUM_TAC
REWRITE_RULE[](Controls_Eq,term2)
ACL_MP_TAC (Modus_Ponens,term3)

============================end*)



(*******************************)
(* Print and export the theory *)
(*******************************)
val _ = print_theory "-";

val _ = export_theory();

end (* structure *)

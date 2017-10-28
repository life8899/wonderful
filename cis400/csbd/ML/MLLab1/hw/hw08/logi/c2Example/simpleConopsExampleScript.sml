(******************************************************************************)
(* simpleConopsExample Theory                                                 *)
(* Shiu-Kai Chin                                                              *)
(* Date: 13 October 2014                                                      *)
(******************************************************************************)
structure simpleConopsExampleScript = struct

open HolKernel boolLib Parse bossLib 
open acl_infRules aclrulesTheory aclDrulesTheory 

val _ = new_theory "simpleConopsExample";

(******************************************************************************)
(* Define the instruction set given: go, launch, and activate                 *)
(******************************************************************************)
val _ =
Datatype
`commands = go | launch | activate`

(******************************************************************************)
(* Define the names of people who act in various roles                        *)
(******************************************************************************)
val _ =
Datatype
`people = Alice | Bob`

(******************************************************************************)
(* Define roles                                                               *)
(******************************************************************************)
val _ =
Datatype
`roles = Commander | Operator`


(******************************************************************************)
(* Define principals, where applications are identified by number             *)
(******************************************************************************)
val _ =
Datatype
`principals = Staff people | Role roles | Ap num`


(******************************************************************************)
(* Proof of OpRule 1                                                          *)
(******************************************************************************)
val OpRule1_thm =
let
 val th1 = 
  ACL_ASSUM
  ``((Name (Role Commander)) controls (prop go))
    : (commands,principals,'d,'e)Form``
 val th2 = 
  ACL_ASSUM
  ``(reps(Name (Staff Alice))(Name(Role Commander)) (prop go))
    : (commands,principals,'d,'e)Form``
 val th3 = 
  ACL_ASSUM
  ``((Name(Staff Alice)) quoting (Name(Role Commander)) says (prop go))
    : (commands,principals,'d,'e)Form``
 val th4 = 
  ACL_ASSUM
  ``((prop go) impf (prop launch)) : (commands,principals,'d,'e)Form``
 val th5 = REPS th2 th3 th1
 val th6 = ACL_MP th5 th4
 val th7 =
   SAYS ``((Name(Staff Bob)) quoting (Name(Role Operator)))
          : principals Princ`` th6
 val th8 = DISCH(hd(hyp th4)) th7
 val th9 = DISCH(hd(hyp th3)) th8
 val th10 = DISCH(hd(hyp th2)) th9
in
 DISCH(hd(hyp th1)) th10
end;

val _ = save_thm("OpRule1_thm",OpRule1_thm)



(******************************************************************************)
(* Proof using PROVE_TAC                                                      *)
(******************************************************************************)
val OpRule1_thmA =
TAC_PROOF(
([],``((M :(commands, 'b, principals, 'd, 'e) Kripke),(Oi :'d po),
       (Os :'e po)) sat
      Name (Role Commander) controls
      (prop go :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      reps (Name (Staff Alice)) (Name (Role Commander))
        (prop go :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      Name (Staff Alice) quoting Name (Role Commander) says
      (prop go :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      (prop go :(commands, principals, 'd, 'e) Form) impf
      (prop launch :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      Name (Staff Bob) quoting Name (Role Operator) says
      (prop launch :(commands, principals, 'd, 'e) Form)``),
PROVE_TAC[Reps,Modus_Ponens,Says])



(******************************************************************************)
(* Proof using ACL Tactics                                                    *)
(******************************************************************************)
val OpRule1_thmB =
TAC_PROOF(
([],``((M :(commands, 'b, principals, 'd, 'e) Kripke),(Oi :'d po),
       (Os :'e po)) sat
      Name (Role Commander) controls
      (prop go :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      reps (Name (Staff Alice)) (Name (Role Commander))
        (prop go :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      Name (Staff Alice) quoting Name (Role Commander) says
      (prop go :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      (prop go :(commands, principals, 'd, 'e) Form) impf
      (prop launch :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      Name (Staff Bob) quoting Name (Role Operator) says
      (prop launch :(commands, principals, 'd, 'e) Form)``),
REPEAT STRIP_TAC THEN
ACL_SAYS_TAC THEN
PAT_ASSUM
``(M,Oi,Os) sat
  reps (Name (Staff Alice)) (Name (Role Commander)) (prop go)``
(fn th1 =>
 (PAT_ASSUM
  ``(M,Oi,Os) sat
          Name (Staff Alice) quoting Name (Role Commander) says prop go``
 (fn th2 =>
   PAT_ASSUM
   ``(M,Oi,Os) sat Name (Role Commander) controls prop go``
   (fn th3 => ASSUME_TAC(REPS th1 th2 th3))))) THEN
PAT_ASSUM
``(M,Oi,Os) sat prop go``
(fn th1 =>
 (PAT_ASSUM
  ``(M,Oi,Os) sat prop go impf prop launch``
  (fn th2 => PROVE_TAC[(ACL_MP th1 th2)]))))

(******************************************************************************)
(* Proof of ApRule 1                                                          *)
(******************************************************************************)
val ApRule1_thm =
let
 val th1 = 
  ACL_ASSUM
  ``((Name (Role Operator)) controls (prop launch))
    : (commands,principals,'d,'e)Form``
 val th2 = 
  ACL_ASSUM
  ``(reps(Name (Staff Bob))(Name(Role Operator)) (prop launch))
    : (commands,principals,'d,'e)Form``
 val th3 =
  ACL_ASSUM
  ``((Name(Staff Bob)) quoting (Name(Role Operator)) says (prop launch))
    : (commands,principals,'d,'e)Form``
 val th4 = ACL_ASSUM
  ``((prop launch) impf (prop activate)) : (commands,principals,'d,'e)Form``
 val th5 = REPS th2 th3 th1
 val th6 = ACL_MP th5 th4
 val th7 = DISCH(hd(hyp th4)) th6
 val th8 = DISCH(hd(hyp th3)) th7
 val th9 = DISCH(hd(hyp th2)) th8
in
 DISCH(hd(hyp th1)) th9
end;

val _ = save_thm("ApRule1_thm",ApRule1_thm)

(******************************************************************************)
(* Proof using PROVE_TAC alone                                                *)
(******************************************************************************)
val ApRule1_thmA =
TAC_PROOF(
([],
    ``(M,Oi,Os) sat Name (Role Operator) controls prop launch ==>
      (M,Oi,Os) sat
      reps (Name (Staff Bob)) (Name (Role Operator)) (prop launch) ==>
      (M,Oi,Os) sat
      Name (Staff Bob) quoting Name (Role Operator) says prop launch ==>
      (M,Oi,Os) sat prop launch impf prop activate ==>
      (M,Oi,Os) sat prop activate``),
PROVE_TAC[Reps,Modus_Ponens])

(******************************************************************************)
(* Proof using ACL Tactics                                                    *)
(******************************************************************************)
val ApRule1_thmB =
TAC_PROOF(
([],
    ``((M :(commands, 'b, principals, 'd, 'e) Kripke),(Oi :'d po),
       (Os :'e po)) sat
      Name (Role Operator) controls
      (prop launch :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      reps (Name (Staff Bob)) (Name (Role Operator))
        (prop launch :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      Name (Staff Bob) quoting Name (Role Operator) says
      (prop launch :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat
      (prop launch :(commands, principals, 'd, 'e) Form) impf
      (prop activate :(commands, principals, 'd, 'e) Form) ==>
      (M,Oi,Os) sat (prop activate :(commands, principals, 'd, 'e) Form)``),
REPEAT STRIP_TAC THEN
PAT_ASSUM
``(M,Oi,Os) sat
          reps (Name (Staff Bob)) (Name (Role Operator)) (prop launch)``
(fn th1 =>
 (PAT_ASSUM
  ``(M,Oi,Os) sat
          Name (Staff Bob) quoting Name (Role Operator) says prop launch``
 (fn th2 =>
   PAT_ASSUM
   ``(M,Oi,Os) sat Name (Role Operator) controls prop launch``
   (fn th3 => ASSUME_TAC(REPS th1 th2 th3))))) THEN
PAT_ASSUM
``(M,Oi,Os) sat prop launch``
(fn th1 =>
 (PAT_ASSUM
  ``(M,Oi,Os) sat prop launch impf prop activate``
  (fn th2 => PROVE_TAC[(ACL_MP th1 th2)]))))
      

val _ = export_theory();

end (* structure *)

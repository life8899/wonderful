(******************************************************************************)
(* Syntax and semantics of boolean expressions                                *)
(* Author: Shiu-Kai Chin                                                      *)
(* Date: 9 October 2015                                                       *)
(******************************************************************************)
structure bexpScript = struct
open HolKernel Parse boolLib bossLib;
open TypeBase boolTheory

(* ==== interactive mode ====
map load ["boolTheory","TypeBase","bexpTheory"];
open boolTheory TypeBase bexpTheory
 ==== end interactive mode ==== *)

val _ = new_theory "bexp";

(******************************************************************************)
(* Introduce the syntax of boolean expression bexp                            *)
(******************************************************************************)
val _ = Datatype
`bexp = TT | FF | Not bexp | And bexp bexp | Or bexp bexp`;

(******************************************************************************)
(* Prove that identical bexps have identical components                       *)
(******************************************************************************)
val bexp_one_one = one_one_of``:bexp``
val _ = save_thm("bexp_one_one",bexp_one_one)


(******************************************************************************)
(* Prove that the different forms of bexp expressions are distinct            *)
(******************************************************************************)
val bexp_distinct_clauses = distinct_of``:bexp``
val _ = save_thm("bexp_distinct_clauses",bexp_distinct_clauses)



(******************************************************************************)
(* Define the semantics of bexp expressions                                   *)
(******************************************************************************)
val bexpVal_def =
Define
`(bexpVal TT = T) /\
 (bexpVal FF = F) /\
 (bexpVal (Not f) = ~(bexpVal f)) /\
 (bexpVal (And f1 f2) = ((bexpVal f1) /\ (bexpVal f2))) /\
 (bexpVal (Or f1 f2) = ((bexpVal f1) \/ (bexpVal f2)))`



(******************************************************************************)
(* Prove bexpVal(Not(Not f)) = bexpVal(f)                                     *)
(******************************************************************************)
(* ==== start here ====
set_goal([],``!(f:bexp).bexpVal(Not(Not f)) = bexpVal(f)``)
Induct_on`f` THEN
ASM_REWRITE_TAC[bexpVal_def]
 ==== end here ==== *)
val Not_Not_thm =
TAC_PROOF(([],``!(f:bexp).bexpVal(Not(Not f)) = bexpVal(f)``),
Induct_on`f` THEN
ASM_REWRITE_TAC[bexpVal_def])

val _ = save_thm("Not_Not_thm",Not_Not_thm)


(******************************************************************************)
(* Prove bexpVal(And TT f) = bexpVal(f)                                       *)
(******************************************************************************)
(* ==== start here ====
set_goal([],``!(f:bexp).bexpVal(And TT f) = bexpVal(f)``)
Induct_on`f` THEN
ASM_REWRITE_TAC[bexpVal_def]
 ==== end here ==== *)

val And_TT_thm =
TAC_PROOF(([],``!(f:bexp).bexpVal(And TT f) = bexpVal(f)``),
Induct_on`f` THEN
ASM_REWRITE_TAC[bexpVal_def])

val _ = save_thm("And_TT_thm",And_TT_thm)

(******************************************************************************)
(* Prove bexpVal(And f1 f2) = bexpVal(And f2 f1)                              *)
(******************************************************************************)
(* ==== start here ====
set_goal([],``!f1 f2.bexpVal(And f1 f2) = bexpVal(And f2 f1)``)
Induct_on`f1` THEN
PROVE_TAC[bexpVal_def]
 ==== end here ==== *)
val And_sym_thm =
TAC_PROOF(([],``!f1 f2.bexpVal(And f1 f2) = bexpVal(And f2 f1)``),
Induct_on`f1` THEN
PROVE_TAC[bexpVal_def])

val _ = save_thm("And_sym_thm",And_sym_thm)


val _ = export_theory();

end
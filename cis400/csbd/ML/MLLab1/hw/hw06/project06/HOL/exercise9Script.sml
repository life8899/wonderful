(* Author: Xiaozhi Li *)
(*Project 6**)

structure exercise9Script =struct

open HolKernel Parse boolLib bossLib;

val _=new_theory "exercise9";

(* 9-5-1 *)

val absorptionRule=
TAC_PROOF (
([],``!p q. (p ==> q) ==> p ==> p/\q``),
(REPEAT STRIP_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC) );

val _=save_thm("absorptionRule",absorptionRule);
val _=export_theory();

(* 9-5-2 *)
val constructiveDilemmaRule =
 TAC_PROOF (
([], ``!p q r s.(p ==> q) /\ (r ==> s) ==> (p\/r) ==> (q\/s)``),
REPEAT STRIP_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC THEN
ASM_REWRITE_TAC []
);

val _=save_thm("constructiveDilemmaRule",constructiveDilemmaRule);
 

(* 9-5-3 *)

val absorptionRule2=
 TAC_PROOF (
([], ``!p q r s.(p ==> q) /\ (r ==> s) ==> (p\/r) ==> (q\/s)``),
PROVE_TAC []
);

val _=save_thm("absorptionRule2",absorptionRule2);
val constructiveDilemmaRule2=
 TAC_PROOF (
([],``!p q r s.(p ==> q) /\ (r ==> s) ==> (p\/r) ==> (q\/s)``),
PROVE_TAC []
);

val _=save_thm("constructiveDilemmaRule2",constructiveDilemmaRule2);
val _=export_theory(); 
end (* structure *)
(* Xiaozhi Li *)
(* csbd project 07 *)

structure exTypeScript = struct
open HolKernel Parse boolLib bossLib;
open listTheory TypeBase arithmeticTheory

val _ = new_theory "exType";



val APP_def =
Define
`(APP [] (l: 'a list) = l) /\
 (APP (h :: (l1 : 'a list)) (l2: 'a list) = h:: (APP l1 l2))`

val APP_ASSOC =
TAC_PROOF(
([],
``!(l1: 'a list)(l2 :'a list)(l3 :'a list).
    (APP(APP l1 l2) l3) = (APP l1 (APP l2 l3))``),
Induct_on `l1` THEN
ASM_REWRITE_TAC[APP_def])

val _ = save_thm("APP_ASSOC", APP_ASSOC)


val LENGTH_APP=
TAC_PROOF(
([],
``!(l1: 'a list)(l2: 'a list).
   (LENGTH (APP l1 l2)) =(LENGTH l1 + LENGTH l2)``),
Induct_on `l1` THEN
Induct_on `l2` THEN
ASM_REWRITE_TAC[ADD_CLAUSES,APP_def,LENGTH])

val _ = save_thm("LENGTH_APP", LENGTH_APP)


val _= export_theory ();
val _= print_theory "-";

end (* structure *)
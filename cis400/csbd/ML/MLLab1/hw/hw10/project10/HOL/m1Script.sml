(*Xiaozhi Li *)
(* Nov 8 2017*)
(* m1Script.sml *)

structure m1Script=struct

(* interactive mode
app load ["TypeBase","smTheory","sminfRules","m1Theory"];
open TypeBase smTheory sminfRules m0Theory
*)
open HolKernel boolLib Parse bossLib
open TypeBase smTheory sminfRules

val _= new_theory "m1"


(*define datatype for inputs *)

val _ =
Datatype
`command = i0 | i1`

(* -------------------------------------------------------------------------- *)
(* Prove distinctiveness properties of command using the function found in    *)
(* isainfRules, which use distinct_of in TypeBase                             *)
(* -------------------------------------------------------------------------- *)
val command_distinct_clauses = distinct_of``:command``
val _ = save_thm("command_distinct_clauses",command_distinct_clauses)


(*define states *)
val _ = Datatype `state = S0 | S1 | S2`

(* -------------------------------------------------------------------------- *)
(* Prove distinctiveness properties of state using the function found in      *)
(* isainfRules, which use distinct_of in TypeBase                             *)
(* -------------------------------------------------------------------------- *)
val state_distinct_clauses = distinct_of``:state``
val _ = save_thm("state_distinct_clauses",state_distinct_clauses)


(*define outputs *)
val _ = Datatype `output = o0 | o1`

(* -------------------------------------------------------------------------- *)
(* Prove distinctiveness properties of outputs using the function found in    *)
(* isainfRules, which use distinct_of in TypeBase                             *)
(* -------------------------------------------------------------------------- *)
val output_distinct_clauses = distinct_of``:output``
val _ = save_thm("output_distinct_clauses",output_distinct_clauses)

(* ==== start here ====


 ==== end here ==== *)
val _ = export_theory ()
val _ = print_theory "-"

end (*structure *)
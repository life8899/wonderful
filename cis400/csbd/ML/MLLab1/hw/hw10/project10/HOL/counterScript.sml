(*Xiaozhi Li *)
(* Nov 8 2017*)
(* counterScript.sml *)

structure counterScript=struct

(* interactive mode
app load ["TypeBase","smTheory","sminfRules","m0Theory"];
open TypeBase smTheory sminfRules m0Theory
*)
open HolKernel boolLib Parse bossLib
open TypeBase smTheory sminfRules

val _= new_theory "counter"

(* ==== start here ====


 ==== end here ==== *)
val _ = export_theory ()
val _ = print_theory "-"

end (*structure *)
(* Xiaozhi Li *)
(* exercise 9.5.1 *)

(* !p q. (p => q) => p => p/\q  *)
set_goal([],``!p q. (p ==> q) ==> p ==> p/\q``);
REPEAT STRIP_TAC THEN
ASM_REWRITE_TAC [] THEN
RES_TAC


(* exercise 9.5.2 *)

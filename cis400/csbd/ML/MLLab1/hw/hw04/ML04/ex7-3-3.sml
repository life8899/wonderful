(* created by Xiaozhi Li*)
(* exercise 7.3.3       *)

fun forallTerm longTerm=
let
val (x,P)=dest_exists (dest_neg a)
in
``!x.~(P x)``
end;

(*    these are for easy testing.       *)
forallTerm ``~?x.(P x)``;

forallTerm ``~?z.Q z``;

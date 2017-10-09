(* created by Xiaozhi Li *)
(* 17/9/27               *)
(* Exercise 7.3.1*********)

fun andImp2Imp term=
let
 val (conjTerm1,r)= dest_imp term
 val (p,q )=dest_conj conjTerm1
 (*val ts= mk_imp (p,q) *)
in
``p ==> q ==> r``
end;

(* test case for 7.3.1:  *)

andImp2Imp ``(p/\q) ==> r``;
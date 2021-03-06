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

(* Exercise 7.3.2*********)
fun impImpAnd impTerm= 
let
 val (p,qr)= dest_imp impTerm
 val (q,r )=dest_imp qr
in
 mk_imp (mk_conj (p,q), r)
end;

(* test case for 7.3.2:  *)
impImpAnd ``(p ==> q ==> r)``;
impImpAnd (andImp2Imp `` (p /\ q) ==> r``);
andImp2Imp (impImpAnd ``p ==>q ==>r``);
(******************************************************************************)
(* Author: Xiaozhi Li                                                      *)
(*Proj 6                 **)

structure exercise10Script =struct

open HolKernel Parse boolLib bossLib;

val _=new_theory "exercise10";

(*10.4.1*)

val problemOnethm=
TAC_PROOF(
([ `` !x: 'a.P(x) ==> M(x) ``, ``(P: 'a->bool) (s: 'a)``],
``(M:'a->bool) (s: 'a)``),
RES_TAC
);

val _=save_thm("problemOnethm",problemOnethm);

(*        *)
(* 10.4.2 *)
val _=export_theory();



val  problemTwothm=
TAC_PROOF(
([``p /\ q ==> r``, ``r ==> s``, ``~s``], ``p ==> ~q``),
(PAT_ASSUM ``r  ==>s``
	    (fn th =>
     	    ASSUME_TAC
     	      (DISJ_IMP (ONCE_REWRITE_RULE [DISJ_SYM] (IMP_ELIM th) )
              )
            )
) THEN
(PAT_ASSUM ``p /\ q ==> r``
	   (fn th2 =>
     	   ASSUME_TAC
     	   (DISJ_IMP (ONCE_REWRITE_RULE [DISJ_SYM] (IMP_ELIM th2))))) THEN
REPEAT STRIP_TAC THEN
RES_TAC
)
val _=save_thm("problemTwothm",problemTwothm);

(* *)
(* 10.4.3 was not solved *)
val _=export_theory();
end (*struct*)
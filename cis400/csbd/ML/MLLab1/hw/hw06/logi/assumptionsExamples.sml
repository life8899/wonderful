

(* -------------------------------------------------------------------------- *)
(* Dealing with Assumptions in Goal-Oriented Proofs                           *)
(* Section 10.2: Manipulating Assumptions with PAT_ASSUM                      *)
(* Author: Shiu-Kai Chin                                                      *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* In previous modules we learned how to reason within the assumption list    *)
(* using ASM_REWRITE_TAC and RES_TAC. There are times when we'd like to       *)
(* manipulate individual terms in the assumption list. To do this we use      *)
(* PAT_ASSUM.                                                                 *)
(* -------------------------------------------------------------------------- *)

(*******************)
(* Using PAT_ASSUM *)
(*******************)
(* -------------------------------------------------------------------------- *)
(* Suppose we want to prove the goal [~p \/ q, p] ?- q. If you try proving    *)
(* this goal using RES_TAC, you will find RES_TAC does not prove the goal.    *)
(* This is because RES_TAC doesn't know the ~p \/ q is p ==> q                *)
(* -------------------------------------------------------------------------- *)
set_goal([``~p \/ q``, ``p:bool``],``q:bool``);
RES_TAC


(* -------------------------------------------------------------------------- *)
(* What we'd like to do is to rewrite ~p \/ q in the assumptions to p ==> q.  *)
(* To see how we'd do this as a combination of forward and backwards proof    *)
(* we can first ASSUME ``~p \/ q``, then use the DISJ_IMP inference rule.     *)
(* -------------------------------------------------------------------------- *)
val th = ASSUME``~p \/ q``
DISJ_IMP th

(* -------------------------------------------------------------------------- *)
(* Notice the double negation of p.  How do we get rid of simple things such  *)
(* as double negation in logic?  One easy way is to use REWRITE_RULE, which   *)
(* simplifies theorems in forward proofs.                                     *)
(* -------------------------------------------------------------------------- *)
REWRITE_RULE[](DISJ_IMP th)

(* -------------------------------------------------------------------------- *)
(* Now we have the theorem we want. Notice that the theorem's assumption      *)
(* lists is a subset of the assumptions of our goal. That means we can use    *)
(* ASSUME_TAC to add the theorem to our assumption list.                      *)
(* -------------------------------------------------------------------------- *)
ASSUME_TAC(REWRITE_RULE[](DISJ_IMP th))

(* -------------------------------------------------------------------------- *)
(* Now that we have p ==> q in the assumptions, we can use RES_TAC to finish  *)
(* the proof.                                                                 *)
(* -------------------------------------------------------------------------- *)
RES_TAC


(* -------------------------------------------------------------------------- *)
(* As a set up to using PAT_ASSUM, let's do one more thing.  Recall the       *)
(* tactic we used to add modified form of theorem th to the assumption list.  *)
(* It was ASSUME_TAC(REWRITE_RULE[](DISJ_IMP th)). Let's create its lambda    *)
(* abstraction.                                                               *)
(* -------------------------------------------------------------------------- *)
fn th => ASSUME_TAC(REWRITE_RULE[](DISJ_IMP th))

(* -------------------------------------------------------------------------- *)
(* Sending it to HOL shows it's a theorem tactic.                             *)
(* Let's redo the proof using our lambda abstraction.                         *)
(* Restore the initial goal by doing M-h B.                                   *)
(* -------------------------------------------------------------------------- *)
(fn th => ASSUME_TAC(REWRITE_RULE[](DISJ_IMP th)))(ASSUME``~p \/ q``)
RES_TAC

(* -------------------------------------------------------------------------- *)
(* What we did was ASSUME on of the assumptions in the assumption list, and   *)
(* then applied a theorem tactic to the assumed theorem. The theorem-tactic   *)
(* in this case was (fn th => ASSUME_TAC(REWRITE_RULE[](DISJ_IMP th)))        *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* The above precisely describes how PAT_ASSUM works.  PAT_ASSUM is applied   *)
(* to two arguments. The first is a pattern that is used to find the first    *)
(* assumption in the assumption list to ASSUME, the second argument is a      *)
(* theorem tactic that will be applied to the assumed theorem and the current *)
(* goal.  Let's see how it works.  We restore the initial goal, and then do   *)
(* PAT_ASSUM as shown. Restore the initial goal with M-h B.                   *)
(* -------------------------------------------------------------------------- *)
PAT_ASSUM
``~p \/ q``
(fn th => ASSUME_TAC(REWRITE_RULE[](DISJ_IMP th))) THEN
RES_TAC

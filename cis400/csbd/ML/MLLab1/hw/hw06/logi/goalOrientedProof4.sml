(* -------------------------------------------------------------------------- *)
(* Goal-Oriented Proofs                                                       *)
(* Sections 9.3                                                               *)
(* Author: Shiu-Kai Chin                                                      *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* In this example, we introduce TAC_PROOF, which is a function that takes a  *)
(* pair, whose first element is a goal, and whose second element is a tactic  *)
(* and returns a theorem, if the tactic proves the goal.                      *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* We also introduce several more tactics that are our initial foundation of  *)
(* tactics for goal-oriented proofs. Let's illustrate TAC_PROOF first.        *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* Recall one of our more verbose proofs of [A,B] ?- A /\ B.  First, we       *)
(* applied CONJ_TAC, then we finished the proof on both subgoals generated by *)
(* CONJ_TAC with ASM_REWRITE_TAC. We repeat the proof below.                  *)
(* -------------------------------------------------------------------------- *)
set_goal([``A:bool``,``B:bool``],``A /\ B``);
CONJ_TAC THEN
ASM_REWRITE_TAC[]


(* -------------------------------------------------------------------------- *)
(* The function TAC_PROOF takes a pair, where the first element of the pair   *)
(* is a goal, and the second element of the pair is the tactic proving the    *)
(* goal.  If the tactic in fact proves the goal, then TAC_PROOF returns the   *)
(* the corresponding theorem. Let's try it out on our example proof.          *)
(* -------------------------------------------------------------------------- *)
val exampleTheorem1 =
TAC_PROOF
(([``A:bool``,``B:bool``],``A /\ B``),
 CONJ_TAC THEN
 ASM_REWRITE_TAC[]);
 


(* ========================================================================== *)
(* Let's take break. We'll return to learn a few more tactics when we come    *)
(* back.                                                                      *)
(*                                                                            *)
(* ========================================================================== *)



(* -------------------------------------------------------------------------- *)
(* Welcome back!  Let's look at a few more tactics. We will use GEN_TAC,      *)
(* DISCH_TAC, STRIP_TAC, EQ_TAC, RES_TAC, REPEAT, and PROVE_TAC. Make sure    *)
(* you open up the online HOL reference manual and look these tactics up.     *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* The tactics and tacticals do the following:                                *)
(*  - GEN_TAC removes the outermost universal quantifer from the conclusion   *)
(*    of a goal                                                               *)
(*  - DISCH_TAC moves the antecedent of an implicative goal into the          *)
(*    assumptions                                                             *)
(*  - STRIP_TAC removes one outermost occurrence of one of the connectives    *)
(*    !, ==>, ~, or /\ from the conclusion of a goal                          *)
(*  - EQ_TAC applied to a biconditional goal returns both conditionals as     *)
(*    subgoals                                                                *)
(*  - RES_TAC looks for pairs of assumptions in the assumption list where one *)
(*    term is an implication and the other term matches the antecedent of the *)
(*    implication                                                             *)
(*  - REPEAT is a tactical that applies a tactic until it fails               *)
(*  - PROVE_TAC is a tactic that attempts to prove the goal with a list of    *)
(*    lemmas. It is a proof procedure that is semi-complete for pure first    *)
(*    order logic.                                                            *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* To illustrate the use of the above tactics and tacticals, let's prove the  *)
(* following goal: !x y z.(x /\ y ==> z) = (x ==> y ==> z)                    *)
(* -------------------------------------------------------------------------- *)
set_goal([],``!x y z.(x /\ y ==> z) = (x ==> y ==> z)``);

(* -------------------------------------------------------------------------- *)
(* Let's deal with the universal quantifiers first. We apply GEN_TAC and see  *)
(* that !x is removed and replaced with !y z.  x is now a free variable in    *)
(* the formula.                                                               *)
(* -------------------------------------------------------------------------- *)
GEN_TAC


(* -------------------------------------------------------------------------- *)
(* Let's backup to the initial goal and instead execute REPEAT GEN_TAC to     *)
(* eliminate all three universally quantified variables. We do M-h B to       *)
(* restore the initial goal.  Next we do REPEAT GEN_TAC and see that all the  *)
(* universally quantified variables are now free in the formula.              *)
(* -------------------------------------------------------------------------- *)
REPEAT GEN_TAC


(* -------------------------------------------------------------------------- *)
(* Next, we use EQ_TAC to split the biconditional goal into each of the       *)
(* conditions. EQ_TAC produces two implications as subgoals.                  *)
(* -------------------------------------------------------------------------- *)
EQ_TAC

(* -------------------------------------------------------------------------- *)
(* DISCH_TAC is used to move the antecedent of implicative goals into the     *)
(* assumption list.                                                           *)
(* -------------------------------------------------------------------------- *)
DISCH_TAC

(* -------------------------------------------------------------------------- *)
(* We see that this can be repeated for the other antecedents.  So, let's     *)
(* back up one step and do REPEAT DISCH_TAC.  We do M-h b, then apply         *)
(* REPEAT DISCH_TAC                                                           *)
(* -------------------------------------------------------------------------- *)
REPEAT DISCH_TAC

(* -------------------------------------------------------------------------- *)
(* At this point, let's do some clean-up.  We have used two tactics and a     *)
(* tactical.  Let's compose them all together as one tactic and start from    *)
(* the beginning to build our proof up step-by-step.  Let's restore the       *)
(* original goal by doing M-h B and do                                        *)
(*  REPEAT GEN_TAC THEN EQ_TAC THEN REPEAT DISCH_TAC.                         *)
(* -------------------------------------------------------------------------- *)
REPEAT GEN_TAC THEN
EQ_TAC THEN
REPEAT DISCH_TAC

(* -------------------------------------------------------------------------- *)
(* We see that both subgoals have z as a goal and slightly differing          *)
(* assumptions. In the first subgoal we see x and y appear separately, while  *)
(* in the second subgoal we have x /\ y instead. Looking at assumption 0 in   *)
(* the second subgoal, we see it is more convenient to have x and y           *)
(* instead of together.  Is there anything we can do to have simpler terms in *)
(* the assumption list? The answer is yes.                                    *)
(* -------------------------------------------------------------------------- *)


(* ========================================================================== *)
(* If you can stand the suspense, let's take a brief break and when we come   *)
(* back, we'll show an easy alternative that will help us out.                *)
(*                                                                            *)
(* ========================================================================== *)


(* -------------------------------------------------------------------------- *)
(* Welcome back! Recall where we are in our proof. We have two subgoals with  *)
(* slightly different assumption lists.  In particular, in the second subgoal *)
(* we have x /\ y instead of x and y separately, which is the case for the    *)
(* first subgoal. As an alternative, we can use a more sophisticated          *)
(* tactic, namely STRIP_TAC instead of GEN_TAC and DISCH_TAC.  Let's restore  *)
(* the initial goal and use STRIP_TAC instead. We do M-h B to restore.        *)
(* -------------------------------------------------------------------------- *)
REPEAT STRIP_TAC

(* -------------------------------------------------------------------------- *)
(* We see that STRIP_TAC removes all the universal quantifiers. As before,    *)
(* we do EQ_TAC, and instead of REPEAT DISCH_TAC, we do REPEAT STRIP_TAC.     *)
(* -------------------------------------------------------------------------- *)
EQ_TAC THEN
REPEAT STRIP_TAC

(* -------------------------------------------------------------------------- *)
(* Notice that now both assumption lists have x and y separately as           *)
(* assumptions. This illustrates STRIP_TAC's additional capabilities when     *)
(* compared to DISCH_TAC. When we don't want the additional capabilities, we  *)
(* just use the simpler tactics like DISCH_TAC or GEN_TAC to limit how much   *)
(* we change the assumptions and goals.                                       *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* Looking at the assumption lists of both subgoals, we can derive z by what  *)
(* amounts to Modus Ponens in the assumption list. We do this by RES_TAC.     *)
(* -------------------------------------------------------------------------- *)
RES_TAC

(* -------------------------------------------------------------------------- *)
(* RES_TAC proves the first subgoal. We try it on the remaining second        *)
(* subgoal.                                                                   *)
(* -------------------------------------------------------------------------- *)
RES_TAC

(* -------------------------------------------------------------------------- *)
(* As RES_TAC was applied to both subgoals, we use the tactical THEN to       *)
(* compose it with REPEAT STRIP_TAC THEN EQ_TAC THEN REPEAT STRIP_TAC.        *)
(* Restoring the initial goal we try out composed tactic to see if we prove   *)
(* the goal.                                                                  *)
(* -------------------------------------------------------------------------- *)
REPEAT STRIP_TAC THEN
EQ_TAC THEN
REPEAT STRIP_TAC THEN
RES_TAC


(* -------------------------------------------------------------------------- *)
(* We use TAC_PROOF to bundle the goal and its proof. We assign it to         *)
(* exampleTheorem.                                                            *)
(* -------------------------------------------------------------------------- *)
val exampleTheorem =
TAC_PROOF(
([],``!x y z.(x /\ y ==> z) = (x ==> y ==> z)``),
(REPEAT STRIP_TAC THEN
 EQ_TAC THEN
 REPEAT STRIP_TAC THEN
 RES_TAC))

(* -------------------------------------------------------------------------- *)
(* Finally, we demonstrate the capability of the decision procedure PROVE_TAC.*)
(* PROVE_TAC is semi-complete in its ability to prove theorems in pure first  *)
(* order logic.  Setting the goal one more time we show PROVE_TAC can do the  *)
(* proof itself.                                                              *)
(* -------------------------------------------------------------------------- *)
set_goal([],``!x y z.(x /\ y ==> z) = (x ==> y ==> z)``);
PROVE_TAC []


(* -------------------------------------------------------------------------- *)
(* Goal-Oriented Proofs                                                       *)
(* Section 9.1.1: Basic Techniques                                            *)
(* Author: Shiu-Kai Chin                                                      *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* As an introduction to goal-oriented or backwards proofs, we prove that     *)
(* the theorem {A,B} |- A /\ B.  First, let's recall the forward proof:       *)
(* -------------------------------------------------------------------------- *)
val th1 = ASSUME``A:bool``
val th2 = ASSUME``B:bool``
CONJ th1 th2;

(* -------------------------------------------------------------------------- *)
(* Recall that the CONJ inference rule, which is given in the HOL documenation*)
(* is      A1 |- t1         A2 |- t2                                          *)
(*         -------------------------  CONJ                                    *)
(*            A1 u A2 |- t1 /\ t2                                             *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* In goal-oriented proofs, we use tactics (or reverse inference rules)       *)
(* instead of forwared inference rules.                                       *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* The "backwards" inference rule corresponding to CONJ is CONJ_TAC           *)
(*     A ?- t1 /\ t2                                                          *)
(*  ===================   CONJ_TAC                                            *)
(*  A ?- t1     A ?- t2                                                       *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* Let's create the goal we want to prove.  Recall that goals are a list      *)
(* of assumptions with the conclusion we wish to prove using the              *)
(* assumptions.                                                               *)
(* -------------------------------------------------------------------------- *)
val goal1 = ([``A:bool``,``B:bool``],``A /\ B``)

(* -------------------------------------------------------------------------- *)
(* Let's look at the type of CONJ_TAC.                                        *)
(* -------------------------------------------------------------------------- *)
CONJ_TAC;

(* -------------------------------------------------------------------------- *)
(* We see that it a function that takes a goal, whose ML type is              *)
(* (term list * term), and returns a pair whose first element is a list of    *)
(* goals, i.e., (term list * term)list, and whose second element is a         *)
(* function that takes a list of theorems and returns a theorem, i.e,         *)
(* thm list -> thm                                                            *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* What is being returned by CONJ_TAC is a list of subgoals to prove paired   *)
(* with a justification function that takes a list of theorems and returns    *)
(* a theorem corresponding to the goal to which CONJ_TAC was applied.         *)
(* In other words, the forward inference rule corresponding to CONJ_TAC.      *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* Let's see CONJ_TAC in action.                                              *)
(* -------------------------------------------------------------------------- *)
goal1;
val (goal_list, just_fn) = CONJ_TAC goal1;


(* -------------------------------------------------------------------------- *)
(* Notice that CONJ_TAC is saying, if we can prove two theorems,              *)
(* {A,B} |- A and {A,B} |- B, then the justification function will prove      *)
(* our goal, i.e., just_fn [{A,B} |- A, {A,B} |- B] = {A,B} |- A /\ B         *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* Let's prove both theorems using forward proof. This is easily done by      *)
(* a combination of ASSUME, DISCH, and UNDISCH, where DISCH introduces a      *)
(* boolean term into an implication in the conclusion, and UNDISCH move       *)
(* the antecedent of an implication in the conclusion in to the set of        *)
(* assumptions.  Go to the online HOL webpage and look up each function to    *)
(* see their descriptions.                                                    *)
(* -------------------------------------------------------------------------- *)
val th1 =
let
 val th1 = ASSUME``A:bool``
 val th2 = DISCH``B:bool`` th1
in
 UNDISCH th2
end

val th2 =
let
 val th1 = ASSUME``B:bool``
 val th2 = DISCH``A:bool`` th1
in
 UNDISCH th2
end

just_fn [th1,th2]



(* -------------------------------------------------------------------------- *)
(* OK ... let's take a short break.                                           *)
(* We will pick things up here when we come back.                             *)
(* -------------------------------------------------------------------------- *)



(* -------------------------------------------------------------------------- *)
(* Welcome back!  Remember where we left off ... we had just illustrated      *)
(* how the justification function of CONJ_TAC proved our goal if we had       *)
(* proved theorems corresponding to the two subgoals.                         *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* Is there any magic here?  No, it's just functional programming. All that   *)
(* is going on is we're using HOL syntax functions and forward inference      *)
(* rules.  Let's define our own version of CONJ_TAC.  Ours is Conj_tac.       *)
(* -------------------------------------------------------------------------- *)
fun Conj_tac (asl,term) =
let
 val (l,r) = dest_conj term
in
 ([(asl,l),(asl,r)],fn [th1,th2] => CONJ th1 th2)
end;

(* -------------------------------------------------------------------------- *)
(* Looking at the above definition of Conj_tac, we see that our input is      *)
(* the goal consisting of a list of boolean terms, asl, and a desired         *)
(* conclusion, term.  Since we are expecting term to be of the form l /\ r,   *)
(* we use dest_conj to get l and r separately.  These are used to form the    *)
(* the subgoal list [(asl,l),(asl,r)].  The justification function is just a  *)
(* functional abstraction, a lambda expression: "Lambda applied to the two    *)
(* element list [th1,th2], where the body of the lambda expression is         *)
(* CONJ th1 th2                                                               *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* Let's see Conj_tac in action.                                              *)
(* -------------------------------------------------------------------------- *)
val (goal_list,just_fun) = Conj_tac goal1;
just_fn [th1,th2];

(* -------------------------------------------------------------------------- *)
(* The above definition of Conj_tac is illustrative of how Reverse inference  *)
(* rules are defined.  With just a little bit of HOL syntax functions, lambda *)
(* abstraction, and functional programming, you can customize your version of *)
(* HOL. More importantly, you now can pierce the veil of magic to see the     *)
(* inner workings of HOL and understand what you are seeing.                  *)
(* -------------------------------------------------------------------------- *)

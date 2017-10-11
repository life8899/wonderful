(* -------------------------------------------------------------------------- *)
(* Goal-Oriented Proofs                                                       *)
(* Section 9.2.1: Tactics                                                     *)
(* Author: Shiu-Kai Chin                                                      *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* In a previous module, we introduced the concept of goal-oriented proof     *)
(* using backwards or reverse inference rules, such as CONJ_TAC. We also      *)
(* created our own version of CONJ_TAC to illustrate the inner workings of    *)
(* tactics. We saw that a tactic, when applied to a goal, return a pair,      *)
(* where the first element of the pair is a list of subgoals, and the         *)
(* second element of the pair is a justification function, which when applied *)
(* to theorems corresponding to the subgoals, returns a theorem corresponding *)
(* to the goal.                                                               *)
(* -------------------------------------------------------------------------- *)


(* -------------------------------------------------------------------------- *)
(* Our use of tactics so far is cumbersome. We applied the tactic to a goal,  *)
(* looked at the subgoals, proved the subgoals, and then applied the          *)
(* justification function. What we illustrate now is the use of the proof     *)
(* manager in HOL, that keeps track of all the subgoals and justification     *)
(* functions, so that all we need do is focus on the proof.                   *)
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
(* Our goal is: [``A:bool``,``B:bool``] ?- ``A /\ B``                         *)
(* First, we add the goal to our proof manager using set_goal                 *)
(* -------------------------------------------------------------------------- *)
set_goal([``A:bool``,``B:bool``],``A /\ B``)

(* -------------------------------------------------------------------------- *)
(* We apply the tactic CONJ_TAC to the goal. We do this by highlighting       *)
(* CONJ_TAC and either going into the HOL menu and doing                      *)
(* Goal -> Apply Tactic, or M-h e                                             *)
(* -------------------------------------------------------------------------- *)

CONJ_TAC

(* -------------------------------------------------------------------------- *)
(* What we see are two subgoals [A,B] ?- A and [A,B] ?- B. When using HOL     *)
(* interactively, we can work on only one goal at a time, namely the top goal.*)
(* Which is the top goal?  We use top_goal() to find out. We see that the top *)
(* goal is [A,B] ?- A                                                         *)
(* -------------------------------------------------------------------------- *)
top_goal()


(* -------------------------------------------------------------------------- *)
(* In the case where we have a theorem corresponding to a goal, we can        *)
(* use the theorem-tactic ACCEPT_TAC with the theorem to satisfy the goal.    *)
(* ACCEPT_TAC is a theorem-tactic because its first argument is a theorem.    *)
(* ACCEPT_TAC when applied to a theorem returns a tactic.                     *)
(* It is straightforward to satisfy [A,B] ?- A with the theorem [A] |- A,     *)
(* which we obtain with ASSUME``A:bool``.                                     *)
(* -------------------------------------------------------------------------- *)
ACCEPT_TAC(ASSUME ``A:bool``)

(* -------------------------------------------------------------------------- *)
(* We proved the first subgoal. Now we do the same thing with the remaining   *)
(* goal [A,B] ?- B.                                                           *)
(* -------------------------------------------------------------------------- *)
ACCEPT_TAC(ASSUME``B:bool``)


(* -------------------------------------------------------------------------- *)
(* Let's take a break. We we come back, we will learn more about tactics and  *)
(* how to compose them. We will also learn more about the proof manager.      *)
(* -------------------------------------------------------------------------- *)

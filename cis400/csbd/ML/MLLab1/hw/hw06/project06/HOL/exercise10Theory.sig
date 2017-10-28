signature exercise10Theory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val problemOnethm : thm
    val problemTwothm : thm

  val exercise10_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "exercise10"

   [patternMatches] Parent theory of "exercise10"

   [problemOnethm]  Theorem

      [oracles: ] [axioms: ] [P s, ∀x. P x ⇒ M x] |- M s

   [problemTwothm]  Theorem

      [oracles: DISK_THM] [axioms: ] [¬s, r ⇒ s, p ∧ q ⇒ r] |- p ⇒ ¬q


*)
end

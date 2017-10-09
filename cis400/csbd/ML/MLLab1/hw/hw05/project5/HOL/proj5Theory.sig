signature proj5Theory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val conjSymAll : thm
    val conjSymThm : thm
    val problem1Thm : thm

  val proj5_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "proj5"

   [patternMatches] Parent theory of "proj5"

   [conjSymAll]  Theorem

      |- ∀p q. p ∧ q ⇔ q ∧ p

   [conjSymThm]  Theorem

      |- p ∧ q ⇔ q ∧ p

   [problem1Thm]  Theorem

      |- p ⇒ (p ⇒ q) ⇒ (q ⇒ r) ⇒ r


*)
end

signature exTypeTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val APP_def : thm

  (*  Theorems  *)
    val APP_ASSOC : thm
    val LENGTH_APP_def : thm
    val LENGTH_APP_ind : thm

  val exType_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "exType"

   [patternMatches] Parent theory of "exType"

   [APP_def]  Definition

      |- (∀l. APP [] l = l) ∧ ∀h l1 l2. APP (h::l1) l2 = h::APP l1 l2

   [APP_ASSOC]  Theorem

      |- ∀l1 l2 l3. APP (APP l1 l2) l3 = APP l1 (APP l2 l3)

   [LENGTH_APP_def]  Theorem

      |- (LENGTH_APP [] [] = 0) ∧
         (LENGTH_APP [] (v6::v7) = LENGTH (APP [] (v6::v7))) ∧
         (LENGTH_APP (v2::v3) l2 = LENGTH (APP (v2::v3) l2))

   [LENGTH_APP_ind]  Theorem

      |- ∀P.
           P [] [] ∧ (∀v6 v7. P [] (v6::v7)) ∧ (∀v2 v3 l2. P (v2::v3) l2) ⇒
           ∀v v1. P v v1


*)
end

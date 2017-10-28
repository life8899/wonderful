<<HOL message: Created theory "exType">>
Saved definition __ "APP_def"
Saved theorem _____ "APP_ASSOC"
<<HOL message: mk_functional: 
  pattern completion has added 1 clause to the original specification.>>
<<HOL warning: GrammarDeltas.revise_data: 
  Grammar-deltas:
    overload_on("LENGTH_APP_tupled")
  invalidated by DelConstant(exType$LENGTH_APP_tupled)>>
Saved definition __ "LENGTH_APP_def"
Saved induction ___ "LENGTH_APP_ind"
Exporting theory "exType" ... done.
Theory "exType" took 0.43600s to build
Theory: exType

Parents:
    indexedLists
    patternMatches

Term constants:
    APP          :α list -> α list -> α list
    LENGTH_APP   :α list -> α list -> num

Definitions:
    APP_def
      |- (∀l. APP [] l = l) ∧ ∀h l1 l2. APP (h::l1) l2 = h::APP l1 l2

Theorems:
    APP_ASSOC
      |- ∀l1 l2 l3. APP (APP l1 l2) l3 = APP l1 (APP l2 l3)
    LENGTH_APP_def
      |- (LENGTH_APP [] [] = 0) ∧
         (LENGTH_APP [] (v6::v7) = LENGTH (APP [] (v6::v7))) ∧
         (LENGTH_APP (v2::v3) l2 = LENGTH (APP (v2::v3) l2))
    LENGTH_APP_ind
      |- ∀P.
           P [] [] ∧ (∀v6 v7. P [] (v6::v7)) ∧
           (∀v2 v3 l2. P (v2::v3) l2) ⇒
           ∀v v1. P v v1
Completed load of exTypeScript

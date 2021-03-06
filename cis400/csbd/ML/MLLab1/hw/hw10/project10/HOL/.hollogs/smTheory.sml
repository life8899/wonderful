<<HOL message: Created theory "sm">>
Saved theorem _____ "Trans_rules"
Saved theorem _____ "Trans_ind"
Saved theorem _____ "Trans_strongind"
Saved theorem _____ "Trans_cases"
Saved theorem _____ "datatype_configuration"
Saved theorem _____ "configuration_11"
Saved theorem _____ "configuration_case_cong"
Saved theorem _____ "configuration_nchotomy"
Saved theorem _____ "configuration_Axiom"
Saved theorem _____ "configuration_induction"
<<HOL message: Defined type: "configuration">>
Saved theorem _____ "configuration_11"
Saved theorem _____ "configuration_one_one"
Saved theorem _____ "TR_rules"
Saved theorem _____ "TR_ind"
Saved theorem _____ "TR_strongind"
Saved theorem _____ "TR_cases"
Saved theorem _____ "TR_clauses"
Saved theorem _____ "TR_deterministic"
Saved theorem _____ "TR_complete"
Saved theorem _____ "Trans_TR_lemma"
Saved theorem _____ "TR_Trans_lemma"
Saved theorem _____ "Trans_Equiv_TR"
Exporting theory "sm" ... done.
Theory "sm" took 0.79600s to build
Theory: sm

Parents:
    indexedLists
    patternMatches

Type constants:
    configuration 3

Term constants:
    CFG                  :'input list ->
                          'state ->
                          'output list ->
                          ('input, 'output, 'state) configuration
    TR                   :'input ->
                          ('input, 'output, 'state) configuration ->
                          ('input, 'output, α) configuration -> bool
    Trans                :'input -> 'state -> 'state -> bool
    configuration_CASE   :('input, 'output, 'state) configuration ->
                          ('input list -> 'state -> 'output list -> α)
                          -> α
    configuration_size   :('input -> num) ->
                          ('output -> num) ->
                          ('state -> num) ->
                          ('input, 'output, 'state) configuration -> num

Definitions:
    TR_def
      |- TR =
         (λa0 a1 a2.
            ∀TR'.
              (∀a0 a1 a2.
                 (∃NS Out s ins outs.
                    (a1 = CFG (a0::ins) s outs) ∧
                    (a2 = CFG ins (NS s a0) (Out s a0::outs))) ⇒
                 TR' a0 a1 a2) ⇒
              TR' a0 a1 a2)
    Trans_def
      |- Trans =
         (λa0 a1 a2.
            ∀Trans'.
              (∀a0 a1 a2. (∃NS. a2 = NS a1 a0) ⇒ Trans' a0 a1 a2) ⇒
              Trans' a0 a1 a2)
    configuration_TY_DEF
      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'configuration' .
                  (∀a0'.
                     (∃a0 a1 a2.
                        a0' =
                        (λa0 a1 a2.
                           ind_type$CONSTR 0 (a0,a1,a2)
                             (λn. ind_type$BOTTOM)) a0 a1 a2) ⇒
                     'configuration' a0') ⇒
                  'configuration' a0') rep
    configuration_case_def
      |- ∀a0 a1 a2 f. configuration_CASE (CFG a0 a1 a2) f = f a0 a1 a2
    configuration_size_def
      |- ∀f f1 f2 a0 a1 a2.
           configuration_size f f1 f2 (CFG a0 a1 a2) =
           1 + (list_size f a0 + (f2 a1 + list_size f1 a2))

Theorems:
    TR_Trans_lemma
      |- TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs)) ⇒
         Trans x s (NS s x)
    TR_cases
      |- ∀a0 a1 a2.
           TR a0 a1 a2 ⇔
           ∃NS Out s ins outs.
             (a1 = CFG (a0::ins) s outs) ∧
             (a2 = CFG ins (NS s a0) (Out s a0::outs))
    TR_clauses
      |- (∀x x1s s1 out1s x2s out2s s2.
            TR x (CFG x1s s1 out1s) (CFG x2s s2 out2s) ⇔
            ∃NS Out ins.
              (x1s = x::ins) ∧ (x2s = ins) ∧ (s2 = NS s1 x) ∧
              (out2s = Out s1 x::out1s)) ∧
         ∀NS Out x x1s s1 out1s x2s out2s.
           TR x (CFG x1s s1 out1s)
             (CFG x2s (NS s1 x) (Out s1 x::out2s)) ⇔
           ∃ins. (x1s = x::ins) ∧ (x2s = ins) ∧ (out2s = out1s)
    TR_complete
      |- ∀s x ins outs.
           ∃s' out. TR x (CFG (x::ins) s outs) (CFG ins s' (out::outs))
    TR_deterministic
      |- ∀NS Out x1 ins1 s1 outs1 ins2 ins2' outs2 outs2'.
           TR x1 (CFG (x1::ins1) s1 outs1)
             (CFG ins2 (NS s1 x1) (Out s1 x1::outs2)) ∧
           TR x1 (CFG (x1::ins1) s1 outs1)
             (CFG ins2' (NS s1 x1) (Out s1 x1::outs2')) ⇔
           (CFG ins2 (NS s1 x1) (Out s1 x1::outs2) =
            CFG ins2' (NS s1 x1) (Out s1 x1::outs2')) ∧
           TR x1 (CFG (x1::ins1) s1 outs1)
             (CFG ins2 (NS s1 x1) (Out s1 x1::outs2))
    TR_ind
      |- ∀TR'.
           (∀NS Out s x ins outs.
              TR' x (CFG (x::ins) s outs)
                (CFG ins (NS s x) (Out s x::outs))) ⇒
           ∀a0 a1 a2. TR a0 a1 a2 ⇒ TR' a0 a1 a2
    TR_rules
      |- ∀NS Out s x ins outs.
           TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs))
    TR_strongind
      |- ∀TR'.
           (∀NS Out s x ins outs.
              TR' x (CFG (x::ins) s outs)
                (CFG ins (NS s x) (Out s x::outs))) ⇒
           ∀a0 a1 a2. TR a0 a1 a2 ⇒ TR' a0 a1 a2
    Trans_Equiv_TR
      |- TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs)) ⇔
         Trans x s (NS s x)
    Trans_TR_lemma
      |- Trans x s (NS s x) ⇒
         TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs))
    Trans_cases
      |- ∀a0 a1 a2. Trans a0 a1 a2 ⇔ ∃NS. a2 = NS a1 a0
    Trans_ind
      |- ∀Trans'.
           (∀NS s x. Trans' x s (NS s x)) ⇒
           ∀a0 a1 a2. Trans a0 a1 a2 ⇒ Trans' a0 a1 a2
    Trans_rules
      |- ∀NS s x. Trans x s (NS s x)
    Trans_strongind
      |- ∀Trans'.
           (∀NS s x. Trans' x s (NS s x)) ⇒
           ∀a0 a1 a2. Trans a0 a1 a2 ⇒ Trans' a0 a1 a2
    configuration_11
      |- ∀a0 a1 a2 a0' a1' a2'.
           (CFG a0 a1 a2 = CFG a0' a1' a2') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2')
    configuration_Axiom
      |- ∀f. ∃fn. ∀a0 a1 a2. fn (CFG a0 a1 a2) = f a0 a1 a2
    configuration_case_cong
      |- ∀M M' f.
           (M = M') ∧
           (∀a0 a1 a2.
              (M' = CFG a0 a1 a2) ⇒ (f a0 a1 a2 = f' a0 a1 a2)) ⇒
           (configuration_CASE M f = configuration_CASE M' f')
    configuration_induction
      |- ∀P. (∀l s l0. P (CFG l s l0)) ⇒ ∀c. P c
    configuration_nchotomy
      |- ∀cc. ∃l s l0. cc = CFG l s l0
    configuration_one_one
      |- ∀a0 a1 a2 a0' a1' a2'.
           (CFG a0 a1 a2 = CFG a0' a1' a2') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2')
    datatype_configuration
      |- DATATYPE (configuration CFG)
Completed load of smScript

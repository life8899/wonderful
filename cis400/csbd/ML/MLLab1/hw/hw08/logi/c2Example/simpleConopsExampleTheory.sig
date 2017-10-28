signature simpleConopsExampleTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val commands_BIJ : thm
    val commands_CASE : thm
    val commands_TY_DEF : thm
    val commands_size_def : thm
    val people_BIJ : thm
    val people_CASE : thm
    val people_TY_DEF : thm
    val people_size_def : thm
    val principals_TY_DEF : thm
    val principals_case_def : thm
    val principals_size_def : thm
    val roles_BIJ : thm
    val roles_CASE : thm
    val roles_TY_DEF : thm
    val roles_size_def : thm

  (*  Theorems  *)
    val ApRule1_thm : thm
    val OpRule1_thm : thm
    val commands2num_11 : thm
    val commands2num_ONTO : thm
    val commands2num_num2commands : thm
    val commands2num_thm : thm
    val commands_Axiom : thm
    val commands_EQ_commands : thm
    val commands_case_cong : thm
    val commands_case_def : thm
    val commands_distinct : thm
    val commands_induction : thm
    val commands_nchotomy : thm
    val datatype_commands : thm
    val datatype_people : thm
    val datatype_principals : thm
    val datatype_roles : thm
    val num2commands_11 : thm
    val num2commands_ONTO : thm
    val num2commands_commands2num : thm
    val num2commands_thm : thm
    val num2people_11 : thm
    val num2people_ONTO : thm
    val num2people_people2num : thm
    val num2people_thm : thm
    val num2roles_11 : thm
    val num2roles_ONTO : thm
    val num2roles_roles2num : thm
    val num2roles_thm : thm
    val people2num_11 : thm
    val people2num_ONTO : thm
    val people2num_num2people : thm
    val people2num_thm : thm
    val people_Axiom : thm
    val people_EQ_people : thm
    val people_case_cong : thm
    val people_case_def : thm
    val people_distinct : thm
    val people_induction : thm
    val people_nchotomy : thm
    val principals_11 : thm
    val principals_Axiom : thm
    val principals_case_cong : thm
    val principals_distinct : thm
    val principals_induction : thm
    val principals_nchotomy : thm
    val roles2num_11 : thm
    val roles2num_ONTO : thm
    val roles2num_num2roles : thm
    val roles2num_thm : thm
    val roles_Axiom : thm
    val roles_EQ_roles : thm
    val roles_case_cong : thm
    val roles_case_def : thm
    val roles_distinct : thm
    val roles_induction : thm
    val roles_nchotomy : thm

  val simpleConopsExample_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [aclDrules] Parent theory of "simpleConopsExample"

   [commands_BIJ]  Definition

      |- (∀a. num2commands (commands2num a) = a) ∧
         ∀r. (λn. n < 3) r ⇔ (commands2num (num2commands r) = r)

   [commands_CASE]  Definition

      |- ∀x v0 v1 v2.
           (case x of go => v0 | launch => v1 | activate => v2) =
           (λm. if m < 1 then v0 else if m = 1 then v1 else v2)
             (commands2num x)

   [commands_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 3) rep

   [commands_size_def]  Definition

      |- ∀x. commands_size x = 0

   [people_BIJ]  Definition

      |- (∀a. num2people (people2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (people2num (num2people r) = r)

   [people_CASE]  Definition

      |- ∀x v0 v1.
           (case x of Alice => v0 | Bob => v1) =
           (λm. if m = 0 then v0 else v1) (people2num x)

   [people_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [people_size_def]  Definition

      |- ∀x. people_size x = 0

   [principals_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'principals' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR 0 (a,ARB,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC 0) (ARB,a,ARB)
                             (λn. ind_type$BOTTOM)) a) ∨
                     (∃a.
                        a0 =
                        (λa.
                           ind_type$CONSTR (SUC (SUC 0)) (ARB,ARB,a)
                             (λn. ind_type$BOTTOM)) a) ⇒
                     'principals' a0) ⇒
                  'principals' a0) rep

   [principals_case_def]  Definition

      |- (∀a f f1 f2. principals_CASE (Staff a) f f1 f2 = f a) ∧
         (∀a f f1 f2. principals_CASE (Role a) f f1 f2 = f1 a) ∧
         ∀a f f1 f2. principals_CASE (Ap a) f f1 f2 = f2 a

   [principals_size_def]  Definition

      |- (∀a. principals_size (Staff a) = 1 + people_size a) ∧
         (∀a. principals_size (Role a) = 1 + roles_size a) ∧
         ∀a. principals_size (Ap a) = 1 + a

   [roles_BIJ]  Definition

      |- (∀a. num2roles (roles2num a) = a) ∧
         ∀r. (λn. n < 2) r ⇔ (roles2num (num2roles r) = r)

   [roles_CASE]  Definition

      |- ∀x v0 v1.
           (case x of Commander => v0 | Operator => v1) =
           (λm. if m = 0 then v0 else v1) (roles2num x)

   [roles_TY_DEF]  Definition

      |- ∃rep. TYPE_DEFINITION (λn. n < 2) rep

   [roles_size_def]  Definition

      |- ∀x. roles_size x = 0

   [ApRule1_thm]  Theorem

      |- (M,Oi,Os) sat Name (Role Operator) controls prop launch ⇒
         (M,Oi,Os) sat
         reps (Name (Staff Bob)) (Name (Role Operator)) (prop launch) ⇒
         (M,Oi,Os) sat
         Name (Staff Bob) quoting Name (Role Operator) says prop launch ⇒
         (M,Oi,Os) sat prop launch impf prop activate ⇒
         (M,Oi,Os) sat prop activate

   [OpRule1_thm]  Theorem

      |- (M,Oi,Os) sat Name (Role Commander) controls prop go ⇒
         (M,Oi,Os) sat
         reps (Name (Staff Alice)) (Name (Role Commander)) (prop go) ⇒
         (M,Oi,Os) sat
         Name (Staff Alice) quoting Name (Role Commander) says prop go ⇒
         (M,Oi,Os) sat prop go impf prop launch ⇒
         (M,Oi,Os) sat
         Name (Staff Bob) quoting Name (Role Operator) says prop launch

   [commands2num_11]  Theorem

      |- ∀a a'. (commands2num a = commands2num a') ⇔ (a = a')

   [commands2num_ONTO]  Theorem

      |- ∀r. r < 3 ⇔ ∃a. r = commands2num a

   [commands2num_num2commands]  Theorem

      |- ∀r. r < 3 ⇔ (commands2num (num2commands r) = r)

   [commands2num_thm]  Theorem

      |- (commands2num go = 0) ∧ (commands2num launch = 1) ∧
         (commands2num activate = 2)

   [commands_Axiom]  Theorem

      |- ∀x0 x1 x2. ∃f. (f go = x0) ∧ (f launch = x1) ∧ (f activate = x2)

   [commands_EQ_commands]  Theorem

      |- ∀a a'. (a = a') ⇔ (commands2num a = commands2num a')

   [commands_case_cong]  Theorem

      |- ∀M M' v0 v1 v2.
           (M = M') ∧ ((M' = go) ⇒ (v0 = v0')) ∧
           ((M' = launch) ⇒ (v1 = v1')) ∧ ((M' = activate) ⇒ (v2 = v2')) ⇒
           ((case M of go => v0 | launch => v1 | activate => v2) =
            case M' of go => v0' | launch => v1' | activate => v2')

   [commands_case_def]  Theorem

      |- (∀v0 v1 v2.
            (case go of go => v0 | launch => v1 | activate => v2) = v0) ∧
         (∀v0 v1 v2.
            (case launch of go => v0 | launch => v1 | activate => v2) =
            v1) ∧
         ∀v0 v1 v2.
           (case activate of go => v0 | launch => v1 | activate => v2) = v2

   [commands_distinct]  Theorem

      |- go ≠ launch ∧ go ≠ activate ∧ launch ≠ activate

   [commands_induction]  Theorem

      |- ∀P. P activate ∧ P go ∧ P launch ⇒ ∀a. P a

   [commands_nchotomy]  Theorem

      |- ∀a. (a = go) ∨ (a = launch) ∨ (a = activate)

   [datatype_commands]  Theorem

      |- DATATYPE (commands go launch activate)

   [datatype_people]  Theorem

      |- DATATYPE (people Alice Bob)

   [datatype_principals]  Theorem

      |- DATATYPE (principals Staff Role Ap)

   [datatype_roles]  Theorem

      |- DATATYPE (roles Commander Operator)

   [num2commands_11]  Theorem

      |- ∀r r'.
           r < 3 ⇒ r' < 3 ⇒ ((num2commands r = num2commands r') ⇔ (r = r'))

   [num2commands_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2commands r) ∧ r < 3

   [num2commands_commands2num]  Theorem

      |- ∀a. num2commands (commands2num a) = a

   [num2commands_thm]  Theorem

      |- (num2commands 0 = go) ∧ (num2commands 1 = launch) ∧
         (num2commands 2 = activate)

   [num2people_11]  Theorem

      |- ∀r r'.
           r < 2 ⇒ r' < 2 ⇒ ((num2people r = num2people r') ⇔ (r = r'))

   [num2people_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2people r) ∧ r < 2

   [num2people_people2num]  Theorem

      |- ∀a. num2people (people2num a) = a

   [num2people_thm]  Theorem

      |- (num2people 0 = Alice) ∧ (num2people 1 = Bob)

   [num2roles_11]  Theorem

      |- ∀r r'. r < 2 ⇒ r' < 2 ⇒ ((num2roles r = num2roles r') ⇔ (r = r'))

   [num2roles_ONTO]  Theorem

      |- ∀a. ∃r. (a = num2roles r) ∧ r < 2

   [num2roles_roles2num]  Theorem

      |- ∀a. num2roles (roles2num a) = a

   [num2roles_thm]  Theorem

      |- (num2roles 0 = Commander) ∧ (num2roles 1 = Operator)

   [people2num_11]  Theorem

      |- ∀a a'. (people2num a = people2num a') ⇔ (a = a')

   [people2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = people2num a

   [people2num_num2people]  Theorem

      |- ∀r. r < 2 ⇔ (people2num (num2people r) = r)

   [people2num_thm]  Theorem

      |- (people2num Alice = 0) ∧ (people2num Bob = 1)

   [people_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f Alice = x0) ∧ (f Bob = x1)

   [people_EQ_people]  Theorem

      |- ∀a a'. (a = a') ⇔ (people2num a = people2num a')

   [people_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = Alice) ⇒ (v0 = v0')) ∧
           ((M' = Bob) ⇒ (v1 = v1')) ⇒
           ((case M of Alice => v0 | Bob => v1) =
            case M' of Alice => v0' | Bob => v1')

   [people_case_def]  Theorem

      |- (∀v0 v1. (case Alice of Alice => v0 | Bob => v1) = v0) ∧
         ∀v0 v1. (case Bob of Alice => v0 | Bob => v1) = v1

   [people_distinct]  Theorem

      |- Alice ≠ Bob

   [people_induction]  Theorem

      |- ∀P. P Alice ∧ P Bob ⇒ ∀a. P a

   [people_nchotomy]  Theorem

      |- ∀a. (a = Alice) ∨ (a = Bob)

   [principals_11]  Theorem

      |- (∀a a'. (Staff a = Staff a') ⇔ (a = a')) ∧
         (∀a a'. (Role a = Role a') ⇔ (a = a')) ∧
         ∀a a'. (Ap a = Ap a') ⇔ (a = a')

   [principals_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn.
             (∀a. fn (Staff a) = f0 a) ∧ (∀a. fn (Role a) = f1 a) ∧
             ∀a. fn (Ap a) = f2 a

   [principals_case_cong]  Theorem

      |- ∀M M' f f1 f2.
           (M = M') ∧ (∀a. (M' = Staff a) ⇒ (f a = f' a)) ∧
           (∀a. (M' = Role a) ⇒ (f1 a = f1' a)) ∧
           (∀a. (M' = Ap a) ⇒ (f2 a = f2' a)) ⇒
           (principals_CASE M f f1 f2 = principals_CASE M' f' f1' f2')

   [principals_distinct]  Theorem

      |- (∀a' a. Staff a ≠ Role a') ∧ (∀a' a. Staff a ≠ Ap a') ∧
         ∀a' a. Role a ≠ Ap a'

   [principals_induction]  Theorem

      |- ∀P.
           (∀p. P (Staff p)) ∧ (∀r. P (Role r)) ∧ (∀n. P (Ap n)) ⇒ ∀p. P p

   [principals_nchotomy]  Theorem

      |- ∀pp. (∃p. pp = Staff p) ∨ (∃r. pp = Role r) ∨ ∃n. pp = Ap n

   [roles2num_11]  Theorem

      |- ∀a a'. (roles2num a = roles2num a') ⇔ (a = a')

   [roles2num_ONTO]  Theorem

      |- ∀r. r < 2 ⇔ ∃a. r = roles2num a

   [roles2num_num2roles]  Theorem

      |- ∀r. r < 2 ⇔ (roles2num (num2roles r) = r)

   [roles2num_thm]  Theorem

      |- (roles2num Commander = 0) ∧ (roles2num Operator = 1)

   [roles_Axiom]  Theorem

      |- ∀x0 x1. ∃f. (f Commander = x0) ∧ (f Operator = x1)

   [roles_EQ_roles]  Theorem

      |- ∀a a'. (a = a') ⇔ (roles2num a = roles2num a')

   [roles_case_cong]  Theorem

      |- ∀M M' v0 v1.
           (M = M') ∧ ((M' = Commander) ⇒ (v0 = v0')) ∧
           ((M' = Operator) ⇒ (v1 = v1')) ⇒
           ((case M of Commander => v0 | Operator => v1) =
            case M' of Commander => v0' | Operator => v1')

   [roles_case_def]  Theorem

      |- (∀v0 v1.
            (case Commander of Commander => v0 | Operator => v1) = v0) ∧
         ∀v0 v1. (case Operator of Commander => v0 | Operator => v1) = v1

   [roles_distinct]  Theorem

      |- Commander ≠ Operator

   [roles_induction]  Theorem

      |- ∀P. P Commander ∧ P Operator ⇒ ∀a. P a

   [roles_nchotomy]  Theorem

      |- ∀a. (a = Commander) ∨ (a = Operator)


*)
end

/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:88: warning: Pattern is not exhaustive.
Found near val [prop_type, name_type, integ_type, ...] = snd f_type_parts
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:125: warning: Pattern is not exhaustive.
Found near val [prop_type, name_type, integ_type, ...] = snd f_type_parts
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:162: warning: Pattern is not exhaustive.
Found near val [prop_type, name_type, integ_type, ...] = snd f_type_parts
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:250: warning: Pattern is not exhaustive.
Found near val [prop_type, name_type, integ_type, ...] = snd f1_type_parts
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1245: warning: Matches are not exhaustive. Found near fn [th1, th2] => ACL_CONJ th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1276: warning: Matches are not exhaustive. Found near fn [th] => ACL_DISJ1 disj2 th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1304: warning: Matches are not exhaustive. Found near fn [th] => ACL_DISJ2 disj1 th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1336: warning: Pattern is not exhaustive.
Found near val (_, [kripketype, ...]) = dest_type tupleType
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1337: warning: Pattern is not exhaustive.
Found near val (_, [_, ...]) = dest_type kripketype
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1340: warning: Matches are not exhaustive. Found near fn [th] => ACL_MP th2 th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1374: warning: Matches are not exhaustive. Found near fn [th] => AND_SAYS_RL th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1408: warning: Matches are not exhaustive. Found near fn [th] => AND_SAYS_LR th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1440: warning: Matches are not exhaustive. Found near fn [th1, th2] => CONTROLS th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1473: warning: Matches are not exhaustive. Found near fn [th1, th2] => DC th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1506: warning: Matches are not exhaustive. Found near fn [th1, th2] => DOMI_TRANS th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1541: warning: Matches are not exhaustive. Found near fn [th1, th2] => DOMS_TRANS th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1575: warning: Matches are not exhaustive. Found near fn [th1, th2] => HS th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1601: warning: Pattern is not exhaustive.
Found near val (_, [kripketype, ...]) = dest_type tupleType
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1602: warning: Pattern is not exhaustive.
Found near val (_, [_, ...]) = dest_type kripketype
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1604: warning: Pattern is not exhaustive.
Found near val (_, [proptype, ...]) = dest_type formType
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1643: warning: Matches are not exhaustive.
Found near fn [th1, th2, th3] => IL_DOMI th2 th1 th3
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1679: warning: Matches are not exhaustive.
Found near fn [th1, th2] => MONO_SPEAKS_FOR th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1709: warning: Pattern is not exhaustive.
Found near val (_, [kripketype, ...]) = dest_type tupleType
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1710: warning: Pattern is not exhaustive.
Found near val (_, [_, ...]) = dest_type kripketype
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1745: warning: Matches are not exhaustive. Found near fn [th] => QUOTING_LR th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1776: warning: Matches are not exhaustive. Found near fn [th] => QUOTING_RL th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1810: warning: Matches are not exhaustive. Found near fn [th1, th2, th3] => REPS th1 th2 th3
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1842: warning: Matches are not exhaustive. Found near fn [th1, th2] => REP_SAYS th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1869: warning: Matches are not exhaustive. Found near fn [th] => SAYS princ th
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1901: warning: Matches are not exhaustive. Found near fn [th1, th2] => SPEAKS_FOR th1 th2
/home/caesar/Documents/RESEARCH/HOL/ACL/acl_infRules.sml:1934: warning: Matches are not exhaustive.
Found near fn [th1, th2] => TRANS_SPEAKS_FOR th1 th2
<<HOL message: Created theory "solutions1">>
Saved theorem _____ "aclExercise1"
Saved theorem _____ "aclExercise1A"
Saved theorem _____ "aclExercise2B"
Saved theorem _____ "aclExercise2"
Saved theorem _____ "aclExercise2A"
Theory: solutions1

Parents:
    example1

Theorems:
    aclExercise1
      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Alice controls prop go ⇒
         (M,Oi,Os) sat
         Name Alice says prop go andf Name Alice controls prop go
    aclExercise1A
      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Bob says prop go ⇒
         (M,Oi,Os) sat Name Alice meet Name Bob says prop go
    aclExercise2
       [...] |- (M,Oi,Os) sat Name Bob says prop launch
    aclExercise2A
      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Alice controls prop go ⇒
         (M,Oi,Os) sat prop go impf prop launch ⇒
         (M,Oi,Os) sat Name Bob says prop launch
    aclExercise2B
      |- (M,Oi,Os) sat Name Alice says prop go ⇒
         (M,Oi,Os) sat Name Bob says prop go ⇒
         (M,Oi,Os) sat Name Alice meet Name Bob says prop go
Exporting theory "solutions1" ... done.
Theory "solutions1" took 0.02800s to build

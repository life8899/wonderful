structure conops0SolutionTheory :> conops0SolutionTheory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading conops0SolutionTheory ... "
    else ()

  open Type Term Thm
  local open aclDrulesTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "conops0Solution"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw08/project08/HOL/conops0SolutionTheory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op commands_TY_DEF _ = ()
  val op commands_TY_DEF = TDB.find "commands_TY_DEF"
  fun op commands_BIJ _ = () val op commands_BIJ = TDB.find "commands_BIJ"






  fun op commands_size_def _ = ()
  val op commands_size_def = TDB.find "commands_size_def"
  fun op commands_CASE _ = ()
  val op commands_CASE = TDB.find "commands_CASE"
  fun op people_TY_DEF _ = ()
  val op people_TY_DEF = TDB.find "people_TY_DEF"
  fun op people_BIJ _ = () val op people_BIJ = TDB.find "people_BIJ"


  fun op people_size_def _ = ()
  val op people_size_def = TDB.find "people_size_def"
  fun op people_CASE _ = () val op people_CASE = TDB.find "people_CASE"
  fun op roles_TY_DEF _ = () val op roles_TY_DEF = TDB.find "roles_TY_DEF"
  fun op roles_BIJ _ = () val op roles_BIJ = TDB.find "roles_BIJ"



  fun op roles_size_def _ = ()
  val op roles_size_def = TDB.find "roles_size_def"
  fun op roles_CASE _ = () val op roles_CASE = TDB.find "roles_CASE"
  fun op keyPrinc_TY_DEF _ = ()
  val op keyPrinc_TY_DEF = TDB.find "keyPrinc_TY_DEF"
  fun op keyPrinc_case_def _ = ()
  val op keyPrinc_case_def = TDB.find "keyPrinc_case_def"
  fun op keyPrinc_size_def _ = ()
  val op keyPrinc_size_def = TDB.find "keyPrinc_size_def"
  fun op principals_TY_DEF _ = ()
  val op principals_TY_DEF = TDB.find "principals_TY_DEF"
  fun op principals_case_def _ = ()
  val op principals_case_def = TDB.find "principals_case_def"
  fun op principals_size_def _ = ()
  val op principals_size_def = TDB.find "principals_size_def"
  fun op num2commands_commands2num _ = ()
  val op num2commands_commands2num = TDB.find "num2commands_commands2num"
  fun op commands2num_num2commands _ = ()
  val op commands2num_num2commands = TDB.find "commands2num_num2commands"
  fun op num2commands_11 _ = ()
  val op num2commands_11 = TDB.find "num2commands_11"
  fun op commands2num_11 _ = ()
  val op commands2num_11 = TDB.find "commands2num_11"
  fun op num2commands_ONTO _ = ()
  val op num2commands_ONTO = TDB.find "num2commands_ONTO"
  fun op commands2num_ONTO _ = ()
  val op commands2num_ONTO = TDB.find "commands2num_ONTO"
  fun op num2commands_thm _ = ()
  val op num2commands_thm = TDB.find "num2commands_thm"
  fun op commands2num_thm _ = ()
  val op commands2num_thm = TDB.find "commands2num_thm"
  fun op commands_EQ_commands _ = ()
  val op commands_EQ_commands = TDB.find "commands_EQ_commands"
  fun op commands_case_def _ = ()
  val op commands_case_def = TDB.find "commands_case_def"
  fun op datatype_commands _ = ()
  val op datatype_commands = TDB.find "datatype_commands"
  fun op commands_distinct _ = ()
  val op commands_distinct = TDB.find "commands_distinct"
  fun op commands_case_cong _ = ()
  val op commands_case_cong = TDB.find "commands_case_cong"
  fun op commands_nchotomy _ = ()
  val op commands_nchotomy = TDB.find "commands_nchotomy"
  fun op commands_Axiom _ = ()
  val op commands_Axiom = TDB.find "commands_Axiom"
  fun op commands_induction _ = ()
  val op commands_induction = TDB.find "commands_induction"
  fun op num2people_people2num _ = ()
  val op num2people_people2num = TDB.find "num2people_people2num"
  fun op people2num_num2people _ = ()
  val op people2num_num2people = TDB.find "people2num_num2people"
  fun op num2people_11 _ = ()
  val op num2people_11 = TDB.find "num2people_11"
  fun op people2num_11 _ = ()
  val op people2num_11 = TDB.find "people2num_11"
  fun op num2people_ONTO _ = ()
  val op num2people_ONTO = TDB.find "num2people_ONTO"
  fun op people2num_ONTO _ = ()
  val op people2num_ONTO = TDB.find "people2num_ONTO"
  fun op num2people_thm _ = ()
  val op num2people_thm = TDB.find "num2people_thm"
  fun op people2num_thm _ = ()
  val op people2num_thm = TDB.find "people2num_thm"
  fun op people_EQ_people _ = ()
  val op people_EQ_people = TDB.find "people_EQ_people"
  fun op people_case_def _ = ()
  val op people_case_def = TDB.find "people_case_def"
  fun op datatype_people _ = ()
  val op datatype_people = TDB.find "datatype_people"
  fun op people_distinct _ = ()
  val op people_distinct = TDB.find "people_distinct"
  fun op people_case_cong _ = ()
  val op people_case_cong = TDB.find "people_case_cong"
  fun op people_nchotomy _ = ()
  val op people_nchotomy = TDB.find "people_nchotomy"
  fun op people_Axiom _ = () val op people_Axiom = TDB.find "people_Axiom"
  fun op people_induction _ = ()
  val op people_induction = TDB.find "people_induction"
  fun op num2roles_roles2num _ = ()
  val op num2roles_roles2num = TDB.find "num2roles_roles2num"
  fun op roles2num_num2roles _ = ()
  val op roles2num_num2roles = TDB.find "roles2num_num2roles"
  fun op num2roles_11 _ = () val op num2roles_11 = TDB.find "num2roles_11"
  fun op roles2num_11 _ = () val op roles2num_11 = TDB.find "roles2num_11"
  fun op num2roles_ONTO _ = ()
  val op num2roles_ONTO = TDB.find "num2roles_ONTO"
  fun op roles2num_ONTO _ = ()
  val op roles2num_ONTO = TDB.find "roles2num_ONTO"
  fun op num2roles_thm _ = ()
  val op num2roles_thm = TDB.find "num2roles_thm"
  fun op roles2num_thm _ = ()
  val op roles2num_thm = TDB.find "roles2num_thm"
  fun op roles_EQ_roles _ = ()
  val op roles_EQ_roles = TDB.find "roles_EQ_roles"
  fun op roles_case_def _ = ()
  val op roles_case_def = TDB.find "roles_case_def"
  fun op datatype_roles _ = ()
  val op datatype_roles = TDB.find "datatype_roles"
  fun op roles_distinct _ = ()
  val op roles_distinct = TDB.find "roles_distinct"
  fun op roles_case_cong _ = ()
  val op roles_case_cong = TDB.find "roles_case_cong"
  fun op roles_nchotomy _ = ()
  val op roles_nchotomy = TDB.find "roles_nchotomy"
  fun op roles_Axiom _ = () val op roles_Axiom = TDB.find "roles_Axiom"
  fun op roles_induction _ = ()
  val op roles_induction = TDB.find "roles_induction"
  fun op datatype_keyPrinc _ = ()
  val op datatype_keyPrinc = TDB.find "datatype_keyPrinc"
  fun op keyPrinc_11 _ = () val op keyPrinc_11 = TDB.find "keyPrinc_11"
  fun op keyPrinc_distinct _ = ()
  val op keyPrinc_distinct = TDB.find "keyPrinc_distinct"
  fun op keyPrinc_case_cong _ = ()
  val op keyPrinc_case_cong = TDB.find "keyPrinc_case_cong"
  fun op keyPrinc_nchotomy _ = ()
  val op keyPrinc_nchotomy = TDB.find "keyPrinc_nchotomy"
  fun op keyPrinc_Axiom _ = ()
  val op keyPrinc_Axiom = TDB.find "keyPrinc_Axiom"
  fun op keyPrinc_induction _ = ()
  val op keyPrinc_induction = TDB.find "keyPrinc_induction"
  fun op datatype_principals _ = ()
  val op datatype_principals = TDB.find "datatype_principals"
  fun op principals_11 _ = ()
  val op principals_11 = TDB.find "principals_11"
  fun op principals_distinct _ = ()
  val op principals_distinct = TDB.find "principals_distinct"
  fun op principals_case_cong _ = ()
  val op principals_case_cong = TDB.find "principals_case_cong"
  fun op principals_nchotomy _ = ()
  val op principals_nchotomy = TDB.find "principals_nchotomy"
  fun op principals_Axiom _ = ()
  val op principals_Axiom = TDB.find "principals_Axiom"
  fun op principals_induction _ = ()
  val op principals_induction = TDB.find "principals_induction"
  fun op OpRuleLaunchXXthm _ = ()
  val op OpRuleLaunchXXthm = TDB.find "OpRuleLaunchXXthm"
  fun op OpRuleAbortXXthm _ = ()
  val op OpRuleAbortXXthm = TDB.find "OpRuleAbortXXthm"
  fun op ApRuleActivateXXthm _ = ()
  val op ApRuleActivateXXthm = TDB.find "ApRuleActivateXXthm"
  fun op ApRuleStandDownXXthm _ = ()
  val op ApRuleStandDownXXthm = TDB.find "ApRuleStandDownXXthm"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val conops0Solution_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="conops0Solution"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val conops0Solution_grammars = 
    Portable.## (addtyUDs,addtmUDs) conops0Solution_grammars
  val _ = Parse.grammarDB_insert("conops0Solution",conops0Solution_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG commands_Axiom,
           case_def=commands_case_def,
           case_cong=commands_case_cong,
           induction=ORIG commands_induction,
           nchotomy=commands_nchotomy,
           size=SOME(Parse.Term`(conops0Solution$commands_size) :conops0Solution$commands -> num$num`,
                     ORIG commands_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME commands_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2commands_thm commands2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG people_Axiom,
           case_def=people_case_def,
           case_cong=people_case_cong,
           induction=ORIG people_induction,
           nchotomy=people_nchotomy,
           size=SOME(Parse.Term`(conops0Solution$people_size) :conops0Solution$people -> num$num`,
                     ORIG people_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME people_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2people_thm people2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG roles_Axiom,
           case_def=roles_case_def,
           case_cong=roles_case_cong,
           induction=ORIG roles_induction,
           nchotomy=roles_nchotomy,
           size=SOME(Parse.Term`(conops0Solution$roles_size) :conops0Solution$roles -> num$num`,
                     ORIG roles_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME roles_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2roles_thm roles2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG keyPrinc_Axiom,
           case_def=keyPrinc_case_def,
           case_cong=keyPrinc_case_cong,
           induction=ORIG keyPrinc_induction,
           nchotomy=keyPrinc_nchotomy,
           size=SOME(Parse.Term`(conops0Solution$keyPrinc_size) :conops0Solution$keyPrinc -> num$num`,
                     ORIG keyPrinc_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME keyPrinc_11,
           distinct=SOME keyPrinc_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG principals_Axiom,
           case_def=principals_case_def,
           case_cong=principals_case_cong,
           induction=ORIG principals_induction,
           nchotomy=principals_nchotomy,
           size=SOME(Parse.Term`(conops0Solution$principals_size) :conops0Solution$principals -> num$num`,
                     ORIG principals_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME principals_11,
           distinct=SOME principals_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "conops0Solution"

end

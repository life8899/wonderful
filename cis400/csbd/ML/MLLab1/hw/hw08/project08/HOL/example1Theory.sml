structure example1Theory :> example1Theory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading example1Theory ... "
    else ()

  open Type Term Thm
  local open aclDrulesTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "example1"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw08/project08/HOL/example1Theory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op commands_TY_DEF _ = ()
  val op commands_TY_DEF = TDB.find "commands_TY_DEF"
  fun op commands_BIJ _ = () val op commands_BIJ = TDB.find "commands_BIJ"




  fun op commands_size_def _ = ()
  val op commands_size_def = TDB.find "commands_size_def"
  fun op commands_CASE _ = ()
  val op commands_CASE = TDB.find "commands_CASE"
  fun op staff_TY_DEF _ = () val op staff_TY_DEF = TDB.find "staff_TY_DEF"
  fun op staff_BIJ _ = () val op staff_BIJ = TDB.find "staff_BIJ"




  fun op staff_size_def _ = ()
  val op staff_size_def = TDB.find "staff_size_def"
  fun op staff_CASE _ = () val op staff_CASE = TDB.find "staff_CASE"
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
  fun op num2staff_staff2num _ = ()
  val op num2staff_staff2num = TDB.find "num2staff_staff2num"
  fun op staff2num_num2staff _ = ()
  val op staff2num_num2staff = TDB.find "staff2num_num2staff"
  fun op num2staff_11 _ = () val op num2staff_11 = TDB.find "num2staff_11"
  fun op staff2num_11 _ = () val op staff2num_11 = TDB.find "staff2num_11"
  fun op num2staff_ONTO _ = ()
  val op num2staff_ONTO = TDB.find "num2staff_ONTO"
  fun op staff2num_ONTO _ = ()
  val op staff2num_ONTO = TDB.find "staff2num_ONTO"
  fun op num2staff_thm _ = ()
  val op num2staff_thm = TDB.find "num2staff_thm"
  fun op staff2num_thm _ = ()
  val op staff2num_thm = TDB.find "staff2num_thm"
  fun op staff_EQ_staff _ = ()
  val op staff_EQ_staff = TDB.find "staff_EQ_staff"
  fun op staff_case_def _ = ()
  val op staff_case_def = TDB.find "staff_case_def"
  fun op datatype_staff _ = ()
  val op datatype_staff = TDB.find "datatype_staff"
  fun op staff_distinct _ = ()
  val op staff_distinct = TDB.find "staff_distinct"
  fun op staff_case_cong _ = ()
  val op staff_case_cong = TDB.find "staff_case_cong"
  fun op staff_nchotomy _ = ()
  val op staff_nchotomy = TDB.find "staff_nchotomy"
  fun op staff_Axiom _ = () val op staff_Axiom = TDB.find "staff_Axiom"
  fun op staff_induction _ = ()
  val op staff_induction = TDB.find "staff_induction"
  fun op example1Theorem _ = ()
  val op example1Theorem = TDB.find "example1Theorem"
  fun op example1TheoremA _ = ()
  val op example1TheoremA = TDB.find "example1TheoremA"
  fun op example1TheoremB _ = ()
  val op example1TheoremB = TDB.find "example1TheoremB"
  fun op example2Theorem _ = ()
  val op example2Theorem = TDB.find "example2Theorem"
  fun op example2TheoremA _ = ()
  val op example2TheoremA = TDB.find "example2TheoremA"
  fun op example2TheoremB _ = ()
  val op example2TheoremB = TDB.find "example2TheoremB"
  fun op example3Theorem _ = ()
  val op example3Theorem = TDB.find "example3Theorem"
  fun op example3TheoremA _ = ()
  val op example3TheoremA = TDB.find "example3TheoremA"
  fun op MonoXXRepsXXTheorem _ = ()
  val op MonoXXRepsXXTheorem = TDB.find "MonoXXRepsXXTheorem"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val example1_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="example1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val example1_grammars = 
    Portable.## (addtyUDs,addtmUDs) example1_grammars
  val _ = Parse.grammarDB_insert("example1",example1_grammars)
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
           size=SOME(Parse.Term`(example1$commands_size) :example1$commands -> num$num`,
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
          {ax=ORIG staff_Axiom,
           case_def=staff_case_def,
           case_cong=staff_case_cong,
           induction=ORIG staff_induction,
           nchotomy=staff_nchotomy,
           size=SOME(Parse.Term`(example1$staff_size) :example1$staff -> num$num`,
                     ORIG staff_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME staff_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2staff_thm staff2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "example1"

end

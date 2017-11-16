structure m1Theory :> m1Theory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading m1Theory ... "
    else ()

  open Type Term Thm
  local open smTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "m1"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw10/project10/HOL/m1Theory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op command_TY_DEF _ = ()
  val op command_TY_DEF = TDB.find "command_TY_DEF"
  fun op command_BIJ _ = () val op command_BIJ = TDB.find "command_BIJ"


  fun op command_size_def _ = ()
  val op command_size_def = TDB.find "command_size_def"
  fun op command_CASE _ = () val op command_CASE = TDB.find "command_CASE"
  fun op state_TY_DEF _ = () val op state_TY_DEF = TDB.find "state_TY_DEF"
  fun op state_BIJ _ = () val op state_BIJ = TDB.find "state_BIJ"



  fun op state_size_def _ = ()
  val op state_size_def = TDB.find "state_size_def"
  fun op state_CASE _ = () val op state_CASE = TDB.find "state_CASE"
  fun op output_TY_DEF _ = ()
  val op output_TY_DEF = TDB.find "output_TY_DEF"
  fun op output_BIJ _ = () val op output_BIJ = TDB.find "output_BIJ"


  fun op output_size_def _ = ()
  val op output_size_def = TDB.find "output_size_def"
  fun op output_CASE _ = () val op output_CASE = TDB.find "output_CASE"
  fun op num2command_command2num _ = ()
  val op num2command_command2num = TDB.find "num2command_command2num"
  fun op command2num_num2command _ = ()
  val op command2num_num2command = TDB.find "command2num_num2command"
  fun op num2command_11 _ = ()
  val op num2command_11 = TDB.find "num2command_11"
  fun op command2num_11 _ = ()
  val op command2num_11 = TDB.find "command2num_11"
  fun op num2command_ONTO _ = ()
  val op num2command_ONTO = TDB.find "num2command_ONTO"
  fun op command2num_ONTO _ = ()
  val op command2num_ONTO = TDB.find "command2num_ONTO"
  fun op num2command_thm _ = ()
  val op num2command_thm = TDB.find "num2command_thm"
  fun op command2num_thm _ = ()
  val op command2num_thm = TDB.find "command2num_thm"
  fun op command_EQ_command _ = ()
  val op command_EQ_command = TDB.find "command_EQ_command"
  fun op command_case_def _ = ()
  val op command_case_def = TDB.find "command_case_def"
  fun op datatype_command _ = ()
  val op datatype_command = TDB.find "datatype_command"
  fun op command_distinct _ = ()
  val op command_distinct = TDB.find "command_distinct"
  fun op command_case_cong _ = ()
  val op command_case_cong = TDB.find "command_case_cong"
  fun op command_nchotomy _ = ()
  val op command_nchotomy = TDB.find "command_nchotomy"
  fun op command_Axiom _ = ()
  val op command_Axiom = TDB.find "command_Axiom"
  fun op command_induction _ = ()
  val op command_induction = TDB.find "command_induction"
  fun op command_distinct_clauses _ = ()
  val op command_distinct_clauses = TDB.find "command_distinct_clauses"
  fun op num2state_state2num _ = ()
  val op num2state_state2num = TDB.find "num2state_state2num"
  fun op state2num_num2state _ = ()
  val op state2num_num2state = TDB.find "state2num_num2state"
  fun op num2state_11 _ = () val op num2state_11 = TDB.find "num2state_11"
  fun op state2num_11 _ = () val op state2num_11 = TDB.find "state2num_11"
  fun op num2state_ONTO _ = ()
  val op num2state_ONTO = TDB.find "num2state_ONTO"
  fun op state2num_ONTO _ = ()
  val op state2num_ONTO = TDB.find "state2num_ONTO"
  fun op num2state_thm _ = ()
  val op num2state_thm = TDB.find "num2state_thm"
  fun op state2num_thm _ = ()
  val op state2num_thm = TDB.find "state2num_thm"
  fun op state_EQ_state _ = ()
  val op state_EQ_state = TDB.find "state_EQ_state"
  fun op state_case_def _ = ()
  val op state_case_def = TDB.find "state_case_def"
  fun op datatype_state _ = ()
  val op datatype_state = TDB.find "datatype_state"
  fun op state_distinct _ = ()
  val op state_distinct = TDB.find "state_distinct"
  fun op state_case_cong _ = ()
  val op state_case_cong = TDB.find "state_case_cong"
  fun op state_nchotomy _ = ()
  val op state_nchotomy = TDB.find "state_nchotomy"
  fun op state_Axiom _ = () val op state_Axiom = TDB.find "state_Axiom"
  fun op state_induction _ = ()
  val op state_induction = TDB.find "state_induction"
  fun op state_distinct_clauses _ = ()
  val op state_distinct_clauses = TDB.find "state_distinct_clauses"
  fun op num2output_output2num _ = ()
  val op num2output_output2num = TDB.find "num2output_output2num"
  fun op output2num_num2output _ = ()
  val op output2num_num2output = TDB.find "output2num_num2output"
  fun op num2output_11 _ = ()
  val op num2output_11 = TDB.find "num2output_11"
  fun op output2num_11 _ = ()
  val op output2num_11 = TDB.find "output2num_11"
  fun op num2output_ONTO _ = ()
  val op num2output_ONTO = TDB.find "num2output_ONTO"
  fun op output2num_ONTO _ = ()
  val op output2num_ONTO = TDB.find "output2num_ONTO"
  fun op num2output_thm _ = ()
  val op num2output_thm = TDB.find "num2output_thm"
  fun op output2num_thm _ = ()
  val op output2num_thm = TDB.find "output2num_thm"
  fun op output_EQ_output _ = ()
  val op output_EQ_output = TDB.find "output_EQ_output"
  fun op output_case_def _ = ()
  val op output_case_def = TDB.find "output_case_def"
  fun op datatype_output _ = ()
  val op datatype_output = TDB.find "datatype_output"
  fun op output_distinct _ = ()
  val op output_distinct = TDB.find "output_distinct"
  fun op output_case_cong _ = ()
  val op output_case_cong = TDB.find "output_case_cong"
  fun op output_nchotomy _ = ()
  val op output_nchotomy = TDB.find "output_nchotomy"
  fun op output_Axiom _ = () val op output_Axiom = TDB.find "output_Axiom"
  fun op output_induction _ = ()
  val op output_induction = TDB.find "output_induction"
  fun op output_distinct_clauses _ = ()
  val op output_distinct_clauses = TDB.find "output_distinct_clauses"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val m1_grammars = merge_grammars ["sm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="m1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val m1_grammars = 
    Portable.## (addtyUDs,addtmUDs) m1_grammars
  val _ = Parse.grammarDB_insert("m1",m1_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG command_Axiom,
           case_def=command_case_def,
           case_cong=command_case_cong,
           induction=ORIG command_induction,
           nchotomy=command_nchotomy,
           size=SOME(Parse.Term`(m1$command_size) :m1$command -> num$num`,
                     ORIG command_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME command_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2command_thm command2num_thm NONE tyinfo0
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
          {ax=ORIG state_Axiom,
           case_def=state_case_def,
           case_cong=state_case_cong,
           induction=ORIG state_induction,
           nchotomy=state_nchotomy,
           size=SOME(Parse.Term`(m1$state_size) :m1$state -> num$num`,
                     ORIG state_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME state_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2state_thm state2num_thm NONE tyinfo0
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
          {ax=ORIG output_Axiom,
           case_def=output_case_def,
           case_cong=output_case_cong,
           induction=ORIG output_induction,
           nchotomy=output_nchotomy,
           size=SOME(Parse.Term`(m1$output_size) :m1$output -> num$num`,
                     ORIG output_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME output_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2output_thm output2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "m1"

end

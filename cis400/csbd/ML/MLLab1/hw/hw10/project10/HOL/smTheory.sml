structure smTheory :> smTheory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading smTheory ... "
    else ()

  open Type Term Thm
  local open indexedListsTheory patternMatchesTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "sm"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw10/project10/HOL/smTheory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op Trans_def _ = () val op Trans_def = TDB.find "Trans_def"
  fun op configuration_TY_DEF _ = ()
  val op configuration_TY_DEF = TDB.find "configuration_TY_DEF"
  fun op configuration_case_def _ = ()
  val op configuration_case_def = TDB.find "configuration_case_def"
  fun op configuration_size_def _ = ()
  val op configuration_size_def = TDB.find "configuration_size_def"
  fun op TR_def _ = () val op TR_def = TDB.find "TR_def"
  fun op configuration_induction _ = ()
  val op configuration_induction = TDB.find "configuration_induction"
  fun op configuration_Axiom _ = ()
  val op configuration_Axiom = TDB.find "configuration_Axiom"
  fun op configuration_nchotomy _ = ()
  val op configuration_nchotomy = TDB.find "configuration_nchotomy"
  fun op configuration_case_cong _ = ()
  val op configuration_case_cong = TDB.find "configuration_case_cong"
  fun op Trans_rules _ = () val op Trans_rules = TDB.find "Trans_rules"
  fun op Trans_ind _ = () val op Trans_ind = TDB.find "Trans_ind"
  fun op Trans_strongind _ = ()
  val op Trans_strongind = TDB.find "Trans_strongind"
  fun op Trans_cases _ = () val op Trans_cases = TDB.find "Trans_cases"
  fun op datatype_configuration _ = ()
  val op datatype_configuration = TDB.find "datatype_configuration"
  fun op configuration_11 _ = ()
  val op configuration_11 = TDB.find "configuration_11"
  fun op configuration_one_one _ = ()
  val op configuration_one_one = TDB.find "configuration_one_one"
  fun op TR_rules _ = () val op TR_rules = TDB.find "TR_rules"
  fun op TR_ind _ = () val op TR_ind = TDB.find "TR_ind"
  fun op TR_strongind _ = () val op TR_strongind = TDB.find "TR_strongind"
  fun op TR_cases _ = () val op TR_cases = TDB.find "TR_cases"
  fun op TR_clauses _ = () val op TR_clauses = TDB.find "TR_clauses"
  fun op TR_deterministic _ = ()
  val op TR_deterministic = TDB.find "TR_deterministic"
  fun op TR_complete _ = () val op TR_complete = TDB.find "TR_complete"
  fun op Trans_TR_lemma _ = ()
  val op Trans_TR_lemma = TDB.find "Trans_TR_lemma"
  fun op TR_Trans_lemma _ = ()
  val op TR_Trans_lemma = TDB.find "TR_Trans_lemma"
  fun op Trans_Equiv_TR _ = ()
  val op Trans_Equiv_TR = TDB.find "Trans_Equiv_TR"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val sm_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="sm"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val sm_grammars = 
    Portable.## (addtyUDs,addtmUDs) sm_grammars
  val _ = Parse.grammarDB_insert("sm",sm_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG configuration_Axiom,
           case_def=configuration_case_def,
           case_cong=configuration_case_cong,
           induction=ORIG configuration_induction,
           nchotomy=configuration_nchotomy,
           size=SOME(Parse.Term`(sm$configuration_size) :('input -> num$num) ->
('output -> num$num) ->
('state -> num$num) ->
('input, 'output, 'state) sm$configuration -> num$num`,
                     ORIG configuration_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME configuration_11,
           distinct=NONE,
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
val _ = Theory.load_complete "sm"

end

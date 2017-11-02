structure cryptoExercisesTheory :> cryptoExercisesTheory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading cryptoExercisesTheory ... "
    else ()

  open Type Term Thm
  local open cipherTheory stringTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "cryptoExercises"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw09/project09/HOL/cryptoExercisesTheory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op exercise15_6_1a_thm _ = ()
  val op exercise15_6_1a_thm = TDB.find "exercise15_6_1a_thm"
  fun op exercise15_6_1b_thm _ = ()
  val op exercise15_6_1b_thm = TDB.find "exercise15_6_1b_thm"
  fun op exercise15_6_2a_thm _ = ()
  val op exercise15_6_2a_thm = TDB.find "exercise15_6_2a_thm"
  fun op exercise15_6_2b_thm _ = ()
  val op exercise15_6_2b_thm = TDB.find "exercise15_6_2b_thm"
  fun op exercise15_6_3_thm _ = ()
  val op exercise15_6_3_thm = TDB.find "exercise15_6_3_thm"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val cryptoExercises_grammars = merge_grammars ["cipher", "string"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="cryptoExercises"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val cryptoExercises_grammars = 
    Portable.## (addtyUDs,addtmUDs) cryptoExercises_grammars
  val _ = Parse.grammarDB_insert("cryptoExercises",cryptoExercises_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "cryptoExercises"

end

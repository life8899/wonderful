structure solutions1Theory :> solutions1Theory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading solutions1Theory ... "
    else ()

  open Type Term Thm
  local open example1Theory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "solutions1"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw08/project08/HOL/solutions1Theory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op aclExercise1 _ = () val op aclExercise1 = TDB.find "aclExercise1"
  fun op aclExercise1A _ = ()
  val op aclExercise1A = TDB.find "aclExercise1A"
  fun op aclExercise2B _ = ()
  val op aclExercise2B = TDB.find "aclExercise2B"
  fun op aclExerciseTwo _ = ()
  val op aclExerciseTwo = TDB.find "aclExerciseTwo"
  fun op aclExercise2A _ = ()
  val op aclExercise2A = TDB.find "aclExercise2A"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val solutions1_grammars = merge_grammars ["example1"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="solutions1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val solutions1_grammars = 
    Portable.## (addtyUDs,addtmUDs) solutions1_grammars
  val _ = Parse.grammarDB_insert("solutions1",solutions1_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "solutions1"

end

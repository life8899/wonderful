structure exTypeTheory :> exTypeTheory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading exTypeTheory ... "
    else ()

  open Type Term Thm
  local open indexedListsTheory patternMatchesTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "exType"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw07/Project07/HOL/exTypeTheory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op APP_def _ = () val op APP_def = TDB.find "APP_def"
  fun op APP_ASSOC _ = () val op APP_ASSOC = TDB.find "APP_ASSOC"
  fun op LENGTH_APP_ind _ = ()
  val op LENGTH_APP_ind = TDB.find "LENGTH_APP_ind"
  fun op LENGTH_APP_def _ = ()
  val op LENGTH_APP_def = TDB.find "LENGTH_APP_def"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val exType_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="exType"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val exType_grammars = 
    Portable.## (addtyUDs,addtmUDs) exType_grammars
  val _ = Parse.grammarDB_insert("exType",exType_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "exType"

end

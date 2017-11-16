structure counterTheory :> counterTheory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading counterTheory ... "
    else ()

  open Type Term Thm
  local open smTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "counter"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw10/project10/HOL/counterTheory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end


  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val counter_grammars = merge_grammars ["sm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="counter"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val counter_grammars = 
    Portable.## (addtyUDs,addtmUDs) counter_grammars
  val _ = Parse.grammarDB_insert("counter",counter_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "counter"

end

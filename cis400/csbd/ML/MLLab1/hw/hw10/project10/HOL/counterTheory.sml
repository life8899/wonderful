structure counterTheory :> counterTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading counterTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open smTheory
  in end;
  val _ = Theory.link_parents
          ("counter",
          Arbnum.fromString "1510852533",
          Arbnum.fromString "204439")
          [("sm",
           Arbnum.fromString "1510852530",
           Arbnum.fromString "364245")];
  val _ = Theory.incorporate_types "counter" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  []
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  []
  end
  val _ = Theory.incorporate_consts "counter" tyvector [];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  []
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end


  val _ = DB.bindl "counter" []

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

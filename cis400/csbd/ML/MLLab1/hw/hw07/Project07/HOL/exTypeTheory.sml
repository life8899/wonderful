structure exTypeTheory :> exTypeTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading exTypeTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open indexedListsTheory patternMatchesTheory
  in end;
  val _ = Theory.link_parents
          ("exType",
          Arbnum.fromString "1509050402",
          Arbnum.fromString "123810")
          [("indexedLists",
           Arbnum.fromString "1503148856",
           Arbnum.fromString "404777"),
           ("patternMatches",
           Arbnum.fromString "1503148884",
           Arbnum.fromString "20925")];
  val _ = Theory.incorporate_types "exType" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("list", "list"),
   ID("min", "bool"), ID("bool", "!"), ID("bool", "/\\"), ID("num", "0"),
   ID("min", "="), ID("min", "==>"), ID("exType", "APP"),
   ID("list", "CONS"), ID("list", "LENGTH"), ID("exType", "LENGTH_APP"),
   ID("list", "NIL")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'a", TYOP [2, 1], TYOP [0, 2, 0], TYOP [0, 2, 3],
   TYOP [0, 2, 2], TYOP [0, 2, 5], TYOP [3], TYOP [0, 2, 7],
   TYOP [0, 2, 8], TYOP [0, 1, 7], TYOP [0, 10, 7], TYOP [0, 9, 7],
   TYOP [0, 12, 7], TYOP [0, 8, 7], TYOP [0, 7, 7], TYOP [0, 7, 15],
   TYOP [0, 0, 7], TYOP [0, 0, 17], TYOP [0, 1, 5]]
  end
  val _ = Theory.incorporate_consts "exType" tyvector
     [("LENGTH_APP", 4), ("APP", 6)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("P", 9), TMV("h", 1), TMV("l", 2), TMV("l1", 2), TMV("l2", 2),
   TMV("l3", 2), TMV("v", 2), TMV("v1", 2), TMV("v2", 1), TMV("v3", 2),
   TMV("v6", 1), TMV("v7", 2), TMC(4, 11), TMC(4, 13), TMC(4, 14),
   TMC(5, 16), TMC(6, 0), TMC(7, 9), TMC(7, 18), TMC(8, 16), TMC(9, 6),
   TMC(10, 19), TMC(11, 3), TMC(12, 4), TMC(13, 2)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op APP_def x = x
    val op APP_def =
    ThmBind.DT(((("exType",0),[("list",[13])]),["DISK_THM"]),
               [ThmBind.read"%15%14%2%17%20%24@$0@2$0@|@2%12%1%14%3%14%4%17%20%21$2@$1@2$0@2%21$2@%20$1@$0@3|@|@|@2"])
  fun op APP_ASSOC x = x
    val op APP_ASSOC =
    ThmBind.DT(((("exType",1),
                [("bool",[14,25,35,55]),("exType",[0]),
                 ("list",[43])]),["DISK_THM"]),
               [ThmBind.read"%14%3%14%4%14%5%17%20%20$2@$1@2$0@2%20$2@%20$1@$0@3|@|@|@"])
  fun op LENGTH_APP_ind x = x
    val op LENGTH_APP_ind =
    ThmBind.DT(((("exType",4),
                [("bool",[25,26,46,47,52,53,57,62,71,75,77,79]),
                 ("list",[46]),("pair",[5,16]),("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%13%0%19%15$0%24@%24@2%15%12%10%14%11$2%24@%21$1@$0@2|@|@2%12%8%14%9%14%4$3%21$2@$1@2$0@|@|@|@4%14%6%14%7$2$1@$0@|@|@2|@"])
  fun op LENGTH_APP_def x = x
    val op LENGTH_APP_def =
    ThmBind.DT(((("exType",5),
                [("bool",[15,57]),("combin",[19]),("exType",[2,3]),
                 ("list",[6]),("pair",[49]),
                 ("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%15%18%23%24@%24@2%16@2%15%18%23%24@%21%10@%11@3%22%20%24@%21%10@%11@5%18%23%21%8@%9@2%4@2%22%20%21%8@%9@2%4@5"])

  val _ = DB.bindl "exType"
  [("APP_def",APP_def,DB.Def), ("APP_ASSOC",APP_ASSOC,DB.Thm),
   ("LENGTH_APP_ind",LENGTH_APP_ind,DB.Thm),
   ("LENGTH_APP_def",LENGTH_APP_def,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exType",
    thydataty = "compute",
    read = ThmBind.read,
    data = "exType.APP_def exType.LENGTH_APP_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exType",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "OO3.APP3.%20OO10.LENGTH_APP3.%23"
  }
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

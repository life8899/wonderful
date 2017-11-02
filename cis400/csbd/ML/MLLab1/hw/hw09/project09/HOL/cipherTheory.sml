structure cipherTheory :> cipherTheory =
struct

  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading cipherTheory ... "
    else ()

  open Type Term Thm
  local open indexedListsTheory patternMatchesTheory in end;

  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "cipher"
        (holpathdb.subst_pathvars "/home/caesar/Documents/development/github/wonderful/cis400/csbd/ML/MLLab1/hw/hw09/project09/HOL/cipherTheory.dat")
    fun find s = Redblackmap.find (thydata,s)
  end

  fun op symKey_TY_DEF _ = ()
  val op symKey_TY_DEF = TDB.find "symKey_TY_DEF"
  fun op symKey_case_def _ = ()
  val op symKey_case_def = TDB.find "symKey_case_def"
  fun op symKey_size_def _ = ()
  val op symKey_size_def = TDB.find "symKey_size_def"
  fun op symMsg_TY_DEF _ = ()
  val op symMsg_TY_DEF = TDB.find "symMsg_TY_DEF"
  fun op symMsg_case_def _ = ()
  val op symMsg_case_def = TDB.find "symMsg_case_def"
  fun op symMsg_size_def _ = ()
  val op symMsg_size_def = TDB.find "symMsg_size_def"
  fun op pKey_TY_DEF _ = () val op pKey_TY_DEF = TDB.find "pKey_TY_DEF"
  fun op pKey_case_def _ = ()
  val op pKey_case_def = TDB.find "pKey_case_def"
  fun op pKey_size_def _ = ()
  val op pKey_size_def = TDB.find "pKey_size_def"
  fun op asymMsg_TY_DEF _ = ()
  val op asymMsg_TY_DEF = TDB.find "asymMsg_TY_DEF"
  fun op asymMsg_case_def _ = ()
  val op asymMsg_case_def = TDB.find "asymMsg_case_def"
  fun op asymMsg_size_def _ = ()
  val op asymMsg_size_def = TDB.find "asymMsg_size_def"
  fun op digest_TY_DEF _ = ()
  val op digest_TY_DEF = TDB.find "digest_TY_DEF"
  fun op digest_case_def _ = ()
  val op digest_case_def = TDB.find "digest_case_def"
  fun op digest_size_def _ = ()
  val op digest_size_def = TDB.find "digest_size_def"
  fun op sign_def _ = () val op sign_def = TDB.find "sign_def"
  fun op signVerify_def _ = ()
  val op signVerify_def = TDB.find "signVerify_def"
  fun op datatype_symKey _ = ()
  val op datatype_symKey = TDB.find "datatype_symKey"
  fun op symKey_11 _ = () val op symKey_11 = TDB.find "symKey_11"
  fun op symKey_case_cong _ = ()
  val op symKey_case_cong = TDB.find "symKey_case_cong"
  fun op symKey_nchotomy _ = ()
  val op symKey_nchotomy = TDB.find "symKey_nchotomy"
  fun op symKey_Axiom _ = () val op symKey_Axiom = TDB.find "symKey_Axiom"
  fun op symKey_induction _ = ()
  val op symKey_induction = TDB.find "symKey_induction"
  fun op datatype_symMsg _ = ()
  val op datatype_symMsg = TDB.find "datatype_symMsg"
  fun op symMsg_11 _ = () val op symMsg_11 = TDB.find "symMsg_11"
  fun op symMsg_case_cong _ = ()
  val op symMsg_case_cong = TDB.find "symMsg_case_cong"
  fun op symMsg_nchotomy _ = ()
  val op symMsg_nchotomy = TDB.find "symMsg_nchotomy"
  fun op symMsg_Axiom _ = () val op symMsg_Axiom = TDB.find "symMsg_Axiom"
  fun op symMsg_induction _ = ()
  val op symMsg_induction = TDB.find "symMsg_induction"
  fun op symKey_one_one _ = ()
  val op symKey_one_one = TDB.find "symKey_one_one"
  fun op symMsg_one_one _ = ()
  val op symMsg_one_one = TDB.find "symMsg_one_one"
  fun op deciphS_ind _ = () val op deciphS_ind = TDB.find "deciphS_ind"
  fun op deciphS_def _ = () val op deciphS_def = TDB.find "deciphS_def"
  fun op datatype_pKey _ = ()
  val op datatype_pKey = TDB.find "datatype_pKey"
  fun op pKey_11 _ = () val op pKey_11 = TDB.find "pKey_11"
  fun op pKey_distinct _ = ()
  val op pKey_distinct = TDB.find "pKey_distinct"
  fun op pKey_case_cong _ = ()
  val op pKey_case_cong = TDB.find "pKey_case_cong"
  fun op pKey_nchotomy _ = ()
  val op pKey_nchotomy = TDB.find "pKey_nchotomy"
  fun op pKey_Axiom _ = () val op pKey_Axiom = TDB.find "pKey_Axiom"
  fun op pKey_induction _ = ()
  val op pKey_induction = TDB.find "pKey_induction"
  fun op datatype_asymMsg _ = ()
  val op datatype_asymMsg = TDB.find "datatype_asymMsg"
  fun op asymMsg_11 _ = () val op asymMsg_11 = TDB.find "asymMsg_11"
  fun op asymMsg_case_cong _ = ()
  val op asymMsg_case_cong = TDB.find "asymMsg_case_cong"
  fun op asymMsg_nchotomy _ = ()
  val op asymMsg_nchotomy = TDB.find "asymMsg_nchotomy"
  fun op asymMsg_Axiom _ = ()
  val op asymMsg_Axiom = TDB.find "asymMsg_Axiom"
  fun op asymMsg_induction _ = ()
  val op asymMsg_induction = TDB.find "asymMsg_induction"
  fun op pKey_one_one _ = () val op pKey_one_one = TDB.find "pKey_one_one"
  fun op pKey_distinct_clauses _ = ()
  val op pKey_distinct_clauses = TDB.find "pKey_distinct_clauses"
  fun op asymMsg_one_one _ = ()
  val op asymMsg_one_one = TDB.find "asymMsg_one_one"
  fun op deciphP_ind _ = () val op deciphP_ind = TDB.find "deciphP_ind"
  fun op deciphP_def _ = () val op deciphP_def = TDB.find "deciphP_def"
  fun op datatype_digest _ = ()
  val op datatype_digest = TDB.find "datatype_digest"
  fun op digest_11 _ = () val op digest_11 = TDB.find "digest_11"
  fun op digest_case_cong _ = ()
  val op digest_case_cong = TDB.find "digest_case_cong"
  fun op digest_nchotomy _ = ()
  val op digest_nchotomy = TDB.find "digest_nchotomy"
  fun op digest_Axiom _ = () val op digest_Axiom = TDB.find "digest_Axiom"
  fun op digest_induction _ = ()
  val op digest_induction = TDB.find "digest_induction"
  fun op digest_one_one _ = ()
  val op digest_one_one = TDB.find "digest_one_one"
  fun op signVerifyOK _ = () val op signVerifyOK = TDB.find "signVerifyOK"
  fun op option_distinct _ = ()
  val op option_distinct = TDB.find "option_distinct"
  fun op deciphP_clauses _ = ()
  val op deciphP_clauses = TDB.find "deciphP_clauses"
  fun op deciphS_clauses _ = ()
  val op deciphS_clauses = TDB.find "deciphS_clauses"
  fun op option_one_one _ = ()
  val op option_one_one = TDB.find "option_one_one"
  fun op sign_one_one _ = () val op sign_one_one = TDB.find "sign_one_one"
  fun op deciphS_one_one _ = ()
  val op deciphS_one_one = TDB.find "deciphS_one_one"
  fun op deciphP_one_one _ = ()
  val op deciphP_one_one = TDB.find "deciphP_one_one"
  fun op signVerify_one_one _ = ()
  val op signVerify_one_one = TDB.find "signVerify_one_one"

  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val cipher_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="cipher"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val cipher_grammars = 
    Portable.## (addtyUDs,addtmUDs) cipher_grammars
  val _ = Parse.grammarDB_insert("cipher",cipher_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG symKey_Axiom,
           case_def=symKey_case_def,
           case_cong=symKey_case_cong,
           induction=ORIG symKey_induction,
           nchotomy=symKey_nchotomy,
           size=SOME(Parse.Term`(cipher$symKey_size) :cipher$symKey -> num$num`,
                     ORIG symKey_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME symKey_11,
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


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG symMsg_Axiom,
           case_def=symMsg_case_def,
           case_cong=symMsg_case_cong,
           induction=ORIG symMsg_induction,
           nchotomy=symMsg_nchotomy,
           size=SOME(Parse.Term`(cipher$symMsg_size) :('message -> num$num) -> 'message cipher$symMsg -> num$num`,
                     ORIG symMsg_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME symMsg_11,
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


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG pKey_Axiom,
           case_def=pKey_case_def,
           case_cong=pKey_case_cong,
           induction=ORIG pKey_induction,
           nchotomy=pKey_nchotomy,
           size=SOME(Parse.Term`(cipher$pKey_size) :('princ -> num$num) -> 'princ cipher$pKey -> num$num`,
                     ORIG pKey_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME pKey_11,
           distinct=SOME pKey_distinct,
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
          {ax=ORIG asymMsg_Axiom,
           case_def=asymMsg_case_def,
           case_cong=asymMsg_case_cong,
           induction=ORIG asymMsg_induction,
           nchotomy=asymMsg_nchotomy,
           size=SOME(Parse.Term`(cipher$asymMsg_size) :('message -> num$num) ->
('princ -> num$num) -> ('message, 'princ) cipher$asymMsg -> num$num`,
                     ORIG asymMsg_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME asymMsg_11,
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


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG digest_Axiom,
           case_def=digest_case_def,
           case_cong=digest_case_cong,
           induction=ORIG digest_induction,
           nchotomy=digest_nchotomy,
           size=SOME(Parse.Term`(cipher$digest_size) :('message -> num$num) -> 'message cipher$digest -> num$num`,
                     ORIG digest_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME digest_11,
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
val _ = Theory.load_complete "cipher"

end

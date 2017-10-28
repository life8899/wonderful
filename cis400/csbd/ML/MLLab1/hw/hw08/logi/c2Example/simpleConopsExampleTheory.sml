structure simpleConopsExampleTheory :> simpleConopsExampleTheory =
struct
  val _ = if !Globals.print_thy_loads then print "Loading simpleConopsExampleTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (*  Parents *)
  local open aclDrulesTheory
  in end;
  val _ = Theory.link_parents
          ("simpleConopsExample",
          Arbnum.fromString "1490301435",
          Arbnum.fromString "453321")
          [("aclDrules",
           Arbnum.fromString "1488928988",
           Arbnum.fromString "329601")];
  val _ = Theory.incorporate_types "simpleConopsExample"
       [("roles", 0), ("principals", 0), ("people", 0), ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("simpleConopsExample", "roles"),
   ID("simpleConopsExample", "principals"),
   ID("simpleConopsExample", "people"),
   ID("simpleConopsExample", "commands"), ID("min", "bool"),
   ID("ind_type", "recspace"), ID("pair", "prod"),
   ID("aclfoundation", "Kripke"), ID("aclfoundation", "po"),
   ID("bool", "!"), ID("arithmetic", "+"), ID("pair", ","),
   ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("bool", "ARB"),
   ID("simpleConopsExample", "Alice"), ID("simpleConopsExample", "Ap"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"),
   ID("ind_type", "BOTTOM"), ID("simpleConopsExample", "Bob"),
   ID("bool", "COND"), ID("ind_type", "CONSTR"),
   ID("simpleConopsExample", "Commander"), ID("bool", "DATATYPE"),
   ID("arithmetic", "NUMERAL"), ID("aclfoundation", "Name"),
   ID("aclfoundation", "Princ"), ID("simpleConopsExample", "Operator"),
   ID("simpleConopsExample", "Role"), ID("num", "SUC"),
   ID("simpleConopsExample", "Staff"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("simpleConopsExample", "activate"),
   ID("simpleConopsExample", "commands2num"),
   ID("simpleConopsExample", "commands_CASE"),
   ID("simpleConopsExample", "commands_size"),
   ID("aclfoundation", "controls"), ID("aclfoundation", "Form"),
   ID("simpleConopsExample", "go"), ID("aclfoundation", "impf"),
   ID("simpleConopsExample", "launch"),
   ID("simpleConopsExample", "num2commands"),
   ID("simpleConopsExample", "num2people"),
   ID("simpleConopsExample", "num2roles"),
   ID("simpleConopsExample", "people2num"),
   ID("simpleConopsExample", "people_CASE"),
   ID("simpleConopsExample", "people_size"),
   ID("simpleConopsExample", "principals_CASE"),
   ID("simpleConopsExample", "principals_size"),
   ID("aclfoundation", "prop"), ID("aclfoundation", "quoting"),
   ID("aclfoundation", "reps"), ID("simpleConopsExample", "roles2num"),
   ID("simpleConopsExample", "roles_CASE"),
   ID("simpleConopsExample", "roles_size"), ID("aclrules", "sat"),
   ID("aclfoundation", "says"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 1, 5], TYOP [3], TYOP [0, 7, 0],
   TYOP [0, 0, 3], TYOP [0, 9, 3], TYOP [0, 1, 3], TYOP [0, 11, 10],
   TYOP [4], TYOP [0, 13, 3], TYOP [0, 14, 12], TYOP [0, 7, 15],
   TYOP [0, 13, 0], TYOP [0, 13, 5], TYOP [0, 0, 1], TYOP [0, 0, 13],
   TYOP [5], TYOP [0, 0, 21], TYOP [0, 21, 0], TYOP [0, 3, 5],
   TYOP [0, 21, 24], TYOP [0, 13, 7], TYOP [0, 1, 7], TYOP [0, 0, 7],
   TYOP [6], TYOP [8, 1, 0], TYOP [8, 13, 30], TYOP [7, 31],
   TYOP [0, 32, 29], TYV "'e", TYV "'d", TYV "'b",
   TYOP [9, 21, 36, 7, 35, 34], TYOP [10, 35], TYOP [10, 34],
   TYOP [0, 21, 29], TYOP [0, 13, 29], TYOP [0, 7, 29], TYOP [0, 1, 29],
   TYOP [0, 21, 40], TYOP [0, 21, 44], TYOP [0, 21, 3], TYOP [0, 7, 3],
   TYOP [0, 13, 41], TYOP [0, 28, 29], TYOP [0, 27, 49], TYOP [0, 26, 50],
   TYOP [0, 7, 32], TYOP [0, 1, 43], TYOP [0, 3, 29], TYOP [0, 54, 29],
   TYOP [0, 40, 29], TYOP [0, 56, 29], TYOP [0, 9, 29], TYOP [0, 58, 29],
   TYOP [0, 14, 29], TYOP [0, 60, 29], TYOP [0, 41, 29], TYOP [0, 62, 29],
   TYOP [0, 42, 29], TYOP [0, 64, 29], TYOP [0, 33, 29], TYOP [0, 66, 29],
   TYOP [0, 11, 29], TYOP [0, 68, 29], TYOP [0, 43, 29], TYOP [0, 70, 29],
   TYOP [0, 0, 29], TYOP [0, 72, 29], TYOP [0, 0, 0], TYOP [0, 0, 74],
   TYOP [8, 38, 39], TYOP [8, 37, 76], TYOP [0, 76, 77], TYOP [0, 37, 78],
   TYOP [0, 30, 31], TYOP [0, 13, 80], TYOP [0, 39, 76], TYOP [0, 38, 82],
   TYOP [0, 0, 30], TYOP [0, 1, 84], TYOP [0, 29, 29], TYOP [0, 29, 86],
   TYOP [0, 0, 72], TYOP [0, 3, 54], TYOP [0, 7, 42], TYOP [0, 32, 33],
   TYOP [0, 46, 29], TYOP [0, 92, 29], TYOP [0, 23, 29], TYOP [0, 94, 29],
   TYOP [0, 17, 29], TYOP [0, 96, 29], TYOP [0, 47, 29], TYOP [0, 98, 29],
   TYOP [0, 52, 29], TYOP [0, 100, 29], TYOP [0, 2, 29], TYOP [0, 102, 29],
   TYOP [0, 29, 5], TYOP [0, 0, 32], TYOP [0, 105, 32], TYOP [0, 31, 106],
   TYOP [0, 0, 107], TYOP [33, 7], TYOP [0, 7, 109], TYOP [0, 72, 94],
   TYOP [0, 72, 96], TYOP [0, 72, 102], TYOP [0, 33, 100],
   TYOP [46, 21, 7, 35, 34], TYOP [0, 115, 115], TYOP [0, 109, 116],
   TYOP [0, 115, 116], TYOP [0, 21, 115], TYOP [0, 109, 109],
   TYOP [0, 109, 120], TYOP [0, 109, 117], TYOP [0, 115, 29],
   TYOP [0, 77, 123]]
  end
  val _ = Theory.incorporate_consts "simpleConopsExample" tyvector
     [("roles_size", 2), ("roles_CASE", 6), ("roles2num", 2),
      ("principals_size", 8), ("principals_CASE", 16), ("people_size", 17),
      ("people_CASE", 18), ("people2num", 17), ("num2roles", 19),
      ("num2people", 20), ("num2commands", 22), ("launch", 21), ("go", 21),
      ("commands_size", 23), ("commands_CASE", 25), ("commands2num", 23),
      ("activate", 21), ("Staff", 26), ("Role", 27), ("Operator", 1),
      ("Commander", 1), ("Bob", 13), ("Ap", 28), ("Alice", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'principals'", 33), TMV("M", 37), TMV("M", 21), TMV("M", 13),
   TMV("M", 7), TMV("M", 1), TMV("M'", 21), TMV("M'", 13), TMV("M'", 7),
   TMV("M'", 1), TMV("Oi", 38), TMV("Os", 39), TMV("P", 40), TMV("P", 41),
   TMV("P", 42), TMV("P", 43), TMV("a", 21), TMV("a", 0), TMV("a", 13),
   TMV("a", 1), TMV("a'", 21), TMV("a'", 0), TMV("a'", 13), TMV("a'", 1),
   TMV("a0", 32), TMV("commands", 45), TMV("f", 46), TMV("f", 14),
   TMV("f", 11), TMV("f'", 14), TMV("f0", 14), TMV("f1", 11),
   TMV("f1'", 11), TMV("f2", 9), TMV("f2'", 9), TMV("fn", 47), TMV("m", 0),
   TMV("n", 0), TMV("p", 13), TMV("p", 7), TMV("people", 48), TMV("pp", 7),
   TMV("principals", 51), TMV("r", 0), TMV("r", 1), TMV("r'", 0),
   TMV("rep", 23), TMV("rep", 17), TMV("rep", 52), TMV("rep", 2),
   TMV("roles", 53), TMV("v0", 3), TMV("v0'", 3), TMV("v1", 3),
   TMV("v1'", 3), TMV("v2", 3), TMV("v2'", 3), TMV("x", 21), TMV("x", 13),
   TMV("x", 1), TMV("x0", 3), TMV("x1", 3), TMV("x2", 3), TMC(11, 55),
   TMC(11, 56), TMC(11, 57), TMC(11, 59), TMC(11, 61), TMC(11, 63),
   TMC(11, 65), TMC(11, 67), TMC(11, 69), TMC(11, 71), TMC(11, 73),
   TMC(11, 62), TMC(11, 64), TMC(11, 66), TMC(11, 70), TMC(12, 75),
   TMC(13, 79), TMC(13, 81), TMC(13, 83), TMC(13, 85), TMC(14, 87),
   TMC(15, 0), TMC(16, 88), TMC(17, 89), TMC(17, 87), TMC(17, 44),
   TMC(17, 88), TMC(17, 48), TMC(17, 90), TMC(17, 91), TMC(17, 53),
   TMC(18, 87), TMC(19, 56), TMC(19, 93), TMC(19, 95), TMC(19, 61),
   TMC(19, 97), TMC(19, 99), TMC(19, 101), TMC(19, 69), TMC(19, 103),
   TMC(19, 73), TMC(19, 62), TMC(19, 70), TMC(20, 0), TMC(20, 13),
   TMC(20, 1), TMC(21, 13), TMC(22, 28), TMC(23, 74), TMC(24, 74),
   TMC(25, 32), TMC(26, 13), TMC(27, 104), TMC(28, 108), TMC(29, 1),
   TMC(30, 86), TMC(31, 74), TMC(32, 110), TMC(34, 1), TMC(35, 27),
   TMC(36, 74), TMC(37, 26), TMC(38, 111), TMC(38, 112), TMC(38, 113),
   TMC(38, 114), TMC(39, 0), TMC(40, 87), TMC(41, 21), TMC(42, 23),
   TMC(43, 25), TMC(44, 23), TMC(45, 117), TMC(47, 21), TMC(48, 118),
   TMC(49, 21), TMC(50, 22), TMC(51, 20), TMC(52, 19), TMC(53, 17),
   TMC(54, 18), TMC(55, 17), TMC(56, 16), TMC(57, 8), TMC(58, 119),
   TMC(59, 121), TMC(60, 122), TMC(61, 2), TMC(62, 6), TMC(63, 2),
   TMC(64, 124), TMC(65, 117), TMC(66, 86)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("simpleConopsExample",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%97%46%126%37%85$0@%120%112%112%130@4|@$0@|@"])
  fun op commands_BIJ x = x
    val op commands_BIJ =
    ThmBind.DT(((("simpleConopsExample",1),
                [("bool",[116]),
                 ("simpleConopsExample",[0])]),["DISK_THM"]),
               [ThmBind.read"%83%64%16%88%140%133$0@3$0@|@2%73%43%87%37%85$0@%120%112%112%130@4|$0@2%89%133%140$0@3$0@2|@2"])



  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("simpleConopsExample",14),[]),[]),
               [ThmBind.read"%64%57%89%135$0@2%84@|@"])
  fun op commands_CASE x = x
    val op commands_CASE =
    ThmBind.DT(((("simpleConopsExample",15),[]),[]),
               [ThmBind.read"%64%57%63%51%63%53%63%55%86%134$3@$2@$1@$0@2%36%116%85$0@%120%112%130@4$3@%116%89$0@%120%112%130@4$2@$1@2|%133$3@3|@|@|@|@"])
  fun op people_TY_DEF x = x
    val op people_TY_DEF =
    ThmBind.DT(((("simpleConopsExample",23),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%99%47%127%37%85$0@%120%113%130@3|@$0@|@"])
  fun op people_BIJ x = x
    val op people_BIJ =
    ThmBind.DT(((("simpleConopsExample",24),
                [("bool",[116]),
                 ("simpleConopsExample",[23])]),["DISK_THM"]),
               [ThmBind.read"%83%74%18%90%141%143$0@3$0@|@2%73%43%87%37%85$0@%120%113%130@3|$0@2%89%143%141$0@3$0@2|@2"])


  fun op people_size_def x = x
    val op people_size_def =
    ThmBind.DT(((("simpleConopsExample",36),[]),[]),
               [ThmBind.read"%74%58%89%145$0@2%84@|@"])
  fun op people_CASE x = x
    val op people_CASE =
    ThmBind.DT(((("simpleConopsExample",37),[]),[]),
               [ThmBind.read"%74%58%63%51%63%53%86%144$2@$1@$0@2%36%116%89$0@%84@2$2@$1@|%143$2@3|@|@|@"])
  fun op roles_TY_DEF x = x
    val op roles_TY_DEF =
    ThmBind.DT(((("simpleConopsExample",45),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%103%49%128%37%85$0@%120%113%130@3|@$0@|@"])
  fun op roles_BIJ x = x
    val op roles_BIJ =
    ThmBind.DT(((("simpleConopsExample",46),
                [("bool",[116]),
                 ("simpleConopsExample",[45])]),["DISK_THM"]),
               [ThmBind.read"%83%77%19%93%142%151$0@3$0@|@2%73%43%87%37%85$0@%120%113%130@3|$0@2%89%151%142$0@3$0@2|@2"])


  fun op roles_size_def x = x
    val op roles_size_def =
    ThmBind.DT(((("simpleConopsExample",58),[]),[]),
               [ThmBind.read"%77%59%89%153$0@2%84@|@"])
  fun op roles_CASE x = x
    val op roles_CASE =
    ThmBind.DT(((("simpleConopsExample",59),[]),[]),
               [ThmBind.read"%77%59%63%51%63%53%86%152$2@$1@$0@2%36%116%89$0@%84@2$2@$1@|%151$2@3|@|@|@"])
  fun op principals_TY_DEF x = x
    val op principals_TY_DEF =
    ThmBind.DT(((("simpleConopsExample",67),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%101%48%129%24%70%0%94%76%24%94%131%105%18%92$1@%18%117%84@%80$0@%82%109@%107@3%37%114|@|$0@2|@2%131%106%19%92$1@%19%117%124%84@2%80%108@%82$0@%107@3%37%114|@|$0@2|@2%104%17%92$1@%17%117%124%124%84@3%80%108@%82%109@$0@3%37%114|@|$0@2|@4$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op principals_case_def x = x
    val op principals_case_def =
    ThmBind.DT(((("simpleConopsExample",75),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%83%74%18%67%27%71%31%66%33%86%146%125$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%83%77%19%67%27%71%31%66%33%86%146%123$3@2$2@$1@$0@2$1$3@2|@|@|@|@2%73%17%67%27%71%31%66%33%86%146%111$3@2$2@$1@$0@2$0$3@2|@|@|@|@3"])
  fun op principals_size_def x = x
    val op principals_size_def =
    ThmBind.DT(((("simpleConopsExample",76),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%83%74%18%89%147%125$0@3%78%120%112%130@3%145$0@3|@2%83%77%19%89%147%123$0@3%78%120%112%130@3%153$0@3|@2%73%17%89%147%111$0@3%78%120%112%130@3$0@2|@3"])
  fun op num2commands_commands2num x = x
    val op num2commands_commands2num =
    ThmBind.DT(((("simpleConopsExample",2),
                [("simpleConopsExample",[1])]),["DISK_THM"]),
               [ThmBind.read"%64%16%88%140%133$0@3$0@|@"])
  fun op commands2num_num2commands x = x
    val op commands2num_num2commands =
    ThmBind.DT(((("simpleConopsExample",3),
                [("simpleConopsExample",[1])]),["DISK_THM"]),
               [ThmBind.read"%73%43%87%85$0@%120%112%112%130@5%89%133%140$0@3$0@2|@"])
  fun op num2commands_11 x = x
    val op num2commands_11 =
    ThmBind.DT(((("simpleConopsExample",4),
                [("bool",[26]),("simpleConopsExample",[1])]),["DISK_THM"]),
               [ThmBind.read"%73%43%73%45%94%85$1@%120%112%112%130@5%94%85$0@%120%112%112%130@5%87%88%140$1@2%140$0@3%89$1@$0@4|@|@"])
  fun op commands2num_11 x = x
    val op commands2num_11 =
    ThmBind.DT(((("simpleConopsExample",5),
                [("bool",[26]),("simpleConopsExample",[1])]),["DISK_THM"]),
               [ThmBind.read"%64%16%64%20%87%89%133$1@2%133$0@3%88$1@$0@2|@|@"])
  fun op num2commands_ONTO x = x
    val op num2commands_ONTO =
    ThmBind.DT(((("simpleConopsExample",6),
                [("bool",[25,62]),
                 ("simpleConopsExample",[1])]),["DISK_THM"]),
               [ThmBind.read"%64%16%104%43%83%88$1@%140$0@3%85$0@%120%112%112%130@5|@|@"])
  fun op commands2num_ONTO x = x
    val op commands2num_ONTO =
    ThmBind.DT(((("simpleConopsExample",7),
                [("bool",[26]),("simpleConopsExample",[1])]),["DISK_THM"]),
               [ThmBind.read"%73%43%87%85$0@%120%112%112%130@5%95%16%89$1@%133$0@2|@2|@"])
  fun op num2commands_thm x = x
    val op num2commands_thm =
    ThmBind.DT(((("simpleConopsExample",11),
                [("simpleConopsExample",[8,9,10])]),[]),
               [ThmBind.read"%83%88%140%84@2%137@2%83%88%140%120%112%130@4%139@2%88%140%120%113%130@4%132@3"])
  fun op commands2num_thm x = x
    val op commands2num_thm =
    ThmBind.DT(((("simpleConopsExample",12),
                [("bool",[25]),("numeral",[3,7]),
                 ("simpleConopsExample",[3,8,9,10])]),["DISK_THM"]),
               [ThmBind.read"%83%89%133%137@2%84@2%83%89%133%139@2%120%112%130@4%89%133%132@2%120%113%130@5"])
  fun op commands_EQ_commands x = x
    val op commands_EQ_commands =
    ThmBind.DT(((("simpleConopsExample",13),
                [("bool",[57]),("simpleConopsExample",[5])]),["DISK_THM"]),
               [ThmBind.read"%64%16%64%20%87%88$1@$0@2%89%133$1@2%133$0@3|@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("simpleConopsExample",16),
                [("bool",[55,63]),("numeral",[3,6,7]),
                 ("simpleConopsExample",[12,15])]),["DISK_THM"]),
               [ThmBind.read"%83%63%51%63%53%63%55%86%134%137@$2@$1@$0@2$2@|@|@|@2%83%63%51%63%53%63%55%86%134%139@$2@$1@$0@2$1@|@|@|@2%63%51%63%53%63%55%86%134%132@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("simpleConopsExample",17),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%119%25%137@%139@%132@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("simpleConopsExample",18),
                [("numeral",[3,6]),
                 ("simpleConopsExample",[12,13])]),["DISK_THM"]),
               [ThmBind.read"%83%156%88%137@%139@3%83%156%88%137@%132@3%156%88%139@%132@4"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("simpleConopsExample",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[6,8,9,10,16])]),["DISK_THM"]),
               [ThmBind.read"%64%2%64%6%63%51%63%53%63%55%94%83%88$4@$3@2%83%94%88$3@%137@2%86$2@%52@3%83%94%88$3@%139@2%86$1@%54@3%94%88$3@%132@2%86$0@%56@6%86%134$4@$2@$1@$0@2%134$3@%52@%54@%56@3|@|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("simpleConopsExample",20),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[6,8,9,10])]),["DISK_THM"]),
               [ThmBind.read"%64%16%131%88$0@%137@2%131%88$0@%139@2%88$0@%132@3|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("simpleConopsExample",21),
                [("bool",[8,14,25,53,55,63]),("numeral",[3,8]),
                 ("simpleConopsExample",[12])]),["DISK_THM"]),
               [ThmBind.read"%63%60%63%61%63%62%96%26%83%86$0%137@2$3@2%83%86$0%139@2$2@2%86$0%132@2$1@3|@|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("simpleConopsExample",22),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[6,8,9,10])]),["DISK_THM"]),
               [ThmBind.read"%65%12%94%83$0%132@2%83$0%137@2$0%139@4%64%16$1$0@|@2|@"])
  fun op num2people_people2num x = x
    val op num2people_people2num =
    ThmBind.DT(((("simpleConopsExample",25),
                [("simpleConopsExample",[24])]),["DISK_THM"]),
               [ThmBind.read"%74%18%90%141%143$0@3$0@|@"])
  fun op people2num_num2people x = x
    val op people2num_num2people =
    ThmBind.DT(((("simpleConopsExample",26),
                [("simpleConopsExample",[24])]),["DISK_THM"]),
               [ThmBind.read"%73%43%87%85$0@%120%113%130@4%89%143%141$0@3$0@2|@"])
  fun op num2people_11 x = x
    val op num2people_11 =
    ThmBind.DT(((("simpleConopsExample",27),
                [("bool",[26]),
                 ("simpleConopsExample",[24])]),["DISK_THM"]),
               [ThmBind.read"%73%43%73%45%94%85$1@%120%113%130@4%94%85$0@%120%113%130@4%87%90%141$1@2%141$0@3%89$1@$0@4|@|@"])
  fun op people2num_11 x = x
    val op people2num_11 =
    ThmBind.DT(((("simpleConopsExample",28),
                [("bool",[26]),
                 ("simpleConopsExample",[24])]),["DISK_THM"]),
               [ThmBind.read"%74%18%74%22%87%89%143$1@2%143$0@3%90$1@$0@2|@|@"])
  fun op num2people_ONTO x = x
    val op num2people_ONTO =
    ThmBind.DT(((("simpleConopsExample",29),
                [("bool",[25,62]),
                 ("simpleConopsExample",[24])]),["DISK_THM"]),
               [ThmBind.read"%74%18%104%43%83%90$1@%141$0@3%85$0@%120%113%130@4|@|@"])
  fun op people2num_ONTO x = x
    val op people2num_ONTO =
    ThmBind.DT(((("simpleConopsExample",30),
                [("bool",[26]),
                 ("simpleConopsExample",[24])]),["DISK_THM"]),
               [ThmBind.read"%73%43%87%85$0@%120%113%130@4%105%18%89$1@%143$0@2|@2|@"])
  fun op num2people_thm x = x
    val op num2people_thm =
    ThmBind.DT(((("simpleConopsExample",33),
                [("simpleConopsExample",[31,32])]),[]),
               [ThmBind.read"%83%90%141%84@2%110@2%90%141%120%112%130@4%115@2"])
  fun op people2num_thm x = x
    val op people2num_thm =
    ThmBind.DT(((("simpleConopsExample",34),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("simpleConopsExample",[26,31,32])]),["DISK_THM"]),
               [ThmBind.read"%83%89%143%110@2%84@2%89%143%115@2%120%112%130@4"])
  fun op people_EQ_people x = x
    val op people_EQ_people =
    ThmBind.DT(((("simpleConopsExample",35),
                [("bool",[57]),
                 ("simpleConopsExample",[28])]),["DISK_THM"]),
               [ThmBind.read"%74%18%74%22%87%90$1@$0@2%89%143$1@2%143$0@3|@|@"])
  fun op people_case_def x = x
    val op people_case_def =
    ThmBind.DT(((("simpleConopsExample",38),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("simpleConopsExample",[34,37])]),["DISK_THM"]),
               [ThmBind.read"%83%63%51%63%53%86%144%110@$1@$0@2$1@|@|@2%63%51%63%53%86%144%115@$1@$0@2$0@|@|@2"])
  fun op datatype_people x = x
    val op datatype_people =
    ThmBind.DT(((("simpleConopsExample",39),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%119%40%110@%115@2"])
  fun op people_distinct x = x
    val op people_distinct =
    ThmBind.DT(((("simpleConopsExample",40),
                [("numeral",[3,6]),
                 ("simpleConopsExample",[34,35])]),["DISK_THM"]),
               [ThmBind.read"%156%90%110@%115@2"])
  fun op people_case_cong x = x
    val op people_case_cong =
    ThmBind.DT(((("simpleConopsExample",41),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[29,31,32,38])]),["DISK_THM"]),
               [ThmBind.read"%74%3%74%7%63%51%63%53%94%83%90$3@$2@2%83%94%90$2@%110@2%86$1@%52@3%94%90$2@%115@2%86$0@%54@5%86%144$3@$1@$0@2%144$2@%52@%54@3|@|@|@|@"])
  fun op people_nchotomy x = x
    val op people_nchotomy =
    ThmBind.DT(((("simpleConopsExample",42),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[29,31,32])]),["DISK_THM"]),
               [ThmBind.read"%74%18%131%90$0@%110@2%90$0@%115@2|@"])
  fun op people_Axiom x = x
    val op people_Axiom =
    ThmBind.DT(((("simpleConopsExample",43),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("simpleConopsExample",[34])]),["DISK_THM"]),
               [ThmBind.read"%63%60%63%61%98%27%83%86$0%110@2$2@2%86$0%115@2$1@2|@|@|@"])
  fun op people_induction x = x
    val op people_induction =
    ThmBind.DT(((("simpleConopsExample",44),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[29,31,32])]),["DISK_THM"]),
               [ThmBind.read"%68%13%94%83$0%110@2$0%115@3%74%18$1$0@|@2|@"])
  fun op num2roles_roles2num x = x
    val op num2roles_roles2num =
    ThmBind.DT(((("simpleConopsExample",47),
                [("simpleConopsExample",[46])]),["DISK_THM"]),
               [ThmBind.read"%77%19%93%142%151$0@3$0@|@"])
  fun op roles2num_num2roles x = x
    val op roles2num_num2roles =
    ThmBind.DT(((("simpleConopsExample",48),
                [("simpleConopsExample",[46])]),["DISK_THM"]),
               [ThmBind.read"%73%43%87%85$0@%120%113%130@4%89%151%142$0@3$0@2|@"])
  fun op num2roles_11 x = x
    val op num2roles_11 =
    ThmBind.DT(((("simpleConopsExample",49),
                [("bool",[26]),
                 ("simpleConopsExample",[46])]),["DISK_THM"]),
               [ThmBind.read"%73%43%73%45%94%85$1@%120%113%130@4%94%85$0@%120%113%130@4%87%93%142$1@2%142$0@3%89$1@$0@4|@|@"])
  fun op roles2num_11 x = x
    val op roles2num_11 =
    ThmBind.DT(((("simpleConopsExample",50),
                [("bool",[26]),
                 ("simpleConopsExample",[46])]),["DISK_THM"]),
               [ThmBind.read"%77%19%77%23%87%89%151$1@2%151$0@3%93$1@$0@2|@|@"])
  fun op num2roles_ONTO x = x
    val op num2roles_ONTO =
    ThmBind.DT(((("simpleConopsExample",51),
                [("bool",[25,62]),
                 ("simpleConopsExample",[46])]),["DISK_THM"]),
               [ThmBind.read"%77%19%104%43%83%93$1@%142$0@3%85$0@%120%113%130@4|@|@"])
  fun op roles2num_ONTO x = x
    val op roles2num_ONTO =
    ThmBind.DT(((("simpleConopsExample",52),
                [("bool",[26]),
                 ("simpleConopsExample",[46])]),["DISK_THM"]),
               [ThmBind.read"%73%43%87%85$0@%120%113%130@4%106%19%89$1@%151$0@2|@2|@"])
  fun op num2roles_thm x = x
    val op num2roles_thm =
    ThmBind.DT(((("simpleConopsExample",55),
                [("simpleConopsExample",[53,54])]),[]),
               [ThmBind.read"%83%93%142%84@2%118@2%93%142%120%112%130@4%122@2"])
  fun op roles2num_thm x = x
    val op roles2num_thm =
    ThmBind.DT(((("simpleConopsExample",56),
                [("bool",[25,53]),("numeral",[3,7]),
                 ("simpleConopsExample",[48,53,54])]),["DISK_THM"]),
               [ThmBind.read"%83%89%151%118@2%84@2%89%151%122@2%120%112%130@4"])
  fun op roles_EQ_roles x = x
    val op roles_EQ_roles =
    ThmBind.DT(((("simpleConopsExample",57),
                [("bool",[57]),
                 ("simpleConopsExample",[50])]),["DISK_THM"]),
               [ThmBind.read"%77%19%77%23%87%93$1@$0@2%89%151$1@2%151$0@3|@|@"])
  fun op roles_case_def x = x
    val op roles_case_def =
    ThmBind.DT(((("simpleConopsExample",60),
                [("bool",[55,63]),("numeral",[3,6]),
                 ("simpleConopsExample",[56,59])]),["DISK_THM"]),
               [ThmBind.read"%83%63%51%63%53%86%152%118@$1@$0@2$1@|@|@2%63%51%63%53%86%152%122@$1@$0@2$0@|@|@2"])
  fun op datatype_roles x = x
    val op datatype_roles =
    ThmBind.DT(((("simpleConopsExample",61),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%119%50%118@%122@2"])
  fun op roles_distinct x = x
    val op roles_distinct =
    ThmBind.DT(((("simpleConopsExample",62),
                [("numeral",[3,6]),
                 ("simpleConopsExample",[56,57])]),["DISK_THM"]),
               [ThmBind.read"%156%93%118@%122@2"])
  fun op roles_case_cong x = x
    val op roles_case_cong =
    ThmBind.DT(((("simpleConopsExample",63),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[51,53,54,60])]),["DISK_THM"]),
               [ThmBind.read"%77%5%77%9%63%51%63%53%94%83%93$3@$2@2%83%94%93$2@%118@2%86$1@%52@3%94%93$2@%122@2%86$0@%54@5%86%152$3@$1@$0@2%152$2@%52@%54@3|@|@|@|@"])
  fun op roles_nchotomy x = x
    val op roles_nchotomy =
    ThmBind.DT(((("simpleConopsExample",64),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[51,53,54])]),["DISK_THM"]),
               [ThmBind.read"%77%19%131%93$0@%118@2%93$0@%122@2|@"])
  fun op roles_Axiom x = x
    val op roles_Axiom =
    ThmBind.DT(((("simpleConopsExample",65),
                [("bool",[8,14,25,55,63]),("numeral",[3,8]),
                 ("simpleConopsExample",[56])]),["DISK_THM"]),
               [ThmBind.read"%63%60%63%61%102%28%83%86$0%118@2$2@2%86$0%122@2$1@2|@|@|@"])
  fun op roles_induction x = x
    val op roles_induction =
    ThmBind.DT(((("simpleConopsExample",66),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,177,178,182,185,274]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15]),
                 ("simpleConopsExample",[51,53,54])]),["DISK_THM"]),
               [ThmBind.read"%72%15%94%83$0%118@2$0%122@3%77%19$1$0@|@2|@"])
  fun op datatype_principals x = x
    val op datatype_principals =
    ThmBind.DT(((("simpleConopsExample",77),
                [("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%119%42%125@%123@%111@2"])
  fun op principals_11 x = x
    val op principals_11 =
    ThmBind.DT(((("simpleConopsExample",78),
                [("bool",[26,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%83%74%18%74%22%87%91%125$1@2%125$0@3%90$1@$0@2|@|@2%83%77%19%77%23%87%91%123$1@2%123$0@3%93$1@$0@2|@|@2%73%17%73%21%87%91%111$1@2%111$0@3%89$1@$0@2|@|@3"])
  fun op principals_distinct x = x
    val op principals_distinct =
    ThmBind.DT(((("simpleConopsExample",79),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("ind_type",[33,34]),("pair",[8,9]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%83%77%23%74%18%156%91%125$0@2%123$1@3|@|@2%83%73%21%74%18%156%91%125$0@2%111$1@3|@|@2%73%21%77%19%156%91%123$0@2%111$1@3|@|@3"])
  fun op principals_case_cong x = x
    val op principals_case_cong =
    ThmBind.DT(((("simpleConopsExample",80),
                [("bool",[26,180]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74,75])]),["DISK_THM"]),
               [ThmBind.read"%75%4%75%8%67%27%71%31%66%33%94%83%91$4@$3@2%83%74%18%94%91$4@%125$0@3%86$3$0@2%29$0@3|@2%83%77%19%94%91$4@%123$0@3%86$2$0@2%32$0@3|@2%73%17%94%91$4@%111$0@3%86$1$0@2%34$0@3|@5%86%146$4@$2@$1@$0@2%146$3@%29@%32@%34@3|@|@|@|@|@"])
  fun op principals_nchotomy x = x
    val op principals_nchotomy =
    ThmBind.DT(((("simpleConopsExample",81),
                [("bool",[26,180]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%75%41%131%105%38%91$1@%125$0@2|@2%131%106%44%91$1@%123$0@2|@2%104%37%91$1@%111$0@2|@3|@"])
  fun op principals_Axiom x = x
    val op principals_Axiom =
    ThmBind.DT(((("simpleConopsExample",82),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%67%30%71%31%66%33%100%35%83%74%18%86$1%125$0@3$4$0@2|@2%83%77%19%86$1%123$0@3$3$0@2|@2%73%17%86$1%111$0@3$2$0@2|@3|@|@|@|@"])
  fun op principals_induction x = x
    val op principals_induction =
    ThmBind.DT(((("simpleConopsExample",83),
                [("bool",[26]),
                 ("simpleConopsExample",
                 [68,69,70,71,72,73,74])]),["DISK_THM"]),
               [ThmBind.read"%69%14%94%83%74%38$1%125$0@2|@2%83%77%44$1%123$0@2|@2%73%37$1%111$0@2|@4%75%39$1$0@|@2|@"])
  fun op OpRule1_thm x = x
    val op OpRule1_thm =
    ThmBind.DT(((("simpleConopsExample",84),
                [("aclDrules",[4]),("aclrules",[23,24])]),["DISK_THM"]),
               [ThmBind.read"%94%154%79%1@%81%10@%11@3%136%121%123%118@3%148%137@4%94%154%79%1@%81%10@%11@3%150%121%125%110@3%121%123%118@3%148%137@4%94%154%79%1@%81%10@%11@3%155%149%121%125%110@3%121%123%118@4%148%137@4%94%154%79%1@%81%10@%11@3%138%148%137@2%148%139@4%154%79%1@%81%10@%11@3%155%149%121%125%115@3%121%123%122@4%148%139@7"])
  fun op ApRule1_thm x = x
    val op ApRule1_thm =
    ThmBind.DT(((("simpleConopsExample",85),
                [("aclDrules",[4]),("aclrules",[23])]),["DISK_THM"]),
               [ThmBind.read"%94%154%79%1@%81%10@%11@3%136%121%123%122@3%148%139@4%94%154%79%1@%81%10@%11@3%150%121%125%115@3%121%123%122@3%148%139@4%94%154%79%1@%81%10@%11@3%155%149%121%125%115@3%121%123%122@4%148%139@4%94%154%79%1@%81%10@%11@3%138%148%139@2%148%132@4%154%79%1@%81%10@%11@3%148%132@6"])

  val _ = DB.bindl "simpleConopsExample"
  [("commands_TY_DEF",commands_TY_DEF,DB.Def),
   ("commands_BIJ",commands_BIJ,DB.Def),
   ("commands_size_def",commands_size_def,DB.Def),
   ("commands_CASE",commands_CASE,DB.Def),
   ("people_TY_DEF",people_TY_DEF,DB.Def),
   ("people_BIJ",people_BIJ,DB.Def),
   ("people_size_def",people_size_def,DB.Def),
   ("people_CASE",people_CASE,DB.Def),
   ("roles_TY_DEF",roles_TY_DEF,DB.Def), ("roles_BIJ",roles_BIJ,DB.Def),
   ("roles_size_def",roles_size_def,DB.Def),
   ("roles_CASE",roles_CASE,DB.Def),
   ("principals_TY_DEF",principals_TY_DEF,DB.Def),
   ("principals_case_def",principals_case_def,DB.Def),
   ("principals_size_def",principals_size_def,DB.Def),
   ("num2commands_commands2num",num2commands_commands2num,DB.Thm),
   ("commands2num_num2commands",commands2num_num2commands,DB.Thm),
   ("num2commands_11",num2commands_11,DB.Thm),
   ("commands2num_11",commands2num_11,DB.Thm),
   ("num2commands_ONTO",num2commands_ONTO,DB.Thm),
   ("commands2num_ONTO",commands2num_ONTO,DB.Thm),
   ("num2commands_thm",num2commands_thm,DB.Thm),
   ("commands2num_thm",commands2num_thm,DB.Thm),
   ("commands_EQ_commands",commands_EQ_commands,DB.Thm),
   ("commands_case_def",commands_case_def,DB.Thm),
   ("datatype_commands",datatype_commands,DB.Thm),
   ("commands_distinct",commands_distinct,DB.Thm),
   ("commands_case_cong",commands_case_cong,DB.Thm),
   ("commands_nchotomy",commands_nchotomy,DB.Thm),
   ("commands_Axiom",commands_Axiom,DB.Thm),
   ("commands_induction",commands_induction,DB.Thm),
   ("num2people_people2num",num2people_people2num,DB.Thm),
   ("people2num_num2people",people2num_num2people,DB.Thm),
   ("num2people_11",num2people_11,DB.Thm),
   ("people2num_11",people2num_11,DB.Thm),
   ("num2people_ONTO",num2people_ONTO,DB.Thm),
   ("people2num_ONTO",people2num_ONTO,DB.Thm),
   ("num2people_thm",num2people_thm,DB.Thm),
   ("people2num_thm",people2num_thm,DB.Thm),
   ("people_EQ_people",people_EQ_people,DB.Thm),
   ("people_case_def",people_case_def,DB.Thm),
   ("datatype_people",datatype_people,DB.Thm),
   ("people_distinct",people_distinct,DB.Thm),
   ("people_case_cong",people_case_cong,DB.Thm),
   ("people_nchotomy",people_nchotomy,DB.Thm),
   ("people_Axiom",people_Axiom,DB.Thm),
   ("people_induction",people_induction,DB.Thm),
   ("num2roles_roles2num",num2roles_roles2num,DB.Thm),
   ("roles2num_num2roles",roles2num_num2roles,DB.Thm),
   ("num2roles_11",num2roles_11,DB.Thm),
   ("roles2num_11",roles2num_11,DB.Thm),
   ("num2roles_ONTO",num2roles_ONTO,DB.Thm),
   ("roles2num_ONTO",roles2num_ONTO,DB.Thm),
   ("num2roles_thm",num2roles_thm,DB.Thm),
   ("roles2num_thm",roles2num_thm,DB.Thm),
   ("roles_EQ_roles",roles_EQ_roles,DB.Thm),
   ("roles_case_def",roles_case_def,DB.Thm),
   ("datatype_roles",datatype_roles,DB.Thm),
   ("roles_distinct",roles_distinct,DB.Thm),
   ("roles_case_cong",roles_case_cong,DB.Thm),
   ("roles_nchotomy",roles_nchotomy,DB.Thm),
   ("roles_Axiom",roles_Axiom,DB.Thm),
   ("roles_induction",roles_induction,DB.Thm),
   ("datatype_principals",datatype_principals,DB.Thm),
   ("principals_11",principals_11,DB.Thm),
   ("principals_distinct",principals_distinct,DB.Thm),
   ("principals_case_cong",principals_case_cong,DB.Thm),
   ("principals_nchotomy",principals_nchotomy,DB.Thm),
   ("principals_Axiom",principals_Axiom,DB.Thm),
   ("principals_induction",principals_induction,DB.Thm),
   ("OpRule1_thm",OpRule1_thm,DB.Thm), ("ApRule1_thm",ApRule1_thm,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "simpleConopsExample",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY19.simpleConopsExample,8.commandsNTY19.simpleConopsExample,6.peopleNTY19.simpleConopsExample,5.rolesNTY19.simpleConopsExample,10.principals"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "simpleConopsExample",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO12.commands2num4.%133OO12.num2commands4.%140OO2.go4.%137OO6.launch4.%139OO8.activate4.%132OO13.commands_size4.%135OO13.commands_CASE4.%134OO4.case4.%134OO10.people2num4.%143OO10.num2people4.%141OO5.Alice4.%110OO3.Bob4.%115OO11.people_size4.%145OO11.people_CASE4.%144OO4.case4.%144OO9.roles2num4.%151OO9.num2roles4.%142OO9.Commander4.%118OO8.Operator4.%122OO10.roles_size4.%153OO10.roles_CASE4.%152OO4.case4.%152OO5.Staff4.%125OO4.Role4.%123OO2.Ap4.%111OO15.principals_CASE4.%146OO15.principals_size4.%147OO4.case4.%146"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val simpleConopsExample_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="simpleConopsExample"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val simpleConopsExample_grammars = 
    Portable.## (addtyUDs,addtmUDs) simpleConopsExample_grammars
  val _ = Parse.grammarDB_insert("simpleConopsExample",simpleConopsExample_grammars)
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
           size=SOME(Parse.Term`(simpleConopsExample$commands_size) :simpleConopsExample$commands -> num$num`,
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
          {ax=ORIG people_Axiom,
           case_def=people_case_def,
           case_cong=people_case_cong,
           induction=ORIG people_induction,
           nchotomy=people_nchotomy,
           size=SOME(Parse.Term`(simpleConopsExample$people_size) :simpleConopsExample$people -> num$num`,
                     ORIG people_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME people_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2people_thm people2num_thm NONE tyinfo0
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
          {ax=ORIG roles_Axiom,
           case_def=roles_case_def,
           case_cong=roles_case_cong,
           induction=ORIG roles_induction,
           nchotomy=roles_nchotomy,
           size=SOME(Parse.Term`(simpleConopsExample$roles_size) :simpleConopsExample$roles -> num$num`,
                     ORIG roles_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME roles_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2roles_thm roles2num_thm NONE tyinfo0
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
          {ax=ORIG principals_Axiom,
           case_def=principals_case_def,
           case_cong=principals_case_cong,
           induction=ORIG principals_induction,
           nchotomy=principals_nchotomy,
           size=SOME(Parse.Term`(simpleConopsExample$principals_size) :simpleConopsExample$principals -> num$num`,
                     ORIG principals_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME principals_11,
           distinct=SOME principals_distinct,
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

val _ = if !Globals.print_thy_loads then print "done\n" else ()
val _ = Theory.load_complete "simpleConopsExample"
end

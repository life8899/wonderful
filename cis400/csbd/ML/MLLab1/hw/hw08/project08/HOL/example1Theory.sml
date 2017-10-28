structure example1Theory :> example1Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading example1Theory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open aclDrulesTheory
  in end;
  val _ = Theory.link_parents
          ("example1",
          Arbnum.fromString "1508983382",
          Arbnum.fromString "458698")
          [("aclDrules",
           Arbnum.fromString "1504211226",
           Arbnum.fromString "227964")];
  val _ = Theory.incorporate_types "example1"
       [("staff", 0), ("commands", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("example1", "staff"),
   ID("example1", "commands"), ID("aclfoundation", "Kripke"),
   ID("aclfoundation", "po"), ID("min", "bool"), ID("bool", "!"),
   ID("pair", ","), ID("pair", "prod"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("example1", "Alice"), ID("arithmetic", "BIT1"),
   ID("arithmetic", "BIT2"), ID("example1", "Bob"), ID("bool", "COND"),
   ID("example1", "Carol"), ID("bool", "DATATYPE"), ID("example1", "Dan"),
   ID("arithmetic", "NUMERAL"), ID("aclfoundation", "Name"),
   ID("aclfoundation", "Princ"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("example1", "abort"),
   ID("example1", "commands2num"), ID("example1", "commands_CASE"),
   ID("example1", "commands_size"), ID("aclfoundation", "controls"),
   ID("aclfoundation", "Form"), ID("example1", "go"),
   ID("aclfoundation", "impf"), ID("example1", "launch"),
   ID("aclfoundation", "meet"), ID("example1", "nogo"),
   ID("example1", "num2commands"), ID("example1", "num2staff"),
   ID("aclfoundation", "prop"), ID("aclrules", "sat"),
   ID("aclfoundation", "says"), ID("example1", "staff2num"),
   ID("example1", "staff_CASE"), ID("example1", "staff_size"),
   ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 3, 5], TYOP [0, 3, 6], TYOP [0, 1, 7],
   TYOP [0, 0, 1], TYOP [3], TYOP [0, 0, 10], TYOP [0, 10, 0],
   TYOP [0, 10, 7], TYV "'e", TYV "'d", TYV "'b",
   TYOP [4, 10, 16, 1, 15, 14], TYOP [5, 15], TYOP [5, 14], TYOP [6],
   TYOP [0, 10, 20], TYOP [0, 1, 20], TYOP [0, 10, 21], TYOP [0, 10, 23],
   TYOP [0, 10, 24], TYOP [0, 10, 3], TYOP [0, 1, 3], TYOP [0, 1, 22],
   TYOP [0, 1, 28], TYOP [0, 1, 29], TYOP [0, 3, 20], TYOP [0, 31, 20],
   TYOP [0, 21, 20], TYOP [0, 33, 20], TYOP [0, 22, 20], TYOP [0, 35, 20],
   TYOP [0, 0, 20], TYOP [0, 37, 20], TYOP [9, 18, 19], TYOP [9, 17, 39],
   TYOP [0, 39, 40], TYOP [0, 17, 41], TYOP [0, 19, 39], TYOP [0, 18, 43],
   TYOP [0, 20, 20], TYOP [0, 20, 45], TYOP [0, 0, 37], TYOP [0, 3, 31],
   TYOP [0, 26, 20], TYOP [0, 49, 20], TYOP [0, 12, 20], TYOP [0, 51, 20],
   TYOP [0, 27, 20], TYOP [0, 53, 20], TYOP [0, 2, 20], TYOP [0, 55, 20],
   TYOP [0, 0, 0], TYOP [0, 20, 5], TYOP [26, 1], TYOP [0, 1, 59],
   TYOP [0, 37, 51], TYOP [0, 37, 55], TYOP [35, 10, 1, 15, 14],
   TYOP [0, 63, 63], TYOP [0, 59, 64], TYOP [0, 63, 64], TYOP [0, 59, 59],
   TYOP [0, 59, 67], TYOP [0, 10, 63], TYOP [0, 63, 20], TYOP [0, 40, 70]]
  end
  val _ = Theory.incorporate_consts "example1" tyvector
     [("staff_size", 2), ("staff_CASE", 8), ("staff2num", 2),
      ("num2staff", 9), ("num2commands", 11), ("nogo", 10), ("launch", 10),
      ("go", 10), ("commands_size", 12), ("commands_CASE", 13),
      ("commands2num", 12), ("abort", 10), ("Dan", 1), ("Carol", 1),
      ("Bob", 1), ("Alice", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 17), TMV("M", 10), TMV("M", 1), TMV("M'", 10), TMV("M'", 1),
   TMV("Oi", 18), TMV("Os", 19), TMV("P", 21), TMV("P", 22), TMV("a", 10),
   TMV("a", 1), TMV("a'", 10), TMV("a'", 1), TMV("commands", 25),
   TMV("f", 26), TMV("f", 27), TMV("m", 0), TMV("n", 0), TMV("r", 0),
   TMV("r'", 0), TMV("rep", 12), TMV("rep", 2), TMV("staff", 30),
   TMV("v0", 3), TMV("v0'", 3), TMV("v1", 3), TMV("v1'", 3), TMV("v2", 3),
   TMV("v2'", 3), TMV("v3", 3), TMV("v3'", 3), TMV("x", 10), TMV("x", 1),
   TMV("x0", 3), TMV("x1", 3), TMV("x2", 3), TMV("x3", 3), TMC(7, 32),
   TMC(7, 33), TMC(7, 34), TMC(7, 36), TMC(7, 38), TMC(7, 35), TMC(8, 42),
   TMC(8, 44), TMC(10, 46), TMC(11, 0), TMC(12, 47), TMC(13, 48),
   TMC(13, 46), TMC(13, 23), TMC(13, 47), TMC(13, 28), TMC(14, 46),
   TMC(15, 33), TMC(15, 50), TMC(15, 52), TMC(15, 54), TMC(15, 56),
   TMC(15, 38), TMC(15, 35), TMC(16, 1), TMC(17, 57), TMC(18, 57),
   TMC(19, 1), TMC(20, 58), TMC(21, 1), TMC(22, 45), TMC(23, 1),
   TMC(24, 57), TMC(25, 60), TMC(27, 61), TMC(27, 62), TMC(28, 0),
   TMC(29, 46), TMC(30, 10), TMC(31, 12), TMC(32, 13), TMC(33, 12),
   TMC(34, 65), TMC(36, 10), TMC(37, 66), TMC(38, 10), TMC(39, 68),
   TMC(40, 10), TMC(41, 11), TMC(42, 9), TMC(43, 69), TMC(44, 71),
   TMC(45, 65), TMC(46, 2), TMC(47, 8), TMC(48, 2), TMC(49, 45)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op commands_TY_DEF x = x
    val op commands_TY_DEF =
    ThmBind.DT(((("example1",0),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%56%20%71%17%47$0@%69%63%62%73@4|@$0@|@"])
  fun op commands_BIJ x = x
    val op commands_BIJ =
    ThmBind.DT(((("example1",1),
                [("bool",[116]),("example1",[0])]),["DISK_THM"]),
               [ThmBind.read"%45%38%9%50%85%76$0@3$0@|@2%41%18%49%17%47$0@%69%63%62%73@4|$0@2%51%76%85$0@3$0@2|@2"])




  fun op commands_size_def x = x
    val op commands_size_def =
    ThmBind.DT(((("example1",15),[]),[]),
               [ThmBind.read"%38%31%51%78$0@2%46@|@"])
  fun op commands_CASE x = x
    val op commands_CASE =
    ThmBind.DT(((("example1",16),[]),[]),
               [ThmBind.read"%38%31%37%23%37%25%37%27%37%29%48%77$4@$3@$2@$1@$0@2%16%65%47$0@%69%62%73@4$4@%65%47$0@%69%63%73@4$3@%65%51$0@%69%63%73@4$2@$1@3|%76$4@3|@|@|@|@|@"])
  fun op staff_TY_DEF x = x
    val op staff_TY_DEF =
    ThmBind.DT(((("example1",24),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%58%21%72%17%47$0@%69%63%62%73@4|@$0@|@"])
  fun op staff_BIJ x = x
    val op staff_BIJ =
    ThmBind.DT(((("example1",25),
                [("bool",[116]),("example1",[24])]),["DISK_THM"]),
               [ThmBind.read"%45%42%10%52%86%90$0@3$0@|@2%41%18%49%17%47$0@%69%63%62%73@4|$0@2%51%90%86$0@3$0@2|@2"])




  fun op staff_size_def x = x
    val op staff_size_def =
    ThmBind.DT(((("example1",39),[]),[]),
               [ThmBind.read"%42%32%51%92$0@2%46@|@"])
  fun op staff_CASE x = x
    val op staff_CASE =
    ThmBind.DT(((("example1",40),[]),[]),
               [ThmBind.read"%42%32%37%23%37%25%37%27%37%29%48%91$4@$3@$2@$1@$0@2%16%65%47$0@%69%62%73@4$4@%65%47$0@%69%63%73@4$3@%65%51$0@%69%63%73@4$2@$1@3|%90$4@3|@|@|@|@|@"])
  fun op num2commands_commands2num x = x
    val op num2commands_commands2num =
    ThmBind.DT(((("example1",2),[("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%38%9%50%85%76$0@3$0@|@"])
  fun op commands2num_num2commands x = x
    val op commands2num_num2commands =
    ThmBind.DT(((("example1",3),[("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%41%18%49%47$0@%69%63%62%73@5%51%76%85$0@3$0@2|@"])
  fun op num2commands_11 x = x
    val op num2commands_11 =
    ThmBind.DT(((("example1",4),
                [("bool",[26]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%41%18%41%19%53%47$1@%69%63%62%73@5%53%47$0@%69%63%62%73@5%49%50%85$1@2%85$0@3%51$1@$0@4|@|@"])
  fun op commands2num_11 x = x
    val op commands2num_11 =
    ThmBind.DT(((("example1",5),
                [("bool",[26]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%38%9%38%11%49%51%76$1@2%76$0@3%50$1@$0@2|@|@"])
  fun op num2commands_ONTO x = x
    val op num2commands_ONTO =
    ThmBind.DT(((("example1",6),
                [("bool",[25,62]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%38%9%59%18%45%50$1@%85$0@3%47$0@%69%63%62%73@5|@|@"])
  fun op commands2num_ONTO x = x
    val op commands2num_ONTO =
    ThmBind.DT(((("example1",7),
                [("bool",[26]),("example1",[1])]),["DISK_THM"]),
               [ThmBind.read"%41%18%49%47$0@%69%63%62%73@5%54%9%51$1@%76$0@2|@2|@"])
  fun op num2commands_thm x = x
    val op num2commands_thm =
    ThmBind.DT(((("example1",12),[("example1",[8,9,10,11])]),[]),
               [ThmBind.read"%45%50%85%46@2%80@2%45%50%85%69%62%73@4%84@2%45%50%85%69%63%73@4%82@2%50%85%69%62%62%73@5%75@4"])
  fun op commands2num_thm x = x
    val op commands2num_thm =
    ThmBind.DT(((("example1",13),
                [("bool",[25,53]),("example1",[3,8,9,10,11]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%45%51%76%80@2%46@2%45%51%76%84@2%69%62%73@4%45%51%76%82@2%69%63%73@4%51%76%75@2%69%62%62%73@7"])
  fun op commands_EQ_commands x = x
    val op commands_EQ_commands =
    ThmBind.DT(((("example1",14),
                [("bool",[57]),("example1",[5])]),["DISK_THM"]),
               [ThmBind.read"%38%9%38%11%49%50$1@$0@2%51%76$1@2%76$0@3|@|@"])
  fun op commands_case_def x = x
    val op commands_case_def =
    ThmBind.DT(((("example1",17),
                [("bool",[53,55,63]),("example1",[13,16]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%45%37%23%37%25%37%27%37%29%48%77%80@$3@$2@$1@$0@2$3@|@|@|@|@2%45%37%23%37%25%37%27%37%29%48%77%84@$3@$2@$1@$0@2$2@|@|@|@|@2%45%37%23%37%25%37%27%37%29%48%77%82@$3@$2@$1@$0@2$1@|@|@|@|@2%37%23%37%25%37%27%37%29%48%77%75@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_commands x = x
    val op datatype_commands =
    ThmBind.DT(((("example1",18),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%67%13%80@%84@%82@%75@2"])
  fun op commands_distinct x = x
    val op commands_distinct =
    ThmBind.DT(((("example1",19),
                [("example1",[13,14]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%45%93%50%80@%84@3%45%93%50%80@%82@3%45%93%50%80@%75@3%45%93%50%84@%82@3%45%93%50%84@%75@3%93%50%82@%75@7"])
  fun op commands_case_cong x = x
    val op commands_case_cong =
    ThmBind.DT(((("example1",20),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[6,8,9,10,11,17]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%38%1%38%3%37%23%37%25%37%27%37%29%53%45%50$5@$4@2%45%53%50$4@%80@2%48$3@%24@3%45%53%50$4@%84@2%48$2@%26@3%45%53%50$4@%82@2%48$1@%28@3%53%50$4@%75@2%48$0@%30@7%48%77$5@$3@$2@$1@$0@2%77$4@%24@%26@%28@%30@3|@|@|@|@|@|@"])
  fun op commands_nchotomy x = x
    val op commands_nchotomy =
    ThmBind.DT(((("example1",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[6,8,9,10,11]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%38%9%74%50$0@%80@2%74%50$0@%84@2%74%50$0@%82@2%50$0@%75@4|@"])
  fun op commands_Axiom x = x
    val op commands_Axiom =
    ThmBind.DT(((("example1",22),
                [("bool",[8,14,25,53,55,63]),("example1",[13]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%37%33%37%34%37%35%37%36%55%14%45%48$0%80@2$4@2%45%48$0%84@2$3@2%45%48$0%82@2$2@2%48$0%75@2$1@4|@|@|@|@|@"])
  fun op commands_induction x = x
    val op commands_induction =
    ThmBind.DT(((("example1",23),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[6,8,9,10,11]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%39%7%53%45$0%75@2%45$0%80@2%45$0%82@2$0%84@5%38%9$1$0@|@2|@"])
  fun op num2staff_staff2num x = x
    val op num2staff_staff2num =
    ThmBind.DT(((("example1",26),[("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%42%10%52%86%90$0@3$0@|@"])
  fun op staff2num_num2staff x = x
    val op staff2num_num2staff =
    ThmBind.DT(((("example1",27),[("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%41%18%49%47$0@%69%63%62%73@5%51%90%86$0@3$0@2|@"])
  fun op num2staff_11 x = x
    val op num2staff_11 =
    ThmBind.DT(((("example1",28),
                [("bool",[26]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%41%18%41%19%53%47$1@%69%63%62%73@5%53%47$0@%69%63%62%73@5%49%52%86$1@2%86$0@3%51$1@$0@4|@|@"])
  fun op staff2num_11 x = x
    val op staff2num_11 =
    ThmBind.DT(((("example1",29),
                [("bool",[26]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%42%10%42%12%49%51%90$1@2%90$0@3%52$1@$0@2|@|@"])
  fun op num2staff_ONTO x = x
    val op num2staff_ONTO =
    ThmBind.DT(((("example1",30),
                [("bool",[25,62]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%42%10%59%18%45%52$1@%86$0@3%47$0@%69%63%62%73@5|@|@"])
  fun op staff2num_ONTO x = x
    val op staff2num_ONTO =
    ThmBind.DT(((("example1",31),
                [("bool",[26]),("example1",[25])]),["DISK_THM"]),
               [ThmBind.read"%41%18%49%47$0@%69%63%62%73@5%60%10%51$1@%90$0@2|@2|@"])
  fun op num2staff_thm x = x
    val op num2staff_thm =
    ThmBind.DT(((("example1",36),[("example1",[32,33,34,35])]),[]),
               [ThmBind.read"%45%52%86%46@2%61@2%45%52%86%69%62%73@4%64@2%45%52%86%69%63%73@4%66@2%52%86%69%62%62%73@5%68@4"])
  fun op staff2num_thm x = x
    val op staff2num_thm =
    ThmBind.DT(((("example1",37),
                [("bool",[25,53]),("example1",[27,32,33,34,35]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%45%51%90%61@2%46@2%45%51%90%64@2%69%62%73@4%45%51%90%66@2%69%63%73@4%51%90%68@2%69%62%62%73@7"])
  fun op staff_EQ_staff x = x
    val op staff_EQ_staff =
    ThmBind.DT(((("example1",38),
                [("bool",[57]),("example1",[29])]),["DISK_THM"]),
               [ThmBind.read"%42%10%42%12%49%52$1@$0@2%51%90$1@2%90$0@3|@|@"])
  fun op staff_case_def x = x
    val op staff_case_def =
    ThmBind.DT(((("example1",41),
                [("bool",[53,55,63]),("example1",[37,40]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%45%37%23%37%25%37%27%37%29%48%91%61@$3@$2@$1@$0@2$3@|@|@|@|@2%45%37%23%37%25%37%27%37%29%48%91%64@$3@$2@$1@$0@2$2@|@|@|@|@2%45%37%23%37%25%37%27%37%29%48%91%66@$3@$2@$1@$0@2$1@|@|@|@|@2%37%23%37%25%37%27%37%29%48%91%68@$3@$2@$1@$0@2$0@|@|@|@|@4"])
  fun op datatype_staff x = x
    val op datatype_staff =
    ThmBind.DT(((("example1",42),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%67%22%61@%64@%66@%68@2"])
  fun op staff_distinct x = x
    val op staff_distinct =
    ThmBind.DT(((("example1",43),
                [("example1",[37,38]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%45%93%52%61@%64@3%45%93%52%61@%66@3%45%93%52%61@%68@3%45%93%52%64@%66@3%45%93%52%64@%68@3%93%52%66@%68@7"])
  fun op staff_case_cong x = x
    val op staff_case_cong =
    ThmBind.DT(((("example1",44),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[30,32,33,34,35,41]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%42%2%42%4%37%23%37%25%37%27%37%29%53%45%52$5@$4@2%45%53%52$4@%61@2%48$3@%24@3%45%53%52$4@%64@2%48$2@%26@3%45%53%52$4@%66@2%48$1@%28@3%53%52$4@%68@2%48$0@%30@7%48%91$5@$3@$2@$1@$0@2%91$4@%24@%26@%28@%30@3|@|@|@|@|@|@"])
  fun op staff_nchotomy x = x
    val op staff_nchotomy =
    ThmBind.DT(((("example1",45),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[30,32,33,34,35]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%42%10%74%52$0@%61@2%74%52$0@%64@2%74%52$0@%66@2%52$0@%68@4|@"])
  fun op staff_Axiom x = x
    val op staff_Axiom =
    ThmBind.DT(((("example1",46),
                [("bool",[8,14,25,53,55,63]),("example1",[37]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%37%33%37%34%37%35%37%36%57%15%45%48$0%61@2$4@2%45%48$0%64@2$3@2%45%48$0%66@2$2@2%48$0%68@2$1@4|@|@|@|@|@"])
  fun op staff_induction x = x
    val op staff_induction =
    ThmBind.DT(((("example1",47),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("example1",[30,32,33,34,35]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%40%8%53%45$0%61@2%45$0%64@2%45$0%66@2$0%68@5%42%10$1$0@|@2|@"])
  fun op aclExerciseOne x = x
    val op aclExerciseOne =
    ThmBind.DT(((("example1",48),
                [("aclDrules",[7]),("aclrules",[62]),
                 ("bool",[57])]),["DISK_THM"]),
               [ThmBind.read"%53%88%43%0@%44%5@%6@3%89%70%61@2%87%80@4%53%88%43%0@%44%5@%6@3%89%70%64@2%87%80@4%88%43%0@%44%5@%6@3%89%83%70%61@2%70%64@3%87%80@5"])
  fun op aclExerciseOneA x = x
    val op aclExerciseOneA =
    ThmBind.DT(((("example1",49),
                [("aclDrules",[7]),("aclrules",[62]),
                 ("bool",[25,26,46,47,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%53%88%43%0@%44%5@%6@3%89%70%61@2%87%80@4%53%88%43%0@%44%5@%6@3%89%70%64@2%87%80@4%88%43%0@%44%5@%6@3%89%83%70%61@2%70%64@3%87%80@5"])
  fun op aclExerciseTwoB x = x
    val op aclExerciseTwoB =
    ThmBind.DT(((("example1",50),
                [("aclDrules",[7]),("aclrules",[62]),
                 ("bool",[25,26,46,47,52,53,57,62]),
                 ("sat",[1,3,5,6,7,11,14,15])]),["DISK_THM"]),
               [ThmBind.read"%53%88%43%0@%44%5@%6@3%89%70%61@2%87%80@4%53%88%43%0@%44%5@%6@3%89%70%64@2%87%80@4%88%43%0@%44%5@%6@3%89%83%70%61@2%70%64@3%87%80@5"])
  fun op aclExerciseTwo x = x
    val op aclExerciseTwo =
    ThmBind.DT(((("example1",51),
                [("aclDrules",[3]),("aclrules",[23,24])]),["DISK_THM"]),
               [ThmBind.read"%88%43%0@%44%5@%6@3%89%70%64@2%87%82@3",
                ThmBind.read"%88%43%0@%44%5@%6@3%79%70%61@2%87%80@3",
                ThmBind.read"%88%43%0@%44%5@%6@3%81%87%80@2%87%82@3",
                ThmBind.read"%88%43%0@%44%5@%6@3%89%70%61@2%87%80@3"])
  fun op aclExerciseTwoA x = x
    val op aclExerciseTwoA =
    ThmBind.DT(((("example1",52),
                [("aclDrules",[3]),("aclrules",[23,24]),
                 ("bool",[25,26,46,47,52,53,62,92,93,95]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%53%88%43%0@%44%5@%6@3%89%70%61@2%87%80@4%53%88%43%0@%44%5@%6@3%79%70%61@2%87%80@4%53%88%43%0@%44%5@%6@3%81%87%80@2%87%82@4%88%43%0@%44%5@%6@3%89%70%64@2%87%82@6"])

  val _ = DB.bindl "example1"
  [("commands_TY_DEF",commands_TY_DEF,DB.Def),
   ("commands_BIJ",commands_BIJ,DB.Def),
   ("commands_size_def",commands_size_def,DB.Def),
   ("commands_CASE",commands_CASE,DB.Def),
   ("staff_TY_DEF",staff_TY_DEF,DB.Def), ("staff_BIJ",staff_BIJ,DB.Def),
   ("staff_size_def",staff_size_def,DB.Def),
   ("staff_CASE",staff_CASE,DB.Def),
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
   ("num2staff_staff2num",num2staff_staff2num,DB.Thm),
   ("staff2num_num2staff",staff2num_num2staff,DB.Thm),
   ("num2staff_11",num2staff_11,DB.Thm),
   ("staff2num_11",staff2num_11,DB.Thm),
   ("num2staff_ONTO",num2staff_ONTO,DB.Thm),
   ("staff2num_ONTO",staff2num_ONTO,DB.Thm),
   ("num2staff_thm",num2staff_thm,DB.Thm),
   ("staff2num_thm",staff2num_thm,DB.Thm),
   ("staff_EQ_staff",staff_EQ_staff,DB.Thm),
   ("staff_case_def",staff_case_def,DB.Thm),
   ("datatype_staff",datatype_staff,DB.Thm),
   ("staff_distinct",staff_distinct,DB.Thm),
   ("staff_case_cong",staff_case_cong,DB.Thm),
   ("staff_nchotomy",staff_nchotomy,DB.Thm),
   ("staff_Axiom",staff_Axiom,DB.Thm),
   ("staff_induction",staff_induction,DB.Thm),
   ("aclExerciseOne",aclExerciseOne,DB.Thm),
   ("aclExerciseOneA",aclExerciseOneA,DB.Thm),
   ("aclExerciseTwoB",aclExerciseTwoB,DB.Thm),
   ("aclExerciseTwo",aclExerciseTwo,DB.Thm),
   ("aclExerciseTwoA",aclExerciseTwoA,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "example1",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY8.example1,8.commandsNTY8.example1,5.staff"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "example1",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO12.commands2num3.%76OO12.num2commands3.%85OO2.go3.%80OO4.nogo3.%84OO6.launch3.%82OO5.abort3.%75OO13.commands_size3.%78OO13.commands_CASE3.%77OO4.case3.%77OO9.staff2num3.%90OO9.num2staff3.%86OO5.Alice3.%61OO3.Bob3.%64OO5.Carol3.%66OO3.Dan3.%68OO10.staff_size3.%92OO10.staff_CASE3.%91OO4.case3.%91"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val example1_grammars = merge_grammars ["aclDrules"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="example1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val example1_grammars = 
    Portable.## (addtyUDs,addtmUDs) example1_grammars
  val _ = Parse.grammarDB_insert("example1",example1_grammars)
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
           size=SOME(Parse.Term`(example1$commands_size) :example1$commands -> num$num`,
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
          {ax=ORIG staff_Axiom,
           case_def=staff_case_def,
           case_cong=staff_case_cong,
           induction=ORIG staff_induction,
           nchotomy=staff_nchotomy,
           size=SOME(Parse.Term`(example1$staff_size) :example1$staff -> num$num`,
                     ORIG staff_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME staff_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2staff_thm staff2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "example1"
end

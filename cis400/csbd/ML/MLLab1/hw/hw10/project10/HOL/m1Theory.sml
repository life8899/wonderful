structure m1Theory :> m1Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading m1Theory ... " else ()
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
          ("m1",Arbnum.fromString "1510852533",Arbnum.fromString "256081")
          [("sm",
           Arbnum.fromString "1510852530",
           Arbnum.fromString "364245")];
  val _ = Theory.incorporate_types "m1"
       [("state", 0), ("output", 0), ("command", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("m1", "state"),
   ID("m1", "output"), ID("m1", "command"), ID("min", "bool"),
   ID("bool", "!"), ID("bool", "/\\"), ID("num", "0"), ID("prim_rec", "<"),
   ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("bool", "COND"),
   ID("bool", "DATATYPE"), ID("arithmetic", "NUMERAL"), ID("m1", "S0"),
   ID("m1", "S1"), ID("m1", "S2"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("m1", "command2num"),
   ID("m1", "command_CASE"), ID("m1", "command_size"), ID("m1", "i0"),
   ID("m1", "i1"), ID("m1", "num2command"), ID("m1", "num2output"),
   ID("m1", "num2state"), ID("m1", "o0"), ID("m1", "o1"),
   ID("m1", "output2num"), ID("m1", "output_CASE"),
   ID("m1", "output_size"), ID("m1", "state2num"), ID("m1", "state_CASE"),
   ID("m1", "state_size"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 3, 5], TYOP [0, 1, 6], TYOP [3],
   TYOP [0, 8, 0], TYOP [0, 8, 5], TYOP [0, 0, 1], TYOP [0, 0, 8],
   TYOP [4], TYOP [0, 0, 13], TYOP [0, 13, 0], TYOP [0, 13, 5], TYOP [5],
   TYOP [0, 13, 17], TYOP [0, 8, 17], TYOP [0, 1, 17], TYOP [0, 13, 18],
   TYOP [0, 13, 3], TYOP [0, 8, 3], TYOP [0, 1, 3], TYOP [0, 8, 19],
   TYOP [0, 1, 20], TYOP [0, 1, 26], TYOP [0, 3, 17], TYOP [0, 28, 17],
   TYOP [0, 18, 17], TYOP [0, 30, 17], TYOP [0, 19, 17], TYOP [0, 32, 17],
   TYOP [0, 20, 17], TYOP [0, 34, 17], TYOP [0, 0, 17], TYOP [0, 36, 17],
   TYOP [0, 17, 17], TYOP [0, 17, 38], TYOP [0, 0, 36], TYOP [0, 3, 28],
   TYOP [0, 22, 17], TYOP [0, 42, 17], TYOP [0, 15, 17], TYOP [0, 44, 17],
   TYOP [0, 23, 17], TYOP [0, 46, 17], TYOP [0, 9, 17], TYOP [0, 48, 17],
   TYOP [0, 24, 17], TYOP [0, 50, 17], TYOP [0, 2, 17], TYOP [0, 52, 17],
   TYOP [0, 0, 0], TYOP [0, 17, 5], TYOP [0, 36, 44], TYOP [0, 36, 48],
   TYOP [0, 36, 52]]
  end
  val _ = Theory.incorporate_consts "m1" tyvector
     [("state_size", 2), ("state_CASE", 7), ("state2num", 2),
      ("output_size", 9), ("output_CASE", 10), ("output2num", 9),
      ("o1", 8), ("o0", 8), ("num2state", 11), ("num2output", 12),
      ("num2command", 14), ("i1", 13), ("i0", 13), ("command_size", 15),
      ("command_CASE", 16), ("command2num", 15), ("S2", 1), ("S1", 1),
      ("S0", 1)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 13), TMV("M", 8), TMV("M", 1), TMV("M'", 13), TMV("M'", 8),
   TMV("M'", 1), TMV("P", 18), TMV("P", 19), TMV("P", 20), TMV("a", 13),
   TMV("a", 8), TMV("a", 1), TMV("a'", 13), TMV("a'", 8), TMV("a'", 1),
   TMV("command", 21), TMV("f", 22), TMV("f", 23), TMV("f", 24),
   TMV("m", 0), TMV("n", 0), TMV("output", 25), TMV("r", 0), TMV("r'", 0),
   TMV("rep", 15), TMV("rep", 9), TMV("rep", 2), TMV("state", 27),
   TMV("v0", 3), TMV("v0'", 3), TMV("v1", 3), TMV("v1'", 3), TMV("v2", 3),
   TMV("v2'", 3), TMV("x", 13), TMV("x", 8), TMV("x", 1), TMV("x0", 3),
   TMV("x1", 3), TMV("x2", 3), TMC(6, 29), TMC(6, 30), TMC(6, 31),
   TMC(6, 33), TMC(6, 35), TMC(6, 37), TMC(6, 32), TMC(6, 34), TMC(7, 39),
   TMC(8, 0), TMC(9, 40), TMC(10, 41), TMC(10, 39), TMC(10, 21),
   TMC(10, 40), TMC(10, 25), TMC(10, 26), TMC(11, 39), TMC(12, 30),
   TMC(12, 43), TMC(12, 45), TMC(12, 47), TMC(12, 49), TMC(12, 51),
   TMC(12, 53), TMC(12, 37), TMC(12, 32), TMC(12, 34), TMC(13, 54),
   TMC(14, 54), TMC(15, 55), TMC(16, 38), TMC(17, 54), TMC(18, 1),
   TMC(19, 1), TMC(20, 1), TMC(21, 56), TMC(21, 57), TMC(21, 58),
   TMC(22, 0), TMC(23, 39), TMC(24, 15), TMC(25, 16), TMC(26, 15),
   TMC(27, 13), TMC(28, 13), TMC(29, 14), TMC(30, 12), TMC(31, 11),
   TMC(32, 8), TMC(33, 8), TMC(34, 9), TMC(35, 10), TMC(36, 9), TMC(37, 2),
   TMC(38, 7), TMC(39, 2), TMC(40, 38)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op command_TY_DEF x = x
    val op command_TY_DEF =
    ThmBind.DT(((("m1",0),[("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%60%24%76%20%50$0@%72%69%79@3|@$0@|@"])
  fun op command_BIJ x = x
    val op command_BIJ =
    ThmBind.DT(((("m1",1),[("bool",[116]),("m1",[0])]),["DISK_THM"]),
               [ThmBind.read"%48%41%9%53%86%81$0@3$0@|@2%45%22%52%20%50$0@%72%69%79@3|$0@2%54%81%86$0@3$0@2|@2"])


  fun op command_size_def x = x
    val op command_size_def =
    ThmBind.DT(((("m1",13),[]),[]), [ThmBind.read"%41%34%54%83$0@2%49@|@"])
  fun op command_CASE x = x
    val op command_CASE =
    ThmBind.DT(((("m1",14),[]),[]),
               [ThmBind.read"%41%34%40%28%40%30%51%82$2@$1@$0@2%19%70%54$0@%49@2$2@$1@|%81$2@3|@|@|@"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("m1",23),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%64%26%78%20%50$0@%72%68%68%79@4|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("m1",24),[("bool",[116]),("m1",[23])]),["DISK_THM"]),
               [ThmBind.read"%48%47%11%56%88%94$0@3$0@|@2%45%22%52%20%50$0@%72%68%68%79@4|$0@2%54%94%88$0@3$0@2|@2"])



  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("m1",37),[]),[]), [ThmBind.read"%47%36%54%96$0@2%49@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("m1",38),[]),[]),
               [ThmBind.read"%47%36%40%28%40%30%40%32%51%95$3@$2@$1@$0@2%19%70%50$0@%72%68%79@4$3@%70%54$0@%72%68%79@4$2@$1@2|%94$3@3|@|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("m1",47),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%62%25%77%20%50$0@%72%69%79@3|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("m1",48),[("bool",[116]),("m1",[47])]),["DISK_THM"]),
               [ThmBind.read"%48%46%10%55%87%91$0@3$0@|@2%45%22%52%20%50$0@%72%69%79@3|$0@2%54%91%87$0@3$0@2|@2"])


  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("m1",60),[]),[]), [ThmBind.read"%46%35%54%93$0@2%49@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("m1",61),[]),[]),
               [ThmBind.read"%46%35%40%28%40%30%51%92$2@$1@$0@2%19%70%54$0@%49@2$2@$1@|%91$2@3|@|@|@"])
  fun op num2command_command2num x = x
    val op num2command_command2num =
    ThmBind.DT(((("m1",2),[("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%41%9%53%86%81$0@3$0@|@"])
  fun op command2num_num2command x = x
    val op command2num_num2command =
    ThmBind.DT(((("m1",3),[("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%45%22%52%50$0@%72%69%79@4%54%81%86$0@3$0@2|@"])
  fun op num2command_11 x = x
    val op num2command_11 =
    ThmBind.DT(((("m1",4),[("bool",[26]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%45%22%45%23%57%50$1@%72%69%79@4%57%50$0@%72%69%79@4%52%53%86$1@2%86$0@3%54$1@$0@4|@|@"])
  fun op command2num_11 x = x
    val op command2num_11 =
    ThmBind.DT(((("m1",5),[("bool",[26]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%41%9%41%12%52%54%81$1@2%81$0@3%53$1@$0@2|@|@"])
  fun op num2command_ONTO x = x
    val op num2command_ONTO =
    ThmBind.DT(((("m1",6),[("bool",[25,62]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%41%9%65%22%48%53$1@%86$0@3%50$0@%72%69%79@4|@|@"])
  fun op command2num_ONTO x = x
    val op command2num_ONTO =
    ThmBind.DT(((("m1",7),[("bool",[26]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%45%22%52%50$0@%72%69%79@4%58%9%54$1@%81$0@2|@2|@"])
  fun op num2command_thm x = x
    val op num2command_thm =
    ThmBind.DT(((("m1",10),[("m1",[8,9])]),[]),
               [ThmBind.read"%48%53%86%49@2%84@2%53%86%72%68%79@4%85@2"])
  fun op command2num_thm x = x
    val op command2num_thm =
    ThmBind.DT(((("m1",11),
                [("bool",[25,53]),("m1",[3,8,9]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%48%54%81%84@2%49@2%54%81%85@2%72%68%79@4"])
  fun op command_EQ_command x = x
    val op command_EQ_command =
    ThmBind.DT(((("m1",12),[("bool",[57]),("m1",[5])]),["DISK_THM"]),
               [ThmBind.read"%41%9%41%12%52%53$1@$0@2%54%81$1@2%81$0@3|@|@"])
  fun op command_case_def x = x
    val op command_case_def =
    ThmBind.DT(((("m1",15),
                [("bool",[55,63]),("m1",[11,14]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%48%40%28%40%30%51%82%84@$1@$0@2$1@|@|@2%40%28%40%30%51%82%85@$1@$0@2$0@|@|@2"])
  fun op datatype_command x = x
    val op datatype_command =
    ThmBind.DT(((("m1",16),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%71%15%84@%85@2"])
  fun op command_distinct x = x
    val op command_distinct =
    ThmBind.DT(((("m1",17),
                [("m1",[11,12]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%97%53%84@%85@2"])
  fun op command_case_cong x = x
    val op command_case_cong =
    ThmBind.DT(((("m1",18),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[6,8,9,15]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%41%0%41%3%40%28%40%30%57%48%53$3@$2@2%48%57%53$2@%84@2%51$1@%29@3%57%53$2@%85@2%51$0@%31@5%51%82$3@$1@$0@2%82$2@%29@%31@3|@|@|@|@"])
  fun op command_nchotomy x = x
    val op command_nchotomy =
    ThmBind.DT(((("m1",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[6,8,9]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%41%9%80%53$0@%84@2%53$0@%85@2|@"])
  fun op command_Axiom x = x
    val op command_Axiom =
    ThmBind.DT(((("m1",20),
                [("bool",[8,14,25,55,63]),("m1",[11]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%40%37%40%38%59%16%48%51$0%84@2$2@2%51$0%85@2$1@2|@|@|@"])
  fun op command_induction x = x
    val op command_induction =
    ThmBind.DT(((("m1",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[6,8,9]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%42%6%57%48$0%84@2$0%85@3%41%9$1$0@|@2|@"])
  fun op command_distinct_clauses x = x
    val op command_distinct_clauses =
    ThmBind.DT(((("m1",22),
                [("m1",[11,12]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%97%53%84@%85@2"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("m1",25),[("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%47%11%56%88%94$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("m1",26),[("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%45%22%52%50$0@%72%68%68%79@5%54%94%88$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("m1",27),[("bool",[26]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%45%22%45%23%57%50$1@%72%68%68%79@5%57%50$0@%72%68%68%79@5%52%56%88$1@2%88$0@3%54$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("m1",28),[("bool",[26]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%47%11%47%14%52%54%94$1@2%94$0@3%56$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("m1",29),[("bool",[25,62]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%47%11%65%22%48%56$1@%88$0@3%50$0@%72%68%68%79@5|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("m1",30),[("bool",[26]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%45%22%52%50$0@%72%68%68%79@5%67%11%54$1@%94$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("m1",34),[("m1",[31,32,33])]),[]),
               [ThmBind.read"%48%56%88%49@2%73@2%48%56%88%72%68%79@4%74@2%56%88%72%69%79@4%75@3"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("m1",35),
                [("bool",[25]),("m1",[26,31,32,33]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%48%54%94%73@2%49@2%48%54%94%74@2%72%68%79@4%54%94%75@2%72%69%79@5"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("m1",36),[("bool",[57]),("m1",[28])]),["DISK_THM"]),
               [ThmBind.read"%47%11%47%14%52%56$1@$0@2%54%94$1@2%94$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("m1",39),
                [("bool",[55,63]),("m1",[35,38]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%48%40%28%40%30%40%32%51%95%73@$2@$1@$0@2$2@|@|@|@2%48%40%28%40%30%40%32%51%95%74@$2@$1@$0@2$1@|@|@|@2%40%28%40%30%40%32%51%95%75@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("m1",40),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%71%27%73@%74@%75@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("m1",41),
                [("m1",[35,36]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%48%97%56%73@%74@3%48%97%56%73@%75@3%97%56%74@%75@4"])
  fun op state_case_cong x = x
    val op state_case_cong =
    ThmBind.DT(((("m1",42),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[29,31,32,33,39]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%47%2%47%5%40%28%40%30%40%32%57%48%56$4@$3@2%48%57%56$3@%73@2%51$2@%29@3%48%57%56$3@%74@2%51$1@%31@3%57%56$3@%75@2%51$0@%33@6%51%95$4@$2@$1@$0@2%95$3@%29@%31@%33@3|@|@|@|@|@"])
  fun op state_nchotomy x = x
    val op state_nchotomy =
    ThmBind.DT(((("m1",43),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[29,31,32,33]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%47%11%80%56$0@%73@2%80%56$0@%74@2%56$0@%75@3|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("m1",44),
                [("bool",[8,14,25,53,55,63]),("m1",[35]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%40%37%40%38%40%39%63%18%48%51$0%73@2$3@2%48%51$0%74@2$2@2%51$0%75@2$1@3|@|@|@|@"])
  fun op state_induction x = x
    val op state_induction =
    ThmBind.DT(((("m1",45),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[29,31,32,33]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%44%8%57%48$0%73@2%48$0%74@2$0%75@4%47%11$1$0@|@2|@"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("m1",46),
                [("m1",[35,36]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%48%97%56%73@%74@3%48%97%56%73@%75@3%97%56%74@%75@4"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("m1",49),[("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%46%10%55%87%91$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("m1",50),[("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%45%22%52%50$0@%72%69%79@4%54%91%87$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("m1",51),[("bool",[26]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%45%22%45%23%57%50$1@%72%69%79@4%57%50$0@%72%69%79@4%52%55%87$1@2%87$0@3%54$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("m1",52),[("bool",[26]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%46%10%46%13%52%54%91$1@2%91$0@3%55$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("m1",53),[("bool",[25,62]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%46%10%65%22%48%55$1@%87$0@3%50$0@%72%69%79@4|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("m1",54),[("bool",[26]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%45%22%52%50$0@%72%69%79@4%66%10%54$1@%91$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("m1",57),[("m1",[55,56])]),[]),
               [ThmBind.read"%48%55%87%49@2%89@2%55%87%72%68%79@4%90@2"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("m1",58),
                [("bool",[25,53]),("m1",[50,55,56]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%48%54%91%89@2%49@2%54%91%90@2%72%68%79@4"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("m1",59),[("bool",[57]),("m1",[52])]),["DISK_THM"]),
               [ThmBind.read"%46%10%46%13%52%55$1@$0@2%54%91$1@2%91$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("m1",62),
                [("bool",[55,63]),("m1",[58,61]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%48%40%28%40%30%51%92%89@$1@$0@2$1@|@|@2%40%28%40%30%51%92%90@$1@$0@2$0@|@|@2"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("m1",63),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%71%21%89@%90@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("m1",64),
                [("m1",[58,59]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%97%55%89@%90@2"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("m1",65),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[53,55,56,62]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%46%1%46%4%40%28%40%30%57%48%55$3@$2@2%48%57%55$2@%89@2%51$1@%29@3%57%55$2@%90@2%51$0@%31@5%51%92$3@$1@$0@2%92$2@%29@%31@3|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("m1",66),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[53,55,56]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%46%10%80%55$0@%89@2%55$0@%90@2|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("m1",67),
                [("bool",[8,14,25,55,63]),("m1",[58]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%40%37%40%38%61%17%48%51$0%89@2$2@2%51$0%90@2$1@2|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("m1",68),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[53,55,56]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%43%7%57%48$0%89@2$0%90@3%46%10$1$0@|@2|@"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("m1",69),
                [("m1",[58,59]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%97%55%89@%90@2"])

  val _ = DB.bindl "m1"
  [("command_TY_DEF",command_TY_DEF,DB.Def),
   ("command_BIJ",command_BIJ,DB.Def),
   ("command_size_def",command_size_def,DB.Def),
   ("command_CASE",command_CASE,DB.Def),
   ("state_TY_DEF",state_TY_DEF,DB.Def), ("state_BIJ",state_BIJ,DB.Def),
   ("state_size_def",state_size_def,DB.Def),
   ("state_CASE",state_CASE,DB.Def),
   ("output_TY_DEF",output_TY_DEF,DB.Def),
   ("output_BIJ",output_BIJ,DB.Def),
   ("output_size_def",output_size_def,DB.Def),
   ("output_CASE",output_CASE,DB.Def),
   ("num2command_command2num",num2command_command2num,DB.Thm),
   ("command2num_num2command",command2num_num2command,DB.Thm),
   ("num2command_11",num2command_11,DB.Thm),
   ("command2num_11",command2num_11,DB.Thm),
   ("num2command_ONTO",num2command_ONTO,DB.Thm),
   ("command2num_ONTO",command2num_ONTO,DB.Thm),
   ("num2command_thm",num2command_thm,DB.Thm),
   ("command2num_thm",command2num_thm,DB.Thm),
   ("command_EQ_command",command_EQ_command,DB.Thm),
   ("command_case_def",command_case_def,DB.Thm),
   ("datatype_command",datatype_command,DB.Thm),
   ("command_distinct",command_distinct,DB.Thm),
   ("command_case_cong",command_case_cong,DB.Thm),
   ("command_nchotomy",command_nchotomy,DB.Thm),
   ("command_Axiom",command_Axiom,DB.Thm),
   ("command_induction",command_induction,DB.Thm),
   ("command_distinct_clauses",command_distinct_clauses,DB.Thm),
   ("num2state_state2num",num2state_state2num,DB.Thm),
   ("state2num_num2state",state2num_num2state,DB.Thm),
   ("num2state_11",num2state_11,DB.Thm),
   ("state2num_11",state2num_11,DB.Thm),
   ("num2state_ONTO",num2state_ONTO,DB.Thm),
   ("state2num_ONTO",state2num_ONTO,DB.Thm),
   ("num2state_thm",num2state_thm,DB.Thm),
   ("state2num_thm",state2num_thm,DB.Thm),
   ("state_EQ_state",state_EQ_state,DB.Thm),
   ("state_case_def",state_case_def,DB.Thm),
   ("datatype_state",datatype_state,DB.Thm),
   ("state_distinct",state_distinct,DB.Thm),
   ("state_case_cong",state_case_cong,DB.Thm),
   ("state_nchotomy",state_nchotomy,DB.Thm),
   ("state_Axiom",state_Axiom,DB.Thm),
   ("state_induction",state_induction,DB.Thm),
   ("state_distinct_clauses",state_distinct_clauses,DB.Thm),
   ("num2output_output2num",num2output_output2num,DB.Thm),
   ("output2num_num2output",output2num_num2output,DB.Thm),
   ("num2output_11",num2output_11,DB.Thm),
   ("output2num_11",output2num_11,DB.Thm),
   ("num2output_ONTO",num2output_ONTO,DB.Thm),
   ("output2num_ONTO",output2num_ONTO,DB.Thm),
   ("num2output_thm",num2output_thm,DB.Thm),
   ("output2num_thm",output2num_thm,DB.Thm),
   ("output_EQ_output",output_EQ_output,DB.Thm),
   ("output_case_def",output_case_def,DB.Thm),
   ("datatype_output",datatype_output,DB.Thm),
   ("output_distinct",output_distinct,DB.Thm),
   ("output_case_cong",output_case_cong,DB.Thm),
   ("output_nchotomy",output_nchotomy,DB.Thm),
   ("output_Axiom",output_Axiom,DB.Thm),
   ("output_induction",output_induction,DB.Thm),
   ("output_distinct_clauses",output_distinct_clauses,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "m1",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY2.m1,7.commandNTY2.m1,5.stateNTY2.m1,6.output"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "m1",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO11.command2num3.%81OO11.num2command3.%86OO2.i03.%84OO2.i13.%85OO12.command_size3.%83OO12.command_CASE3.%82OO4.case3.%82OO9.state2num3.%94OO9.num2state3.%88OO2.S03.%73OO2.S13.%74OO2.S23.%75OO10.state_size3.%96OO10.state_CASE3.%95OO4.case3.%95OO10.output2num3.%91OO10.num2output3.%87OO2.o03.%89OO2.o13.%90OO11.output_size3.%93OO11.output_CASE3.%92OO4.case3.%92"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val m1_grammars = merge_grammars ["sm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="m1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val m1_grammars = 
    Portable.## (addtyUDs,addtmUDs) m1_grammars
  val _ = Parse.grammarDB_insert("m1",m1_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG command_Axiom,
           case_def=command_case_def,
           case_cong=command_case_cong,
           induction=ORIG command_induction,
           nchotomy=command_nchotomy,
           size=SOME(Parse.Term`(m1$command_size) :m1$command -> num$num`,
                     ORIG command_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME command_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2command_thm command2num_thm NONE tyinfo0
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
          {ax=ORIG state_Axiom,
           case_def=state_case_def,
           case_cong=state_case_cong,
           induction=ORIG state_induction,
           nchotomy=state_nchotomy,
           size=SOME(Parse.Term`(m1$state_size) :m1$state -> num$num`,
                     ORIG state_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME state_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2state_thm state2num_thm NONE tyinfo0
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
          {ax=ORIG output_Axiom,
           case_def=output_case_def,
           case_cong=output_case_cong,
           induction=ORIG output_induction,
           nchotomy=output_nchotomy,
           size=SOME(Parse.Term`(m1$output_size) :m1$output -> num$num`,
                     ORIG output_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME output_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2output_thm output2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "m1"
end

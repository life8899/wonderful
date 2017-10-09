

(******************************************************************************)
(* Exercise 4.6.3*)
(* Modified by Xiaozhi Li                                                     *)
(* Date: 17 September 2017                                                    *)
(******************************************************************************)



(******************************************************************************)
(* Test functions you will need.                                              *)
(*                                                                            *)
(*                                                                            *)
(******************************************************************************)

fun test463A f1 f2 inList =
let
 val list1 = map f1 inList
 val list2 = map f2 inList
in
 foldr
 (fn (x,y)  => (x andalso y))
 true
 (ListPair.map (fn (x,y) => x = y) (list1,list2))
end;

fun f2P f (x,y) = f x y

fun test463B f1 f2 inList =
let
 val list1 = map (f2P f1) inList
 val list2 = map (f2P f2) inList
in
 foldr
 (fn (x,y)  => (x andalso y))
 true
 (ListPair.map (fn (x,y) => x = y) (list1,list2))
end;
 

(**********)
(* Part A *)
(**********)

(* ========================================================================== *)
(*function A funA1 funA2*)
val funA1 = (fn (x,y,z) => x*y*z);
fun funA2 (x,y,z) = x*y*z;

(* ========================================================================== *)

val testListA = [(1,2,3),(4,5,6),(7,8,9)]

val outputsA = map funA2 testListA

val testResultA = test463A funA1 funA2 testListA

(**********)
(* Part B *)
(**********)

(* ========================================================================== *)
(*  code for funB1 and funB2 here.                                    *)
val funB1 = (fn x=> (fn y => x<y));
fun funB2 x y = x<y;
(* ========================================================================== *)

val testListB = [(0,0),(1,2),(4,3)]

val outputsB = map (f2P funB1) testListB

val testResultB = test463B funB1 funB2 testListB

(**********)
(* Part C *)
(**********)

(* ========================================================================== *)
(*                                                                            *)
(* code for funC1 and funC2 here.                                    *)
val funC1 = (fn s1=> (fn s2 => s1^s2));
fun funC2 s1 s2=s1^s2;
(* ========================================================================== *)

val testListC = [("Hi"," there!"),("Oh ","no!"),("What"," the ...")]

val outputsC = map (f2P funC1) testListC

val testResultC = test463B funC1 funC2 testListC


(**********)
(* Part D *)
(**********)

(* ========================================================================== *)
(*                                                                            *)
(* code for funD1 and funD2 here.                                    *)

val funD1= ( fn list1 => (fn list2 => list1@list2));
fun funD2 list1 list2 = list1@list2;
(* ========================================================================== *)

val testListD1 = [([0,1],[2,3,4]),([],[0,1])]
val testListD2 = [([true,true],[])]

val outputsD1 = map (f2P funD1) testListD1
val outputsD2 = map (f2P funD2) testListD2

val testResultD1 = test463B funD1 funD2 testListD1
val testResultD2 = test463B funD1 funD2 testListD2

(**********)
(* Part E *)
(**********)

(* ========================================================================== *)
(*                                                                            *)
(* code for funE1 and funE2 here.                                    *)

val funE1= (fn (x,y) => if (x>y) then x else y);
fun funE2 (x,y) = if (x>y) then x else y;
(* ========================================================================== *)

val testListE = [(2,1),(5,5),(5,10)]

val sampleResultE = map funE1 testListE

val testResultE = test463A funE1 funE2 testListE

val finalResult= [testResultA,testResultB,testResultC,testResultD1,testResultD2,testResultE]
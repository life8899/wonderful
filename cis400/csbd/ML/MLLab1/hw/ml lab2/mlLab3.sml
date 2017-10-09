(******************************************************************************)
(* mlLab3.sml                                                                 *)
(* Author: <your name>                                                        *)
(* Date: <today's date>                                                       *)
(******************************************************************************)
(fn x => (fn y => 2*x + y))1 2;
(fn y => (fn x => 2*x + y))1 2;
(fn x => (fn y => 2*x + y))1;
(fn y => (fn x => 2*x + y))1;



(******************************************************************************)
(* Naming functions defined using functional abstraction                      *)
(******************************************************************************)
val fun1 = (fn x => (fn y => 2*x + y));
val fun2 = (fn y => (fn x => 2*x + y));
fun1 1 2;
fun2 1 2;
fun1;
fun2;
fun1 1;
fun2 1;
val fun3 = fun1 1;
val fun4 = fun2 1;
fun3 2;
fun4 2;



(******************************************************************************)
(* Defining functions using fun                                               *)
(******************************************************************************)
fun exFun1 x y = 2*x + y;
fun exFun2 y x = 2*x + y;
exFun1 1 2;
exFun2 1 2;


(******************************************************************************)
(* Defining functions using pattern matching                                  *)
(******************************************************************************)
fun pairSquareSum (e1,e2) = (e1 * e1) + (e2 * e2);
pairSquareSum (2,3);

fun pairSquareSumList [] = []
  | pairSquareSumList (x::xs) = (pairSquareSum x) :: pairSquareSumList xs;

pairSquareSumList [(2,3)];
pairSquareSumList [(0,1),(2,3)];



(******************************************************************************)
(* Let expressions                                                            *)
(******************************************************************************)
(******************************************************************************)
(* x, y, and z do not have any values assigned to them.                       *)
(******************************************************************************)
x;
y;
z;
val letExample1 =
let
 val x = 1
 val y = 2
 val z = 3
in
 x + y + z
end;
x;
y;
z;



(******************************************************************************)
(* Definition of squareSumList                                                *)
(******************************************************************************)
fun squareSumList intList =
let
 fun square x = x * x
 fun sumList [] = 0
   | sumList (x::xs) = x + sumList xs
in
 square(sumList intList)
end;

squareSumList [1,2,3];
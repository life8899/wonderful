(******************************************************************************)
(* mlLab4.sml                                                                 *)
(* Author: <your name>                                                        *)
(* Date: <today's date>                                                       *)
(******************************************************************************)
fun sumSquare(x,y) =
let
 fun square x = x * x
in
 (square x) + (square y)
end;

sumSquare (2,3);

fun listPair(x,y) = [x,y];

(******************************************************************************)
(* Type inference allows ML to detect type clashes                            *)
(******************************************************************************)
1 + "1";
1 + [2];

(******************************************************************************)
(* ML and HOL support type variables. Type variables all start with ', for    *)
(* example 'a, 'b, 'this-is-a-type-variable                                   *)
(******************************************************************************)
(x:'a);
(******************************************************************************)
(* A polymorphic function, where its arguments are any type                   *)
(******************************************************************************)
fun mkpair a b = (a,b);

mkpair 1 2;
mkpair "true" false;
mkpair (1,true) ["a","b"];

mkpair:'tvar1 -> 'tvar2 -> 'tvar1 * 'tvar2;
mkpair:'thisIsATypeVar1 -> 'thisIsATypeVar2 -> 'thisIsATypeVar1 * 'thisIsATypeVar2
mkpair:int -> bool -> int * bool;

(******************************************************************************)
(* Type variables must respect the constraints. Below, the typing fails       *)
(* because int is not a string and bool is not an int                         *)
(******************************************************************************)
mkpair:int -> bool -> string -> int

(******************************************************************************)
(* HOL and ML do not assume two different type variables are the same.        *)
(* The following expression shows that 'b is not assumed to be the same as 'c *)
(******************************************************************************)
mkpair:'a -> 'b -> 'a * 'c

(******************************************************************************)
(* Higher-order functions in ML                                               *)
(******************************************************************************)

(******************************************************************************)
(* Using map                                                                  *)
(******************************************************************************)
map;
map (fn x => 2*x) [1,2];
map (fn x => ~x) [1,2];
map (fn (x,y) => x + y) [(1,2),(3,4)];


(******************************************************************************)
(* Using filter                                                               *)
(******************************************************************************)
filter;
filter (fn x => x < 5) [4,6];
filter (fn x => x < 5) [1,2,4,8,16];

(******************************************************************************)
(* Defining doubleAllLessThan                                                 *)
(******************************************************************************)
fun doubleAllLessThan n intList =
let
 fun double x = 2*x
 val helperList = filter (fn x => x < n) intList
in
 map double helperList
end;
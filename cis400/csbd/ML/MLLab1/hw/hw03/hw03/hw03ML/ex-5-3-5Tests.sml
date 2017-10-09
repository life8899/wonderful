(******************************************************************************)
(* Exercise 5.3.5                                                             *)
(* Author: Shiu-Kai Chin*)
(* Modified by Xiaozhi Li*)
(* Date: 20 September 2017                                                    *)
(******************************************************************************)

(* ========================================================================== *)
(*                                                                            *)

fun addPairsGreaterThan n list=
let
fun sumList []=[]
  | sumList ((x,y)::xs)=(x+y):: (sumList xs)
fun helper n (x,y)= (x>n andalso y>n)
in
sumList( filter (helper n) list)
end;
(*                                                                            *)
(* ========================================================================== *)

addPairsGreaterThan 0 [(0,1),(2,0),(2,3),(4,5)];
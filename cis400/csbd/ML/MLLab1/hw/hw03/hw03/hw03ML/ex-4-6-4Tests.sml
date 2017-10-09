(******************************************************************************)
(* Exercise 4.6.4                                                             *)
(* Author: Shiu-Kai Chin*)
(* Date: 19 September 2017*)
(* Modified by Xiaozhi Li *)
(******************************************************************************)

(* ========================================================================== *)
(*                                                                            *)
(*code for listSquares here                                             *)
fun listSquares list=
let
 fun square x= x*x
in
 map square list
end;
(* ========================================================================== *)


val testList = [1,2,3,4,5]

val testResults = listSquares testList
(******************************************************************************)
(* Exercise 5.3.4                                                             *)
(*Modified by Xiaozhi LI                                                      *)
(* Date: 19 September 2017                                                    *)
(******************************************************************************)

(* ========================================================================== *)
(*code of filter                                                              *)
fun Filter p list=
let

(*Helper A change x into a list of bools *)

fun helperA p []=[]
  | helperA p xs=map p xs

fun helperB [] anything=[]
  | helperB anything []=[]
  | helperB (b::bs) (x::xs)=if b then x::(helperB bs xs) else helperB bs xs
in
helperB (helperA p list) list
end;
(* ========================================================================== *)


val testResults = Filter (fn x => x < 5) [1,2,3,4,5,6,7,8,9]

(*specified tests*)
val testResults2 =Filter (fn x=> x<5)[4,6]
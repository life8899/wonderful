(***************************************************)
(* Exercise 3.4.1				   *)
(* Author: Xiaozhi Li				   *)
(* Date: 2017/9/13 				   *)
(***************************************************)

val ListA = [(0, "Alice"), (1,"Bob"), (3, "Carol"),(4,"Dan")];

(* pattern matching: *)
val elB:: ListB= ListA;

val (elc1,elc2)=elB;

val [elc3,elc4,elc5]=ListB;
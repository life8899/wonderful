(***********************************************)
(* Exercise 3.4.2			       *)
(* Author: Xiaozhi Li                          *)
(* Date: <2017/9/13>    		       *)
(***********************************************)

val (x1,x2,x3) = (1,true,"Alice");
val pair1 = (x1,x3);
val list1 = [0,x1,2];
val list2 = [x2,x1];
val list3 = (1 :: [x3]);
(*There are errors in val list2 and val lsit3,  *)
(*the reason is that list2 referenced x2 from (x1,x2,x3) = (1,true,"Alice");*)
(* where x2 is the type bool, and HOL can't put bool and numbers in one list*)
(*list3 contains x3 which is a string type and Hol will not put string type and int in one list; therefore we got typeerrors.*)
(*Exercise 6.2.1****For HOL*)
(*Written By XIaozhi Li ****)
(**17/9/27**)

(**1.**)
(****P(x) sup set Q(y)           *)

``P x ==> Q y``;

(**2.**)
(****P(x) sup set Q(y) with x constrain to HOL type :num **)
(**  and y to Hol type :bool*******************************)

``(P:num -> bool) (x:num)  ==> (Q:bool->bool) (y:bool)``;

(****************)

(**3.**)
``!x y.(P x) ==> (Q y)``;

(* question 4 is at the bottom because it has type error*)

(**5.**)
``(~!x.(P x)\/(Q x))=(?x.(~(P x))/\~(Q x))``;

(**6.**)
``!x.(P x) ==> (M x)``;
(**7.**)
``?x.(P x) ==> (Funny x)``;


(**4.**)
``?(x :num).(R (x :`a))``;

(* this one cannot evaluate, because x was specified as num, then specify to be alpha, hence a type error *)


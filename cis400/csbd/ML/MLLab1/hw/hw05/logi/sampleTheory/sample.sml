(******************************************************************************)
(* All HOL script files are ML modules, so we need to declare the file        *)
(* example1Script as an ML structure.  Do this with the "structure: command   *)
(* as the very first executable line.  The very last executable line is "end" *)
(******************************************************************************)

structure sampleScript = struct

(******************************************************************************)
(* Note: everything after new_theory must be part of a val assignment, when   *)
(* using Holmake.  Otherwise, there will be compilation errors. If you don't  *)
(* want to assign an expression to a name, just use "val _ = <expression>"    *)
(* The "_" indicates that we don't want to have a name.                       *)
(******************************************************************************)
open HolKernel Parse boolLib bossLib;

val _ = new_theory "thisExample";

val _ = save_thm(

val _ =export_theory();

end(* structure *)
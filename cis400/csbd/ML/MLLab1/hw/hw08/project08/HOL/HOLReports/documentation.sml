(************************************************************)
(* documentation.sml: 29 oct. 2017                        *)
(* Author: Xiaozhi Li *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app 
 load 
 ["conops0SolutionTheory","example1Theory","EmitTeX"];

open EmitTeX;


print_theories_as_tex_doc
["conops0Solution","example1"] "proj08Report";

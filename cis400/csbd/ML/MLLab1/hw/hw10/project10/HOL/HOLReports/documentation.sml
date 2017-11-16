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
 ["counterTheory","m1Theory","smTheory","EmitTeX"];

open EmitTeX;


print_theories_as_tex_doc
["counter","m1","sm"] "proj10Report";

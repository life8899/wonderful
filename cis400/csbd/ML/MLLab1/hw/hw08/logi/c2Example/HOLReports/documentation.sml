(************************************************************)
(* documentation.sml: 10 March 2013                         *)
(* Author: Shiu-Kai Chin                                    *)
(* File used to generate documentation for reports in LaTeX *)
(************************************************************)

(* We need to load the HOL theories we want to print out *)
(* as well as the EmitTeX library in HOL, which          *)
(* generates the LaTeX macros for us.                    *)

app 
 load 
 ["conops0SolutionTheory","aclrulesTheory","aclDrulesTheory","EmitTeX"];

load "simpleConopsExampleTheory";
open EmitTeX;


print_theories_as_tex_doc
["conops0Solution","aclrules","aclDrules"] "conops0SolutionReport";

print_theories_as_tex_doc
["simpleConopsExample"] "simpleConopsExampleReport";
open Checker
open Interpreter

(* Permet d'afficher la ligne et la colonne de l'erreur *)
(* /!\ Récupérée du cours *)
let print_position outx lexbuf =
  Lexing.(
    let pos = lexbuf.lex_curr_p in
    Printf.fprintf outx "Ligne %d Col %d"
      pos.pos_lnum
      (pos.pos_cnum - pos.pos_bol + 1)
  )

let _ =
  let lexbuf = Lexing.from_channel stdin in
  try
    let programme = Parser.axiome Lexer.token lexbuf
    in validate programme; interprate programme

  with 
  | Lexer.Error s -> Printf.fprintf stderr "%a: Erreur lors de la lecture par le lexeur %s\n" print_position lexbuf s; exit (-1)
  | Parser.Error -> Printf.fprintf stderr "%a: Erreur de syntaxe\n" print_position lexbuf; exit (-1)
  | Checker.Error s -> Printf.fprintf stderr "Erreur de declaration: %s\n" s; exit (-1)
  | Interpreter.Error s ->  Printf.fprintf stderr "Erreur lors de l'execution: %s\n" s; exit (-1)
;;


open Checker

let _ =
  let lexbuf = Lexing.from_channel stdin in
  try
    let programme = Parser.axiome Lexer.token lexbuf
    in validatate programme; print_string "OK.\n"
  with Lexer.Error s ->
    print_string ("Error : " ^ s); exit 0
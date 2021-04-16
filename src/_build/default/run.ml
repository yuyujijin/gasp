let _ =
  let lexbuf = Lexing.from_channel stdin in
  try
    Parser.programme Lexer.token lexbuf; print_string "OK.\n"
  with Lexer.Error s ->
    print_string ("Error : " ^ s); exit 0
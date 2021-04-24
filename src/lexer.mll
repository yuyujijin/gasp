{
    open Parser
    open Lexing
    exception Error of string

    let next_line lexbuf =
    let pos = lexbuf.lex_curr_p in
    lexbuf.lex_curr_p <-
        { pos with pos_bol = lexbuf.lex_curr_pos;
            pos_lnum = pos.pos_lnum + 1
        }
}
rule token = parse
    | [' ''\t'] { token lexbuf } (* on ignore les espaces vides *)
    | '\n'      { next_line lexbuf; token lexbuf }
    | "Var"     { VAR }
    | ';'       { POINTVIRGULE }
    | "Debut"   { DEBUT }
    | "Fin"     { FIN }
    | "Avance"  { AVANCE }
    | "Tourne"  { TOURNE }
    | "BasPinceau"  { BASPINCEAU }
    | "HautPinceau" { HAUTPINCEAU }
    | "==" { EGALITE }
    | "!=" { DIFFERENT }
    | "<"  { INFERIEUR }
    | ">"  { SUPERIEUR }
    | "<=" { INFERIEUREGAL }
    | ">=" { SUPERIEUREGAL }
    | '('       { LPAREN }
    | ')'       { RPAREN }
    | '='       { EGAL }
    | '+'       { PLUS }
    | '-'       { MOINS }
    | '*'       { MULT }
    | '/'       { DIV }
    | "Si"      { SI }
    | "Alors"   { ALORS }
    | "Sinon"   { SINON }
    | "Tant que" { TANTQUE }
    | "Faire"   { FAIRE }
    | "ChangeCouleur" { CHANGECOULEUR }
    | "ChangeEpaisseur" { CHANGEEPAISSEUR }
    | ['1'-'9']['0'-'9']* | '0' as n    { NOMBRE (int_of_string n) }
    | ['a'-'z']['a'-'z''A'-'Z''0'-'9']* as s  { IDENTIFICATEUR s }
    | eof       { EOF }
    | _         { raise (Error (Lexing.lexeme lexbuf)) }

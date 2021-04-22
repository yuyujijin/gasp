
(* The type of tokens. *)

type token = 
  | VAR
  | TOURNE
  | TANTQUE
  | SINON
  | SI
  | RPAREN
  | POINTVIRGULE
  | PLUS
  | NOMBRE of (int)
  | MULT
  | MOINS
  | LPAREN
  | IDENTIFICATEUR of (string)
  | HAUTPINCEAU
  | FIN
  | FAIRE
  | EOF
  | EGAL
  | DIV
  | DEBUT
  | CHANGEEPAISSEUR
  | CHANGECOULEUR
  | BASPINCEAU
  | AVANCE
  | ALORS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val axiome: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.programme)

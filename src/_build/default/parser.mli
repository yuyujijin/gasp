
(* The type of tokens. *)

type token = 
  | VAR
  | TOURNE
  | SINON
  | SI
  | RPAREN
  | POINTVIRGULE
  | PLUS
  | NOMBRE of (int)
  | MOINS
  | LPAREN
  | IDENTIFICATEUR of (string)
  | HAUTPINCEAU
  | FIN
  | EOF
  | EGAL
  | DEBUT
  | BASPINCEAU
  | AVANCE
  | ALORS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val axiome: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.programme)

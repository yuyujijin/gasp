
(* The type of tokens. *)

type token = 
  | VAR
  | TOURNE
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

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val programme: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)

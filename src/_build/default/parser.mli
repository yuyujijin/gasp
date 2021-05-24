
(* The type of tokens. *)

type token = 
  | VAR
  | TOURNE
  | TANTQUE
  | SUPERIEUREGAL
  | SUPERIEUR
  | SINON
  | SI
  | RPAREN
  | POINTVIRGULE
  | PLUS
  | NOMBRE of (int)
  | MULT
  | MOINS
  | LPAREN
  | INFERIEUREGAL
  | INFERIEUR
  | IDENTIFICATEUR of (string)
  | HAUTPINCEAU
  | FIN
  | FAIRE
  | EOF
  | EGALITE
  | EGAL
  | DIV
  | DIFFERENT
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

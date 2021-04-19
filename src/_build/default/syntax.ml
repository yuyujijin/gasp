type operation = Plus | Moins

type expression =
  | Entier of int
  | Identificateur of string
  | Formule of expression * operation * expression

type instruction = 
  | Avance of expression
  | Tourne of expression
  | BasPinceau
  | HautPinceau
  | Affectation of string * expression
  | BlocInstruction of instruction list

type type_declaration = Int
type declaration = string

type programme = declaration list * instruction

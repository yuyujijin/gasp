type operation = Plus | Moins | Mult | Div 
| Egalite | Different | Inferieur | Superieur | InferieurEgal | SuperieurEgal

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
  | Condition of expression * instruction * instruction
  | TantQue of expression * instruction
  | ChangeCouleur of string
  | ChangeEpaisseur of expression
  | Vide

type type_declaration = Int
type declaration = string

type programme = declaration list * instruction

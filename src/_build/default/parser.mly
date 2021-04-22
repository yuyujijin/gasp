%token VAR POINTVIRGULE DEBUT FIN EOF
%token AVANCE TOURNE BASPINCEAU HAUTPINCEAU
%token <string> IDENTIFICATEUR
%token <int> NOMBRE
%token LPAREN RPAREN
%token EGAL PLUS MOINS
%token SI ALORS SINON
%left PLUS
%left MOINS
%start axiome
%type <programme> axiome
%{ open Syntax %}
%%
axiome:
    pr = programme EOF { pr }
;
programme:
    declarations* instruction  { ($1, $2) }
;
declarations:
        VAR id = IDENTIFICATEUR POINTVIRGULE { id }
;
instruction:
        AVANCE exp = expression       { Avance(exp) }
    |   TOURNE exp = expression       { Tourne(exp) }
    |   BASPINCEAU              { BasPinceau }
    |   HAUTPINCEAU             { HautPinceau }
    |   id = IDENTIFICATEUR EGAL exp = expression { Affectation(id, exp) }
    |   DEBUT bi = blocInstruction FIN   { BlocInstruction(bi) }
    |   SI exp = expression ALORS is1 = instruction SINON is2 = instruction { Condition (exp, is1, is2) }
;
blocInstruction:
        is = instruction POINTVIRGULE bi = blocInstruction    { is :: bi }
    |   { [] }
;
expression:
        id = IDENTIFICATEUR { Identificateur(id) }
    |   n = NOMBRE { Entier(n) }
    |   e1 = expression PLUS e2 = expression { Formule(e1, Plus, e2) }
    |   e1 = expression MOINS e2 = expression { Formule(e1, Moins, e2) }
    |   LPAREN e = expression RPAREN { e }
;   

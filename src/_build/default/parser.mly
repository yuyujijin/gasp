%token VAR POINTVIRGULE DEBUT FIN EOF
%token AVANCE TOURNE BASPINCEAU HAUTPINCEAU
%token <string> IDENTIFICATEUR
%token <int> NOMBRE
%token LPAREN RPAREN
%token EGAL PLUS MOINS MULT DIV
%token SI ALORS SINON
%token TANTQUE FAIRE
%token CHANGECOULEUR CHANGEEPAISSEUR
%token EGALITE DIFFERENT INFERIEUR SUPERIEUR INFERIEUREGAL SUPERIEUREGAL
%left PLUS
%left MOINS
%left MULT
%left DIV
%left EGALITE DIFFERENT INFERIEUR SUPERIEUR INFERIEUREGAL SUPERIEUREGAL
%right ALORS SINON
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
    |   SI exp = expression ALORS is = instruction { Condition(exp, is, Vide) }
    |   TANTQUE exp = expression FAIRE is = instruction { TantQue(exp,is) }
    |   CHANGECOULEUR c = IDENTIFICATEUR { ChangeCouleur(c) }
    |   CHANGEEPAISSEUR exp = expression { ChangeEpaisseur(exp) }
      ;
        
blocInstruction:
        is = instruction POINTVIRGULE bi = blocInstruction    { is :: bi }
    |   { [] }
;
expression:
        id = IDENTIFICATEUR { Identificateur(id) }
    |   n = NOMBRE { Entier(n) }
    |   MOINS e = expression { Formule(Entier(0), Moins, e)  }
    |   e1 = expression PLUS e2 = expression { Formule(e1, Plus, e2) }
    |   e1 = expression MOINS e2 = expression { Formule(e1, Moins, e2) }
    |   e1 = expression MULT e2 = expression { Formule(e1, Mult, e2) }
    |   e1 = expression DIV e2 = expression { Formule(e1, Div, e2) }
    |   e1 = expression EGALITE e2 = expression { Formule(e1, Egalite, e2) }
    |   e1 = expression DIFFERENT e2 = expression { Formule(e1, Different, e2) }
    |   e1 = expression INFERIEUR e2 = expression { Formule(e1, Inferieur, e2) }
    |   e1 = expression SUPERIEUR e2 = expression { Formule(e1, Superieur, e2) }
    |   e1 = expression INFERIEUREGAL e2 = expression { Formule(e1, InferieurEgal, e2) }
    |   e1 = expression SUPERIEUREGAL e2 = expression { Formule(e1, SuperieurEgal, e2) }
    |   LPAREN e = expression RPAREN { e }
;

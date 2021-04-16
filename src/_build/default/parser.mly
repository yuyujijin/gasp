%token VAR POINTVIRGULE DEBUT FIN
%token AVANCE TOURNE BASPINCEAU HAUTPINCEAU
%token <string> IDENTIFICATEUR
%token <int> NOMBRE
%token LPAREN RPAREN
%token EGAL PLUS MOINS EOF
%start programme
%type <unit> programme
%%
programme:
    declarations instruction EOF   {}
;
declarations:
        VAR IDENTIFICATEUR POINTVIRGULE {}
    |                                   {}
;
instruction:
        AVANCE expression       {}
    |   TOURNE expression       {}
    |   BASPINCEAU              {}
    |   HAUTPINCEAU             {}
    |   IDENTIFICATEUR EGAL expression {}
    |   DEBUT blocInstruction FIN   {}
;
blocInstruction:
        instruction POINTVIRGULE blocInstruction    {}
    |   {}
;
expression:
        NOMBRE expressionSuite  {}
    |   IDENTIFICATEUR expressionSuite {}
    |   LPAREN expression RPAREN expressionSuite {}
;
expressionSuite:
        PLUS expression {}
    |   MOINS expression    {}
    |   {}
;
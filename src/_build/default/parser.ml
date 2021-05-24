
module MenhirBasics = struct
  
  exception Error
  
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
    | NOMBRE of (
# 4 "parser.mly"
       (int)
# 21 "parser.ml"
  )
    | MULT
    | MOINS
    | LPAREN
    | INFERIEUREGAL
    | INFERIEUR
    | IDENTIFICATEUR of (
# 3 "parser.mly"
       (string)
# 31 "parser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState64
  | MenhirState60
  | MenhirState55
  | MenhirState52
  | MenhirState47
  | MenhirState46
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState38
  | MenhirState36
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState26
  | MenhirState24
  | MenhirState22
  | MenhirState20
  | MenhirState18
  | MenhirState15
  | MenhirState13
  | MenhirState10
  | MenhirState9
  | MenhirState7
  | MenhirState6
  | MenhirState0

# 19 "parser.mly"
   open Syntax 
# 92 "parser.ml"

let rec _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13

and _menhir_run15 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run24 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_goto_blocInstruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.instruction list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (is : (Syntax.instruction))), _, (bi : (Syntax.instruction list))) = _menhir_stack in
        let _v : (Syntax.instruction list) = 
# 45 "parser.mly"
                                                              ( is :: bi )
# 285 "parser.ml"
         in
        _menhir_goto_blocInstruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (bi : (Syntax.instruction list))) = _menhir_stack in
            let _v : (Syntax.instruction) = 
# 36 "parser.mly"
                                         ( BlocInstruction(bi) )
# 301 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 62 "parser.mly"
                                     ( e )
# 346 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 61 "parser.mly"
                                                      ( Formule(e1, SuperieurEgal, e2) )
# 366 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 59 "parser.mly"
                                                  ( Formule(e1, Superieur, e2) )
# 376 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | EOF | FAIRE | PLUS | POINTVIRGULE | RPAREN | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 52 "parser.mly"
                                             ( Formule(e1, Plus, e2) )
# 408 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | EOF | FAIRE | MOINS | MULT | PLUS | POINTVIRGULE | RPAREN | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 54 "parser.mly"
                                             ( Formule(e1, Mult, e2) )
# 442 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 60 "parser.mly"
                                                      ( Formule(e1, InferieurEgal, e2) )
# 458 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 58 "parser.mly"
                                                  ( Formule(e1, Inferieur, e2) )
# 468 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 56 "parser.mly"
                                                ( Formule(e1, Egalite, e2) )
# 478 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | DIV | EOF | FAIRE | MOINS | MULT | PLUS | POINTVIRGULE | RPAREN | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 55 "parser.mly"
                                            ( Formule(e1, Div, e2) )
# 504 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _v : (Syntax.expression) = 
# 57 "parser.mly"
                                                  ( Formule(e1, Different, e2) )
# 520 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | EOF | FAIRE | MOINS | PLUS | POINTVIRGULE | RPAREN | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 53 "parser.mly"
                                              ( Formule(e1, Moins, e2) )
# 550 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | EOF | FAIRE | MOINS | PLUS | POINTVIRGULE | RPAREN | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.expression) = 
# 51 "parser.mly"
                             ( Formule(Entier(0), Moins, e)  )
# 586 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | EOF | POINTVIRGULE | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.instruction) = 
# 32 "parser.mly"
                                      ( Tourne(exp) )
# 626 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | FAIRE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | BASPINCEAU ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | CHANGECOULEUR ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | CHANGEEPAISSEUR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | DEBUT ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | HAUTPINCEAU ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | IDENTIFICATEUR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
            | SI ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | TANTQUE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | TOURNE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ALORS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | BASPINCEAU ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CHANGECOULEUR ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | CHANGEEPAISSEUR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | DEBUT ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | HAUTPINCEAU ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | IDENTIFICATEUR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
            | SI ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TANTQUE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | TOURNE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState41
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41)
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | EOF | POINTVIRGULE | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 3 "parser.mly"
       (string)
# 785 "parser.ml"
            ))), _, (exp : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.instruction) = 
# 35 "parser.mly"
                                                  ( Affectation(id, exp) )
# 790 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | EOF | POINTVIRGULE | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.instruction) = 
# 41 "parser.mly"
                                         ( ChangeEpaisseur(exp) )
# 830 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIFFERENT ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | EGALITE ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUR ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack)
        | INFERIEUREGAL ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUR ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | SUPERIEUREGAL ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | EOF | POINTVIRGULE | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))) = _menhir_stack in
            let _v : (Syntax.instruction) = 
# 31 "parser.mly"
                                      ( Avance(exp) )
# 870 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_reduce3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Syntax.instruction list) = 
# 46 "parser.mly"
        ( [] )
# 887 "parser.ml"
     in
    _menhir_goto_blocInstruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.instruction) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POINTVIRGULE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | BASPINCEAU ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | CHANGECOULEUR ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | CHANGEEPAISSEUR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | DEBUT ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | HAUTPINCEAU ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | IDENTIFICATEUR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | SI ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TANTQUE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TOURNE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | FIN ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | BASPINCEAU ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | CHANGECOULEUR ->
                _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | CHANGEEPAISSEUR ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | DEBUT ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | HAUTPINCEAU ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | IDENTIFICATEUR _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
            | SI ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | TANTQUE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | TOURNE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60)
        | EOF | POINTVIRGULE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))), _, (is : (Syntax.instruction))) = _menhir_stack in
            let _v : (Syntax.instruction) = 
# 38 "parser.mly"
                                                   ( Condition(exp, is, Vide) )
# 977 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))), _, (is1 : (Syntax.instruction))), _, (is2 : (Syntax.instruction))) = _menhir_stack in
        let _v : (Syntax.instruction) = 
# 37 "parser.mly"
                                                                            ( Condition (exp, is1, is2) )
# 993 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))), _, (is : (Syntax.instruction))) = _menhir_stack in
        let _v : (Syntax.instruction) = 
# 39 "parser.mly"
                                                        ( TantQue(exp,is) )
# 1003 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Syntax.instruction))) = _menhir_stack in
        let _v : (Syntax.programme) = 
# 25 "parser.mly"
                               ( (_1, _2) )
# 1013 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, (pr : (Syntax.programme))) = _menhir_stack in
            let _v : (Syntax.programme) = 
# 22 "parser.mly"
                       ( pr )
# 1027 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Syntax.programme)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (int)
# 1045 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 4 "parser.mly"
       (int)
# 1053 "parser.ml"
    )) = _v in
    let _v : (Syntax.expression) = 
# 50 "parser.mly"
                   ( Entier(n) )
# 1058 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (string)
# 1103 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (id : (
# 3 "parser.mly"
       (string)
# 1111 "parser.ml"
    )) = _v in
    let _v : (Syntax.expression) = 
# 49 "parser.mly"
                            ( Identificateur(id) )
# 1116 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (string)
# 1185 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EGAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFICATEUR _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | LPAREN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | MOINS ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43
        | NOMBRE _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.instruction) = 
# 34 "parser.mly"
                                ( HautPinceau )
# 1223 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AVANCE ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | BASPINCEAU ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | CHANGECOULEUR ->
        _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | CHANGEEPAISSEUR ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | DEBUT ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | HAUTPINCEAU ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IDENTIFICATEUR _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | SI ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TANTQUE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TOURNE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FIN ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run49 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (c : (
# 3 "parser.mly"
       (string)
# 1292 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Syntax.instruction) = 
# 40 "parser.mly"
                                         ( ChangeCouleur(c) )
# 1298 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Syntax.instruction) = 
# 33 "parser.mly"
                                ( BasPinceau )
# 1315 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LPAREN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | MOINS ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_goto_list_declarations_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AVANCE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | BASPINCEAU ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | CHANGECOULEUR ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | CHANGEEPAISSEUR ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DEBUT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | HAUTPINCEAU ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | IDENTIFICATEUR _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | SI ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | TANTQUE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | TOURNE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string))), _, (xs : (string list))) = _menhir_stack in
        let _v : (string list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1378 "parser.ml"
         in
        _menhir_goto_list_declarations_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState64 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState41 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (string list) = 
# 211 "<standard.mly>"
    ( [] )
# 1496 "parser.ml"
     in
    _menhir_goto_list_declarations_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | POINTVIRGULE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), (id : (
# 3 "parser.mly"
       (string)
# 1519 "parser.ml"
            ))) = _menhir_stack in
            let _v : (string) = 
# 28 "parser.mly"
                                             ( id )
# 1524 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VAR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | AVANCE | BASPINCEAU | CHANGECOULEUR | CHANGEEPAISSEUR | DEBUT | HAUTPINCEAU | IDENTIFICATEUR _ | SI | TANTQUE | TOURNE ->
                _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and axiome : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.programme) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | AVANCE | BASPINCEAU | CHANGECOULEUR | CHANGEEPAISSEUR | DEBUT | HAUTPINCEAU | IDENTIFICATEUR _ | SI | TANTQUE | TOURNE ->
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 1588 "parser.ml"

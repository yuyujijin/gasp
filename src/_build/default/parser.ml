
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR
    | TOURNE
    | SINON
    | SI
    | RPAREN
    | POINTVIRGULE
    | PLUS
    | NOMBRE of (
# 4 "parser.mly"
       (int)
# 18 "parser.ml"
  )
    | MOINS
    | LPAREN
    | IDENTIFICATEUR of (
# 3 "parser.mly"
       (string)
# 25 "parser.ml"
  )
    | HAUTPINCEAU
    | FIN
    | EOF
    | EGAL
    | DEBUT
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
  | MenhirState38
  | MenhirState35
  | MenhirState30
  | MenhirState27
  | MenhirState25
  | MenhirState22
  | MenhirState20
  | MenhirState18
  | MenhirState15
  | MenhirState13
  | MenhirState9
  | MenhirState7
  | MenhirState6
  | MenhirState0

# 12 "parser.mly"
   open Syntax 
# 68 "parser.ml"

let rec _menhir_run13 : _menhir_env -> 'ttv_tail * _menhir_state * (Syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
    | LPAREN ->
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
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_goto_blocInstruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.instruction list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (is : (Syntax.instruction))), _, (bi : (Syntax.instruction list))) = _menhir_stack in
        let _2 = () in
        let _v : (Syntax.instruction list) = 
# 33 "parser.mly"
                                                              ( is :: bi )
# 114 "parser.ml"
         in
        _menhir_goto_blocInstruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (bi : (Syntax.instruction list))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Syntax.instruction) = 
# 29 "parser.mly"
                                         ( BlocInstruction(bi) )
# 132 "parser.ml"
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
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MOINS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Syntax.expression))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Syntax.expression) = 
# 41 "parser.mly"
                                     ( e )
# 167 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MOINS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | EOF | PLUS | POINTVIRGULE | RPAREN | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
            let _2 = () in
            let _v : (Syntax.expression) = 
# 39 "parser.mly"
                                             ( Formule(e1, Plus, e2) )
# 190 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Syntax.expression))), _, (e2 : (Syntax.expression))) = _menhir_stack in
        let _2 = () in
        let _v : (Syntax.expression) = 
# 40 "parser.mly"
                                              ( Formule(e1, Moins, e2) )
# 207 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MOINS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | EOF | POINTVIRGULE | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))) = _menhir_stack in
            let _1 = () in
            let _v : (Syntax.instruction) = 
# 25 "parser.mly"
                                      ( Tourne(exp) )
# 226 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState18 ->
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
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | BASPINCEAU ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | DEBUT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | HAUTPINCEAU ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | IDENTIFICATEUR _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
            | SI ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | TOURNE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
        | MOINS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MOINS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | EOF | POINTVIRGULE | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 3 "parser.mly"
       (string)
# 287 "parser.ml"
            ))), _, (exp : (Syntax.expression))) = _menhir_stack in
            let _2 = () in
            let _v : (Syntax.instruction) = 
# 28 "parser.mly"
                                                  ( Affectation(id, exp) )
# 293 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MOINS ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack)
        | EOF | POINTVIRGULE | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))) = _menhir_stack in
            let _1 = () in
            let _v : (Syntax.instruction) = 
# 24 "parser.mly"
                                      ( Avance(exp) )
# 318 "parser.ml"
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
# 34 "parser.mly"
        ( [] )
# 335 "parser.ml"
     in
    _menhir_goto_blocInstruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (Syntax.instruction) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 | MenhirState25 ->
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
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | BASPINCEAU ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | DEBUT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | HAUTPINCEAU ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | IDENTIFICATEUR _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | SI ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | TOURNE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | FIN ->
                _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
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
        | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | BASPINCEAU ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | DEBUT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | HAUTPINCEAU ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | IDENTIFICATEUR _v ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
            | SI ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | TOURNE ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (exp : (Syntax.expression))), _, (is1 : (Syntax.instruction))), _, (is2 : (Syntax.instruction))) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : (Syntax.instruction) = 
# 30 "parser.mly"
                                                                            ( Condition (exp, is1, is2) )
# 423 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (string list))), _, (_2 : (Syntax.instruction))) = _menhir_stack in
        let _v : (Syntax.programme) = 
# 18 "parser.mly"
                               ( (_1, _2) )
# 433 "parser.ml"
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
            let _2 = () in
            let _v : (Syntax.programme) = 
# 15 "parser.mly"
                       ( pr )
# 448 "parser.ml"
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
# 466 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 4 "parser.mly"
       (int)
# 474 "parser.ml"
    )) = _v in
    let _v : (Syntax.expression) = 
# 38 "parser.mly"
                   ( Entier(n) )
# 479 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (string)
# 503 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (id : (
# 3 "parser.mly"
       (string)
# 511 "parser.ml"
    )) = _v in
    let _v : (Syntax.expression) = 
# 37 "parser.mly"
                            ( Identificateur(id) )
# 516 "parser.ml"
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
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (string)
# 562 "parser.ml"
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
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | LPAREN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22
        | NOMBRE _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Syntax.instruction) = 
# 27 "parser.mly"
                                ( HautPinceau )
# 599 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AVANCE ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | BASPINCEAU ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | DEBUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | HAUTPINCEAU ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | IDENTIFICATEUR _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | SI ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | TOURNE ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | FIN ->
        _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Syntax.instruction) = 
# 26 "parser.mly"
                                ( BasPinceau )
# 638 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
    | NOMBRE _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27

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
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | BASPINCEAU ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | DEBUT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | HAUTPINCEAU ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | IDENTIFICATEUR _v ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | SI ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | TOURNE ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6)
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string))), _, (xs : (string list))) = _menhir_stack in
        let _v : (string list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 693 "parser.ml"
         in
        _menhir_goto_list_declarations_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
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
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState13 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
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

and _menhir_reduce17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (string list) = 
# 211 "<standard.mly>"
    ( [] )
# 763 "parser.ml"
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
# 786 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (string) = 
# 21 "parser.mly"
                                             ( id )
# 793 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VAR ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | AVANCE | BASPINCEAU | DEBUT | HAUTPINCEAU | IDENTIFICATEUR _ | SI | TOURNE ->
                _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState38
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38)
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
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | AVANCE | BASPINCEAU | DEBUT | HAUTPINCEAU | IDENTIFICATEUR _ | SI | TOURNE ->
        _menhir_reduce17 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 858 "parser.ml"

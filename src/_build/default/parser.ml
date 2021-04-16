
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR
    | TOURNE
    | RPAREN
    | POINTVIRGULE
    | PLUS
    | NOMBRE of (
# 4 "parser.mly"
       (int)
# 16 "parser.ml"
  )
    | MOINS
    | LPAREN
    | IDENTIFICATEUR of (
# 3 "parser.mly"
       (string)
# 23 "parser.ml"
  )
    | HAUTPINCEAU
    | FIN
    | EOF
    | EGAL
    | DEBUT
    | BASPINCEAU
    | AVANCE
  
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
  | MenhirState29
  | MenhirState26
  | MenhirState24
  | MenhirState21
  | MenhirState15
  | MenhirState11
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState7
  | MenhirState6
  | MenhirState5

let rec _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 36 "parser.mly"
                            ()
# 73 "parser.ml"
         in
        _menhir_goto_expressionSuite _menhir_env _menhir_stack _menhir_s _v
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | MOINS ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | PLUS ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | EOF | POINTVIRGULE | RPAREN ->
                _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState15
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 35 "parser.mly"
                        ()
# 110 "parser.ml"
         in
        _menhir_goto_expressionSuite _menhir_env _menhir_stack _menhir_s _v
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 19 "parser.mly"
                                ()
# 121 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (
# 3 "parser.mly"
       (string)
# 130 "parser.ml"
        ))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 22 "parser.mly"
                                       ()
# 136 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _1 = () in
        let _v : (unit) = 
# 18 "parser.mly"
                                ()
# 147 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_expressionSuite : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 3 "parser.mly"
       (string)
# 163 "parser.ml"
        ))) = _menhir_stack in
        let _v : (unit) = 
# 31 "parser.mly"
                                       ()
# 168 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_4 : (unit)) = _v in
        let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (unit) = 
# 32 "parser.mly"
                                                 ()
# 181 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_2 : (unit)) = _v in
        let (_menhir_stack, _menhir_s, (_1 : (
# 4 "parser.mly"
       (int)
# 191 "parser.ml"
        ))) = _menhir_stack in
        let _v : (unit) = 
# 30 "parser.mly"
                                ()
# 196 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_blocInstruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (_1 : (unit))), _, (_3 : (unit))) = _menhir_stack in
        let _2 = () in
        let _v : (unit) = 
# 26 "parser.mly"
                                                    ()
# 214 "parser.ml"
         in
        _menhir_goto_blocInstruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (unit))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (unit) = 
# 23 "parser.mly"
                                    ()
# 232 "parser.ml"
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

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 37 "parser.mly"
        ()
# 254 "parser.ml"
     in
    _menhir_goto_expressionSuite _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NOMBRE _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NOMBRE _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_reduce2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (unit) = 
# 27 "parser.mly"
        ()
# 297 "parser.ml"
     in
    _menhir_goto_blocInstruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 | MenhirState24 ->
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
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | BASPINCEAU ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | DEBUT ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | HAUTPINCEAU ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | IDENTIFICATEUR _v ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
            | TOURNE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | FIN ->
                _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack) MenhirState29
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, (_1 : (unit))), _, (_2 : (unit))) = _menhir_stack in
            let _3 = () in
            let _v : (unit) = 
# 11 "parser.mly"
                                   ()
# 352 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (unit)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 4 "parser.mly"
       (int)
# 370 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MOINS ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | PLUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | EOF | POINTVIRGULE | RPAREN ->
        _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState7
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7

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
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (string)
# 408 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | MOINS ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | PLUS ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | EOF | POINTVIRGULE | RPAREN ->
        _menhir_reduce10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState29 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState24 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState15 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState11 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState6 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NOMBRE _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 3 "parser.mly"
       (string)
# 497 "parser.ml"
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
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | LPAREN ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NOMBRE _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 21 "parser.mly"
                                ()
# 534 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AVANCE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | BASPINCEAU ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | DEBUT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | HAUTPINCEAU ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | IDENTIFICATEUR _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
    | TOURNE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | FIN ->
        _menhir_reduce2 _menhir_env (Obj.magic _menhir_stack) MenhirState24
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (unit) = 
# 20 "parser.mly"
                                ()
# 571 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFICATEUR _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | LPAREN ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState26
    | NOMBRE _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26

and _menhir_goto_declarations : _menhir_env -> 'ttv_tail -> (unit) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AVANCE ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | BASPINCEAU ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | DEBUT ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | HAUTPINCEAU ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IDENTIFICATEUR _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | TOURNE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

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

and programme : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit) =
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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
                let (_menhir_stack, (_2 : (
# 3 "parser.mly"
       (string)
# 659 "parser.ml"
                ))) = _menhir_stack in
                let _3 = () in
                let _1 = () in
                let _v : (unit) = 
# 14 "parser.mly"
                                        ()
# 666 "parser.ml"
                 in
                _menhir_goto_declarations _menhir_env _menhir_stack _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                raise _eRR)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            raise _eRR)
    | AVANCE | BASPINCEAU | DEBUT | HAUTPINCEAU | IDENTIFICATEUR _ | TOURNE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _v : (unit) = 
# 15 "parser.mly"
                                        ()
# 684 "parser.ml"
         in
        _menhir_goto_declarations _menhir_env _menhir_stack _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR)

# 269 "<standard.mly>"
  

# 696 "parser.ml"

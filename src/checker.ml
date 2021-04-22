open Syntax

exception Error of string

(* verifie que chaque variable est déclarée une unique fois *)
let check_declared_once declarations = 
  let rec aux declarations h =
    match declarations with
    | [] -> ()
    | head :: tail -> if List.mem head h 
                      then raise(Error ("Variable déclarée deux fois"))
                      else aux tail (head :: h)
    in
  aux declarations []
;;

(* verifie qu'une expression utilise seulement des variables effectivement déclarée *)
let rec check_expression declarations expression = 
  match expression with
  | Entier _ -> ()
  | Identificateur s -> if not (List.mem s declarations)
                        then raise(Error("Variable utilisée non déclarée"))
                        else ()
  | Formule (e1, _, e2) ->  check_expression declarations e1;
                            check_expression declarations e2

(* verifie que chaque variable utilisée est effectivement déclarée *)
let rec check_declared_used declarations instruction =
  match instruction with
  | Avance e | Tourne e | ChangeEpaisseur e -> check_expression declarations e
  | Affectation (s,e) ->  if not (List.mem s declarations)
                          then raise(Error("Variable utilisée non déclarée"))
                          else check_expression declarations e
  | BlocInstruction il -> List.iter 
                          (function instruction -> 
                          check_declared_used declarations instruction) 
                          il
  | Condition (e, is1, is2) -> check_expression declarations e;
                               check_declared_used declarations is1;
                               check_declared_used declarations is2
  | TantQue (e, is) -> check_expression declarations e;
                       check_declared_used declarations is
  | _ -> ()
;;

(* vérifie la validitée du programme *)
let validate (declarations, instruction) =
  check_declared_once declarations;
  check_declared_used declarations instruction
;;

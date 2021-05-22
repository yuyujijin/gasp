open Syntax
open Turtle

exception Error of string

(* créer un environnement de base avec toutes les variables avec comme valeur par défaut 0 *)
let rec create_env declarations =
  match declarations with
  | [] -> []
  | h :: t -> (h, 0) :: create_env t


let get_operation operation =
  let bool_int op =
    fun x y -> if op x y then 1 else 0
  in
  match operation with
  | Plus -> (+)
  | Moins -> (-)
  | Mult -> ( * )
  | Div -> (/)
  | Egalite -> bool_int (=)
  | Different -> bool_int (!=)
  | Inferieur -> bool_int (<)
  | Superieur -> bool_int (>)
  | InferieurEgal -> bool_int (<=)
  | SuperieurEgal -> bool_int (>=)

(* Evalue une expression, compte donné des variables *)
let rec eval vars expr = 
  match expr with
  | Entier i -> i
  | Identificateur s -> let (_, v) = 
                        List.find (fun (i, _) -> i = s) vars
                        in v
  | Formule (e1, o, e2) -> get_operation o (eval vars e1) (
                               if o = Div then
                                 let deno = (eval vars e2) in
                                 if deno = 0
                                 then raise(Error("Division par zéro"))
                                 else deno
                               else (eval vars e2)
                             )
             
(* Execute les instructions une a une *)
let rec exec vars instruction turtle =
  match instruction with
  | Avance e -> let v = eval vars e in
                (execute turtle (Forward v), vars)
  | Tourne e -> let v = eval vars e in
                (execute turtle (Turn v), vars)
  | BasPinceau -> (execute turtle BasPinceau, vars)
  | HautPinceau -> (execute turtle HautPinceau, vars)
  | Affectation (s, e) -> let v = eval vars e in
                          (turtle, List.map 
                          (fun (id, valeur) -> 
                            if id = s 
                            then (id, v) 
                            else (id, valeur)
                          ) 
                          vars)
  | BlocInstruction il -> exec_list vars il turtle
  | Condition (e, is1, is2) -> if eval vars e != 0
                               then exec vars is1 turtle 
                               else exec vars is2 turtle
  | TantQue (e, is) -> if eval vars e != 0
                       then let (t, v) = exec vars is turtle in
                       exec v (TantQue (e,is)) t
                       else (turtle, vars)
  | ChangeCouleur c -> (execute turtle (Color c), vars)
  | ChangeEpaisseur e -> let v = eval vars e in
                         (execute turtle (LineWidth v), vars)
  | Vide -> (turtle, vars)
(* et execute une liste d'instruction *)
and exec_list vars l turtle =
  match l with
  | [] -> (turtle, vars)
  | h :: t -> let (turtle, vars) = exec vars h turtle
              in exec_list vars t turtle

let interprate (declarations, instruction) = 
  try
    (* on execute les instructions *)
    let turtle = create_window 550 550 in
    ignore (exec (create_env declarations) instruction turtle);

    (* puis on attend une touche pour quitter *)
    let ev = Graphics.wait_next_event [Key_pressed] in
    if ev.keypressed
    then exit 0 else ()
  with
  | Turtle.Error s -> raise (Error s)
  | s -> raise s



 

open Graphics

type command =
| Forward of int
| Turn of int
| HautPinceau
| BasPinceau

type position = {
  x: float;      (** position x *)
  y: float;      (** position y *)
  a: int;        (** angle of the direction *)
  drawing: bool;
}

let init_turtle =
  {
    x = 0.;
    y = 0.;
    a = 180;
    drawing = true
  }

(* met à jour les coordonnées de la tortue en la déplaçant de i unitées *)
let update_pos (turtle : position) (i : float) =
  {
    x = turtle.x +. (i *. cos ((float_of_int turtle.a) *. Float.pi /. 180.));
    y = turtle.y +. (i *. sin ((float_of_int turtle.a) *. Float.pi /. 180.));
    a = turtle.a;
    drawing = turtle.drawing
  }

(* move fait marcher la tortue de i unitées et déplace le 'stylo' jusqu'à cette pos *)
let move (turtle : position) (i : float) =
  let t = update_pos turtle i in moveto (int_of_float t.x) (int_of_float t.y); t
;;

(* line fait marcher la tortue de i unitées et trace une ligne jusqu'à cette pos *)
let line (turtle : position) (i : float) =
  let t = update_pos turtle i in lineto (int_of_float t.x) (int_of_float t.y); t
;;

(* turn tourne l'angle de la tortue de i degrés *)
let turn (turtle : position) (i : int) = 
  {
    x = turtle.x;
    y = turtle.y;
    a = turtle.a + i;
    drawing = turtle.drawing
  }

let update_drawing (turtle : position) (draw : bool) =
  {
    x = turtle.x;
    y = turtle.y;
    a = turtle.a;
    drawing = draw
  }

(* execute permet d'executer une commande *)
let execute (turtle : position) (cmd : command) =
  match cmd with
  | Forward i -> if turtle.drawing 
              then line turtle (float_of_int i)
              else move turtle (float_of_int i)
  | Turn i -> turn turtle i
  | HautPinceau -> update_drawing turtle false
  | BasPinceau -> update_drawing turtle true
;;

(* create_window permet de créer une fenêtre graphique de taille width x height *)
let create_window (width : int) (height : int) =
  open_graph (" " ^ string_of_int width ^ "x" ^ string_of_int height);
  moveto 0 0;
  set_line_width 2;
  init_turtle
;;

(* ferme la fenêtre *)
let close_window () =
  close_graph ()
;;

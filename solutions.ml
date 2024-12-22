(* Problem 01 *)
let rec last (xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | [t] -> Some t
  | h :: t -> last t;;

(* Problem 02 *)
let rec last_two (xs: 'a list): ('a * 'a) option =
  match xs with
  | [] | [_] -> None
  | [x;y] -> Some (x, y)
  | _ :: rest -> last_two rest 
  
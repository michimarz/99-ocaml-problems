(* Problem 01 *)
let rec last (xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | [t] -> Some t
  | h :: t -> last t

(* Problem 02 *)
let rec last_two (xs: 'a list): ('a * 'a) option =
  match xs with
  | [] | [_] -> None
  | [x;y] -> Some (x, y)
  | _ :: rest -> last_two rest 

(* Problem 03 *)
let rec at k list =
  match list with
  | x :: _ when k = 1 -> Some x
  | _ :: rest when k > 1 -> at (k - 1) rest
  | _ -> None

(* Problem 04 *)
let rec length list =
  match list with
  | [] -> 0
  | x :: rest -> 1 + length rest

(* Problem 05 *)
let rec rev (xs: 'a list) (acc: 'a list): 'a list =
  match xs with
  | [] -> acc
  | x :: rest -> rev rest (x :: acc)

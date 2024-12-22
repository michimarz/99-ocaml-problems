let rec last (xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | [t] -> Some t
  | h :: t -> last t;;

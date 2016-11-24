module V = Language.Value
class coreio input = object(self)
  val is : int list ref = ref input (* input stream *)
  val os : int list ref = ref [] (* output stream *)
  method private read = let i::is' = !is in is := is'; i
  method private write x = os := x::!os
  method get_os = List.rev !os
  method builtin name args =
    match name, args with
    | "read", [] -> V.Int (self#read)
    | "write", [V.Int x] -> self#write x; V.Int (String.length @@ BatInt.to_string x)
    | _ -> raise Not_found
end
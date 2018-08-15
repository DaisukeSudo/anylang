-module(match).
-export([
  head/1,
  second/1,
  same/2,
  is_valid_age/1,
  is_invalid_age/1,
  is_even/1,
  is_odd/1,
  talk/1
]).

head([H|_]) -> H.

second([_, H|_]) -> H.

same(X, X) ->
  true;
same(_, _) ->
  false.

is_valid_age(X) when X >= 16, X =< 104 ->
  true;
is_valid_age(_) ->
  false.

is_invalid_age(X) when X < 16; X > 104 ->
  true;
is_invalid_age(_) ->
  false.

is_even(X) -> X rem 2 =:= 0.

is_odd(X) ->
  if X rem 2 =:= 1 -> true;
  true -> false
end.

talk(Animal) ->
  Voice =
    case Animal of
      dog -> "bow wow";
      cat -> "meow meow";
      cow -> "moo moo";
      pig -> "oink oink";
      sheep -> "baa baa";
      horse -> "neigh";
      _ -> "quack quack"
    end,
  {Animal, Voice ++ "!"}
.
-module(sort).
-export([
  quick/1
]).

quick([]) -> [];
quick([Pivot|Rest]) ->
  {Smaller, Larger} = partition(Pivot, Rest, [], []),
  quick(Smaller) ++ [Pivot] ++ quick(Larger).

partition(_, [], Smaller, Larger) -> {Smaller, Larger};
partition(Pivot, [H|T], Smaller, Larger) ->
  if
    H =< Pivot -> partition(Pivot, T, Smaller ++ [H], Larger);
    H >  Pivot -> partition(Pivot, T, Smaller, Larger ++ [H])
  end.

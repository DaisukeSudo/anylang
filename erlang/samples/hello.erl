-module(hello).
-export([
  hello/0,
  mirror/1,
  add/2
]).

hello() ->
  lists:foreach(
    fun(X) -> io:format("~s~n", [X]) end,
    ['H', 'E', 'L', 'L', 'O']).

mirror(Anything) -> Anything.

add(X, Y) -> X + Y.

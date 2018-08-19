-module(roulette).
-export([
  roll/0,
  monitor/1
]).

%% example
% Gun = spawn(fun roulette:roll/0).
% Gun ! 5.
% erlang:is_process_alive(Gun).

roll() ->
  io:format("Send a number, 1-6~n"),
  _ = rand:seed(exs1024s),
	A = rand:uniform(6),
  receive
    X when X =:= A ->
      io:format("bang!~n"),
      exit({roulette, die, at, erlang:time()});
    _ ->
      io:format("click~n"),
      roll()
  end.


%% example
% Monitor = spawn(roulette, monitor, [revolver]).
% Monitor ! new.
% revolver ! 5.

monitor(Name) ->
  process_flag(trap_exit, true),
  receive
    new ->
      io:format("Creating and monitoring process.~n"),
      register(revolver, spawn_link(fun roll/0)),
      monitor(Name);
    {'EXIT', From, Reason} ->
      io:format("The process ~p died with reason ~p. ", [From, Reason]),
      io:format("Restarting. ~n"),
      self() ! new,
      monitor(Name)
  end.

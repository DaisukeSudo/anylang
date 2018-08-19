-module(animal).
-export([
  talk_async/0,
  talk_sync/0,
  call/2
]).

%% example
% Pid1 = spawn(fun animal:talk_async/0).
% Pid1 ! dog.
% Pid1 ! cat.
% Pid1 ! dack.

talk_async() ->
  receive
    dog   -> talk_async("bow wow");
    cat   -> talk_async("meow meow");
    cow   -> talk_async("moo moo");
    pig   -> talk_async("oink oink");
    sheep -> talk_async("baa baa");
    horse -> talk_async("neigh");
    _     -> talk_async("quack quack")
  end.

talk_async(Message) ->
  io:format("~s~n", [Message]),
  talk_async().


%% example
% Pid2 = spawn(fun animal:talk_sync/0).
% animal:call(Pid2, dog).
% animal:call(Pid2, cat).
% animal:call(Pid2, dack).

talk_sync() ->
  receive
    {From, dog  } -> talk_sync(From, "bow wow");
    {From, cat  } -> talk_sync(From, "meow meow");
    {From, cow  } -> talk_sync(From, "moo moo");
    {From, pig  } -> talk_sync(From, "oink oink");
    {From, sheep} -> talk_sync(From, "baa baa");
    {From, horse} -> talk_sync(From, "neigh");
    {From, _    } -> talk_sync(From, "quack quack")
  end.

talk_sync(From, Message) ->
  From ! Message,
  talk_sync().

call(To, Word) ->
  To ! {self(), Word},
  receive
    Message -> Message
  end.

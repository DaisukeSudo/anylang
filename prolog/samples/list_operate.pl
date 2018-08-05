concat_list([], X, X).
concat_list([Head|X], Y, [Head|Z]) :-
  concat_list(X, Y, Z).

reverse_list([], []).
reverse_list([Head|X], Z) :-
  reverse_list(X, Y),
  concat_list(Y, [Head], Z). 

min([X|[]], X).
min([X|Tail], Y) :- min(Tail, X1), which(X < X1, X, X1, Y).

which(Test, X, _, X) :- Test, !.
which(Test, _, X, X).

sort_list([], []).
sort_list([X|Tail], Y) :-
  divide_list(Tail, X, L, H),
  sort_list(L, L1),
  sort_list(H, H1),
  concat_list(L1, [X|H1], Y).

divide_list([], Ref, [], []).
divide_list([X|Tail], Ref, [X|L], H) :- X =< Ref, divide_list(Tail, Ref, L, H).
divide_list([X|Tail], Ref, L, [X|H]) :- X > Ref , divide_list(Tail, Ref, L, H).

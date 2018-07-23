hanoi(1, From, To, _) :-
    format('[~d] ~a -> ~a ~n', [1, From, To]).
hanoi(N, From, To, Via) :-
    N > 1,
    N1 is N - 1,
    hanoi(N1, From, Via, To),
    format('[~d] ~a -> ~a ~n', [N, From, To]),
    hanoi(N1, Via, To, From).

% (example)
% hanoi(3, a, b, c).

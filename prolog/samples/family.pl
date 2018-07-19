father(xeno, silva).
father(silva, illumi).

ancestor(X, Y) :-
  father(X, Y).
ancestor(X, Y) :-
  father(X, Z), ancestor(Z, Y).

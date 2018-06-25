igual([],[]).
igual([X | L1], [X | L2]) :- igual(L1, L2).

adjacente(X, Y, [A, B|L]) :-
  igual([X], [A]), % X = A e
  igual([Y], [B]); % Y = B ou
  igual([X], [B]), % X = B e
  igual([Y], [A]); % Y = A
  adjacent(X, Y, [B|L]).

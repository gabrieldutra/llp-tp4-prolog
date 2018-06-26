remover(_, [], []).
remover(X, [X|T], B) :- remover(X, T, B).
remover(X, [Y|T], [Y|NT]) :- X \= Y, remover(X, T, NT).
concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

remover(X, [X|T], T).
% remover(X, [Y|T], NT) :- X =:= Y, remover(X, T, NT).
% remover(X, [Y|T], [Y|NT]) :- X =\= Y, remover(X, T, NT).
remover(X, [Y|T], NT) :- X =\= Y, concatenar(NT, [Y], NTY), remover(X, T, NTY).
remover(X, [Y|T], NT) :- X =:= Y, remover(X, T, NT).

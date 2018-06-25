concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

reverter([], []).
reverter([X|L1], L2) :- concatenar([X], L2, L3), reverter(L1, L3).

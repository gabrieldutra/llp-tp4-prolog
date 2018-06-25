concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

reverter([], []).
reverter([A|LN], []) :- concatenar([], [A], LIN), reverter(LN, LIN).
reverter([A|LN], LI) :- concatenar([A], LI, LIN), reverter(LN, LIN).

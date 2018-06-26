 concatenar([], L, L).
 concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

 rotacionar([A|X], Y) :- concatenar(X, [A], Y).

 rotacionarn(0, A, A).
 rotacionarn(1, A, B) :- rotacionar(A,B).
 rotacionarn(N, A, B) :- rotacionarn(M, A, C), rotacionar(C, B), N is M+1.
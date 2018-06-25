maior([X], X).
maior([X|L], M) :- maiorAux(X, M, A), maior(L, A).
maiorAux(X, M, A) :- X > M -> A is X + 0; A is M + 0.

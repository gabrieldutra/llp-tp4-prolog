maior([], 0).
maior([X|L], M) :- maior(L, N), X > N, N is X * 1.
% maior([X|L], M) :- X \<= M, maior(L, M).

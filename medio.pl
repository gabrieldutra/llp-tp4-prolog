soma([],0).
soma([A|L],S) :- soma(L,R), S is A+R.

nelementos([],0).
nelementos([_|L],N) :- nelementos(L,M), N is M+1. 

medio([],0).
medio(L,M) :- soma(L,S), nelementos(L,N), M is S/N.
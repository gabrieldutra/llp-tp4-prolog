nelementos([],0).
nelementos([_|L],N) :- nelementos(L,M), N is M+1. 
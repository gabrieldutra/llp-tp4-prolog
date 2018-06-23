gerar(A,A,[A]).
gerar(A,B,[A|X]) :- gerar(C,B,X), A is C-1.
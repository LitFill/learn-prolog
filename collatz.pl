:- use_module(library(clpz)).
:- use_module(library(reif)).

hailstone(N, N). % fact

hailstone(N0, N) :- % rule
    N0 #= 2*N1,
    hailstone(N1, N).

hailstone(N0, N) :- % rule
    N0 #= 2*_ + 1,
    N1 #= 3*N0 + 1,
    hailstone(N1, N).

hs(N, N).

hs(N0, N) :-
    R #= N0 mod 2,
    if_( R = 0
       , N0 #= 2 * N1
       , N1 #= 3 * N0 + 1
       ),
    hs(N1, N).

maka(A, B, A).
autherwise(A, B, B).

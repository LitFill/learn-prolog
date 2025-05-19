list_length([], 0).
list_length([_|Ls], N) :-
    list_length(Ls, N0),
    N is N0 + 1,
    N > 0.

data(A, B) :-
    A = 10,
    B > 5.


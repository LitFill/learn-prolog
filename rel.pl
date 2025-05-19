% :- module(rel).

child(C, P) :- parent(P, C).

father(F, C) :-
    parent(F, C),
    male(F).

mother(M, C) :-
    parent(M, C),
    female(M).

son(S, P) :-
    child(S, P),
    male(S).

daughter(D, P) :-
    child(D, P),
    female(D).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(B, X) :-
    sibling(B, X),
    male(B).

sister(S, X) :-
    sibling(S, X),
    female(S).

grd_parent(GP, GC) :-
    parent(GP, X),
    parent(X, GC).

grd_father(GF, GC) :-
    grd_parent(GF, GC),
    male(GF).

grd_mother(GM, GC) :-
    grd_parent(GM, GC),
    female(GM).

grd_child(C, P) :- grd_parent(P, C).

grd_son(S, P) :-
    grd_child(S, P),
    male(S).

grd_daughter(D, P) :-
    grd_child(D, P),
    female(D).

ancestor(A, D) :- parent(A, D).
ancestor(A, D) :- parent(A, X), ancestor(X, D).

descendant(D, A) :- ancestor(A, D).

all_male([])     :- false.
all_male([Male]) :- male(Male).
all_male([A|Ls]) :-
    male(A),
    all_male(Ls).

%%------------------------------------%%

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).
parent(jim, qwe).
parent(jim, wer).
parent(jim, ert).
parent(jim, iop).

male(tom).
male(bob).
male(pat).
male(jim).
male(wer).
male(iop).

female(pam).
female(liz).
female(ann).
female(qwe).
female(ert).


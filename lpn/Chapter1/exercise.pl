% Exercise 1.4
killer(butch).

married(mia, marsellus).

dead(zed).

kill(marsellus, X) :-
    give_foot_massage(X, mia).

love(mia, X) :-
    good_dancer(X).

eat(jules, Food) :-
    nutritious(Food)
;   tasty(Food).

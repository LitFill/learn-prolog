% woman(Name)
woman(mia).
woman(jody).
woman(yolanda).

% there is party now.
party.

% happy(Name)
happy(yolanda).
happy(vincent).

% listen_to_music(Name)
listen_to_music(mia).

listen_to_music(yolanda) :-
    happy(yolanda).

listen_to_music(butch).

% plays_guitar(Name)
plays_guitar(jody).

plays_guitar(mia)     :-
    listen_to_music(mia).

plays_guitar(yolanda) :-
    listen_to_music(yolanda).

plays_guitar(vincent) :-
    listen_to_music(vincent),
    happy(vincent).

plays_guitar(butch)   :-
    happy(butch)
;   listen_to_music(butch).

'plays guitar'(ama).

% loves(Name1, Name2) = Name1 loves Name2
loves(vincent,   mia).
loves(marcellus, mia).
loves(pumpkin,   honey).
loves(honey,     pumpkin).

% jealous(Name1, Name2) = Name1 and Name2 love the same person
jealous(X, Y) :-
    loves(X, Z),
    loves(Y, Z),
    X \= Y.

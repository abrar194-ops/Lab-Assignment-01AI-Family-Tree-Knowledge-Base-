female(lara).
female(lama).
female(nora).
female(sara).
male(sultan).
male(ali).
male(bader).
male(salem).
male(fahad).


parent(sultan, salem).
parent(lara, salem).
parent(fahad, lara).
parent(nora, lara).
parent(salem, ali).
parent(salem, bader).
parent(salem, sara).
parent(lara, ali).
parent(lara, bader).
parent(lara, sara).

father(X,Y) :- male(X), parent(X,Y).

mother(X,Y) :- female(X), parent(X,Y).

sister(X,Y) :- female(X), parent(P,X), parent(P,Y), X \= Y.

brother(X,Y) :- male(X), parent(P,X), parent(P,Y), X \= Y.
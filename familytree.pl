female(mary).
female(sandra).
female(juliet).
female(lisa).
male(peter).
male(paul).
male(dick).
male(bob).
male(harry).
parent(bob,lisa).
parent(bob,paul).
parent(bob,mary).
parent(juliet,lisa).
parent(juliet,paul).
parent(juliet,mary).
parent(peter,harry).
parent(lisa,harry).
parent(mary,dick).
parent(mary,sandra).

father(X,Y) :-
	male(X),
	parent(X,Y). 

sister(A,B) :-
	female(A),
	parent(C,A),
	parent(C,B),
	not(A=B).

grandmother(D,E) :-
	female(D),
	parent(D,F),
	parent(F,E).

cousin(G,H) :-
	parent(I,G),
	parent(J,H),
	parent(K,I),
	parent(K,J),
	not(G=H).

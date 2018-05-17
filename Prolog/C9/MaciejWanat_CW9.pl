/* Maciej Wanat */

/* Zadanie 4 */
nwd(X,Y,Z):-X=:=Y,Z is X.
nwd(X,Y,Z):-X<Y,Tmp is Y-X,nwd(X,Tmp,Z).
nwd(X,Y,Z):-X>Y,Tmp is X-Y,nwd(Y,Tmp,Z).

/* Zadanie 5 */
jarosz('Ola').
jarosz('Ewa').
jarosz('Jan').
jarosz('Pawel').
kawosz('Iza').
kawosz('Piotr').
kawosz('Pawel').
ksiazki('Ola').
ksiazki('Iza').
ksiazki('Pawel').
sport('Iza').
sport('Ola').
sport('Piotr').
sport('Pawel').

lubi('Ola', X) :- jarosz(X), sport(X), X\='Ola'.
lubi('Ewa', X) :- jarosz(X), \+kawosz(X), X\='Ewa'.
lubi('Iza', X) :- ksiazki(X).
lubi('Iza', X) :- sport(X), \+kawosz(X), X\='Iza'.
lubi('Janek', X) :- sport(X), X\='Janek'.
lubi('Piotr', X) :- sport(X) ; ksiazki(X), X\='Piotr'.
lubi('Pawel', X) :- jarosz(X), sport(X), ksiazki(X), X\='Pawel'.

przyjaciele(X,Y) :- lubi(X,Y), lubi(Y,X), X\=Y.
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
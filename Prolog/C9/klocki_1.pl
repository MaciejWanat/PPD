klocek(a).
klocek(b).
klocek(c).
klocek(d).
na(d,c).
na(c,a).
na(c,b).
pod(X,Y) :- na(Y,X).
miedzy(X,Y,Z) :- pod(X,Y), na(Z,Y).
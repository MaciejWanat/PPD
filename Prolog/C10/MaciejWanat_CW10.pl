/* Zadanie 1 */

sm([],_,[]).
sm([],[],_).
sm([G1|O1],[G2|O2],[G3|O3]):- 
    G3 is G1+G2,
    sm(O1,O2,O3).

/* Zadanie 2 */
/* a) */
rowneL(list1, list2):- length(list1) == length(list2).

/* b) */
rowne([],[]).
rowne([_|L1],[_|L2]):- rowne(L1, L2).

/* Zadanie 3 */
maxify([X],X).
maxify([X|L], X):-maxify(L,Y), X >= Y.
maxify([X|L], Y):-maxify(L,Y), X < Y.

/* Zadanie 4 */
poczatek([],_).
poczatek([G1|O1],[G2|O2]):- G1 == G2, poczatek(O1,O2).

/* Zadanie 5 */
/* a) */
my_is_list(X) :-
        var(X), !,
        fail.
my_is_list([]).
my_is_list([_|T]) :-
        my_is_list(T).

/* b) */
my_last_el([X],X).
my_last_el([_|O],X):-my_last_el(O,X).

/* c) */
my_member(X, [X|_]).
my_member(E,[_|O]):-my_member(E,O). 

/* d) */
my_nextto(X,Y,[X,Y|_]):- !.
my_nextto(X,Y,[_|O]):- my_nextto(X, Y, O).

/* e) */
my_delete([], _, []):- !.
my_delete([X|O], X, Y) :- !, my_delete(O, X, Y).
my_delete([X|O], E, [X|Y]):- my_delete(O, E, Y).

/* f) */
my_select(E, [E | XS], XS).
my_select(E, [X | XS], [X | R]) :- my_select(E, XS, R).

/* g) */
my_nth1(1,[E|_],E).
my_nth1(N,[_|X],E):-my_nth1(N1,X,E), N is N1+1.

/* h) */
my_permutation([], []).
my_permutation([X | XS], R) :- my_permutation(XS, P), append(A,B,P), append(A, [X], AX), append(AX, B, R).

/* i) */
my_flatten([], []) :- !.
my_flatten([L|Ls], FlatL) :-
    !,
    my_flatten(L, NewL),
    my_flatten(Ls, NewLs),
    append(NewL, NewLs, FlatL).
my_flatten(L, [L]).

/* j) */
my_sumlist([], 0).
my_sumlist([H|T], Sum) :-
   my_sumlist(T, Rest),
   Sum is H + Rest.

/* k) */
my_numlist(X,X,[X]).
my_numlist(X,Y,[X|L]):-
    Y>X,
    Z is X+1,
    my_numlist(Z,Y,L).

/* m) */
my_msort(List,Sorted):-i_sort(List,[],Sorted).
i_sort([],Acc,Acc).
i_sort([H|T],Acc,Sorted):-insert(H,Acc,NAcc),i_sort(T,NAcc,Sorted).
   
insert(X,[Y|T],[Y|NT]):-X>Y,insert(X,T,NT).
insert(X,[Y|T],[X,Y|T]):-X=<Y.
insert(X,[],[X]).

/* */
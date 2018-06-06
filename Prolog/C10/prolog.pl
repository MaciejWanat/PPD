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
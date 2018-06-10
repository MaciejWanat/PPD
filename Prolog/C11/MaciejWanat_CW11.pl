/* Zadanie 1 */

plus(0, Y, Y):-!.                                                                                                                                     
plus(X, Y, Z) :-                                                                                                                                      
    succ(PredX, X),                                                                                                                                   
    plus(PredX, Y, PredZ),                                                                                                                            
    succ(PredZ, Z).

/* Zadanie 2 */
kobieta(ewa).
kobieta(elzbieta).
kobieta(iwona).
kobieta(ilona).
kobieta(anna).
kobieta(marta).
kobieta(iza).
kobieta(ola).
kobieta(magda).

mezczyzna(piotr).
mezczyzna(adam).
mezczyzna(pawel).
mezczyzna(dariusz).
mezczyzna(jan).
mezczyzna(norbert).
mezczyzna(marek).
mezczyzna(krzysztof).
mezczyzna(maciej).

rodzic(ewa,marek).
rodzic(ewa,marta).
rodzic(piotr,marek).
rodzic(piotr,marta).
rodzic(elzbieta,magda).
rodzic(norbert,magda).
rodzic(maciej,anna).
rodzic(ola,anna).
rodzic(marek,ola).
rodzic(magda,ola).
rodzic(pawel,krzysztof).
rodzic(pawel,iza).
rodzic(krzysztof,adam).
rodzic(marta,adam).
rodzic(iwona,iza).
rodzic(iwona,krzysztof).
rodzic(ilona,dariusz).
rodzic(adam,dariusz).

/* Z3 */
ojciec(X) :- rodzic(X,_), mezczyzna(X).

/* student(nazwisko, imiê, rok urodzenia, miejsce studiowania, kierunek studiów, uczelnia */
student(kowalski, jan, 1990, poznan, matematyka,uam).
student(kosowski, jan, 1991, poznan, matematyka, ae).
student(kowalski, marek, 1993, poznan, matematyka, pp).
student(kaczmarek, janina, 1989, poznan, informatyka, pp).
student(nowak, anna, 1988, olsztyn, informatyka, uwm).
student(jurkowski, jerzy, 1990, poznan, informatyka, uam).
student(wolski, maciej, 1990, poznan, matematyka, pp).
student(kot, stefan, 1989, warszawa, matematyka, uw).
student(typowski, adam, 1990, krakow, matematyka, uj).
student(zemski, piotr, 1991, poznan, informatyka, ue).
student(makowska, zuzanna, 1990, poznan, informatyka, pp).
student(ratajczak, agata, 1992, poznan, informatyka, uam).
/* Z2 */
poznan(A,B) :- student(A,B,_,'poznan',_,_).

/*FAKTY*/
jest(ann,sk³adnik).
jest(szy,sk³adnik).
jest(ser,sk³adnik).
jest(kuk,sk³adnik).
jest(ceb,sk³adnik).

jest(hawa,pizza).
jest(marg,pizza).
jest(texa,pizza).
jest(wege,pizza).


jestsk³adnikiem(ceb,hawa).
jestsk³adnikiem(ann,hawa).
jestsk³adnikiem(szy,hawa).
jestsk³adnikiem(ser,hawa).

jestsk³adnikiem(ser,marg).
jestsk³adnikiem(pom,marg).

jestsk³adnikiem(pom,wege).

zdanie(X) :-  grupa_orzeczenia(X).

grupa_orzeczenia(X) :-
append(Y,Z,X), orzeczenie(Y), dope³nienie(Z).


orzeczenie([poproszê]).
orzeczenie([proszê]).
dope³nienie([margaritê]).
dope³nienie([margheritê]).
dope³nienie([hawajsk¹]).

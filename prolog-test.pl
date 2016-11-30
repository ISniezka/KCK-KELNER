/*FAKTY*/
jest(ann,składnik).
jest(szy,składnik).
jest(ser,składnik).
jest(kuk,składnik).
jest(ceb,składnik).

jest(hawa,pizza).
jest(marg,pizza).
jest(texa,pizza).
jest(wege,pizza).


jestskładnikiem(ceb,hawa).
jestskładnikiem(ann,hawa).
jestskładnikiem(szy,hawa).
jestskładnikiem(ser,hawa).

jestskładnikiem(ser,marg).
jestskładnikiem(pom,marg).

jestskładnikiem(pom,wege).

zdanie(X) :-  grupa_orzeczenia(X).

grupa_orzeczenia(X) :-
append(Y,Z,X), orzeczenie(Y), dopełnienie(Z).


orzeczenie([poproszę]).
orzeczenie([proszę]).
dopełnienie([margaritę]).
dopełnienie([margheritę]).
dopełnienie([hawajską]).

/*FAKTY*/
jest(ann,sk�adnik).
jest(szy,sk�adnik).
jest(ser,sk�adnik).
jest(kuk,sk�adnik).
jest(ceb,sk�adnik).

jest(hawa,pizza).
jest(marg,pizza).
jest(texa,pizza).
jest(wege,pizza).


jestsk�adnikiem(ceb,hawa).
jestsk�adnikiem(ann,hawa).
jestsk�adnikiem(szy,hawa).
jestsk�adnikiem(ser,hawa).

jestsk�adnikiem(ser,marg).
jestsk�adnikiem(pom,marg).

jestsk�adnikiem(pom,wege).

zdanie(X) :-  grupa_orzeczenia(X).

grupa_orzeczenia(X) :-
append(Y,Z,X), orzeczenie(Y), dope�nienie(Z).


orzeczenie([poprosz�]).
orzeczenie([prosz�]).
dope�nienie([margarit�]).
dope�nienie([margherit�]).
dope�nienie([hawajsk�]).

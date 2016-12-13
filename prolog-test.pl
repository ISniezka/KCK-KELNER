/*FAKTY*/
jest(ann,sk�adnik).
jest(szy,sk�adnik).
jest(ser,sk�adnik).
jest(kuk,sk�adnik).
jest(ceb,sk�adnik).

jest(hawajskie,pizza,hawajska).
jest(hawajsk�,pizza,hawajska).
jest(hawajskich,pizza,hawajska).
jest(texas,pizza,texas).
jest(margarit�,pizza,margarita).
jest(margarity,pizza,margarita).
jest(margarit,pizza,margarita).
jest(margharitt�,pizza,margarita).
jest(margharitty,pizza,margarita).
jest(margharitt,pizza,margarita).

jest(marg,pizza).
jest(texa,pizza).
jest(wege,pizza).

jest(dwie,ilo��,2).
jest(trzy,ilo��,3).
jest(jedn�,ilo��,1).
jest(cztery,ilo��,4).
jest(pi��,ilo��,5).

jestsk�adnikiem(ceb,hawa).
jestsk�adnikiem(ann,hawa).
jestsk�adnikiem(szy,hawa).
jestsk�adnikiem(ser,hawa).

jestsk�adnikiem(ser,marg).
jestsk�adnikiem(pom,marg).
jestsk�adnikiem(pom,wege).



rozkaz(Ilo��,Rodzaj,Modyfikacja,Polecenie,[]):-
	liczba(Ilo��,Polecenie,Dalej),
	pizza(Rodzaj,Dalej,Koniec),
	Modyfikacja=nie.
	
rozkaz(Ilo��,Rodzaj,Modyfikacja,Polecenie,[]):-
	(Polecenie=['chc�'|Dalej];
	Polecenie=['zamawiam'|Dalej]),
	Ilo��=1,
	pizza(Rodzaj,Dalej,Koniec),
	modyfikacja(Koniec,Modyfikacja).
	
rozkaz(Ilo��,Rodzaj,Modyfikacja,Polecenie,[]):-
	(Polecenie=['chc�'|Dalej];
	Polecenie=['zamawiam'|Dalej]),
	Ilo��=1,
	pizza(Rodzaj,Dalej,Koniec),
	Modyfikacja=nie.
	

	

liczba(Ilo��,X,Dalej):-
	X=[Ilo�ci|Dalej],
	jest(Ilo�ci,ilo��,Ilo��).
	
pizza(Rodzaj,X,Koniec):-
	X=[Rodzaju|Koniec],
	jest(Rodzaju,pizza,Rodzaj).

modyfikacja(Koniec,Modyfikacja):-
	Koniec=['bez'|Modyfikacja].
	
modyfikacja(Koniec,Modyfikacja):-
	Koniec=['z'|Modyfikacja].






	

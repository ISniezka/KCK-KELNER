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

jest(ma�a,rozmiar,ma�a).
jest(ma�e,rozmiar,ma�a).
jest(ma��,rozmiar,ma�a).
jest(ma�ych,rozmiar,ma�a).


rozkaz(Ilo��,Rodzaj,Modyfikacja,Polecenie,[]):-
�liczba(Ilo��,Polecenie,Dalej),
�pizza(Rodzaj,Dalej,Koniec),
�Modyfikacja=nie.
�
�rozkaz(Ilo��,Rodzaj,Modyfikacja,Polecenie,[]):-
�(Polecenie=['chc�'|Dalej];
�Polecenie=['zamawiam'|Dalej];
�Polecenie=['poprosz�'|Dalej]),
�liczba(Ilo��,Dalej,Dalej2),
�pizza(Rodzaj,Dalej2,Koniec),
�modyfikacja(Koniec,Modyfikacja).
�
�
rozkaz(Ilo��,Rodzaj,Modyfikacja,Polecenie,[]):-
�(Polecenie=['chc�'|Dalej];
�Polecenie=['zamawiam'|Dalej];
�Polecenie=['poprosz�'|Dalej]),
�Ilo��=1,
�pizza(Rodzaj,Dalej,Koniec),
�modyfikacja(Koniec,Modyfikacja).
�
rozkaz(Ilo��,Rodzaj,Modyfikacja,Polecenie,[]):-
�(Polecenie=['chc�'|Dalej];
�Polecenie=['poprosz�'|Dalej];
�Polecenie=['zamawiam'|Dalej]),
�Ilo��=1,
�pizza(Rodzaj,Dalej,Koniec),
�Modyfikacja=nie.


� rozkaz(Ilo��,Rozmiar,Rodzaj,Modyfikacja,Polecenie,[]):-
�(Polecenie=['chc�'|Dalej];
�Polecenie=['poprosz�'|Dalej];
�Polecenie=['zamawiam'|Dalej]),
�liczba(Ilo��,Dalej,Dalej2),
�rozmiar(Rozmiar,Dalej2,Dalej3),
�pizza(Rodzaj,Dalej3,Koniec),
�modyfikacja(Koniec,Modyfikacja).
�

rozkaz(Ilo��,Rozmiar,Rodzaj,Modyfikacja,Polecenie,[]):-
�(Polecenie=['chc�'|Dalej];
�Polecenie=['poprosz�'|Dalej];
�Polecenie=['zamawiam'|Dalej]),
�liczba(Ilo��,Dalej,Dalej2),
�rozmiar(Rozmiar,Dalej2,Dalej3),
�pizza(Rodzaj,Dalej3,Koniec),
�Modyfikacja=nie.

�


�
�
�rozmiar(Rozmiar,X,Dalej):-
��� X=[Rozmiaru|Dalej],
��� jest(Rozmiaru,rozmiar,Rozmiar).
�
liczba(Ilo��,X,Dalej):-
�X=[Ilo�ci|Dalej],
�jest(Ilo�ci,ilo��,Ilo��).
�
pizza(Rodzaj,X,Koniec):-
�X=[Rodzaju|Koniec],
�jest(Rodzaju,pizza,Rodzaj).
modyfikacja(Koniec,Modyfikacja):-
�Koniec=['bez'|Modyfikacja].
�
modyfikacja(Koniec,Modyfikacja):-
�Koniec=['z'|Modyfikacja].
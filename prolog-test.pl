/*FAKTY*/
jest(ann,sk³adnik).
jest(szy,sk³adnik).
jest(ser,sk³adnik).
jest(kuk,sk³adnik).
jest(ceb,sk³adnik).
jest(hawajskie,pizza,hawajska).
jest(hawajsk¹,pizza,hawajska).
jest(hawajskich,pizza,hawajska).
jest(texas,pizza,texas).
jest(margaritê,pizza,margarita).
jest(margarity,pizza,margarita).
jest(margarit,pizza,margarita).
jest(margharittê,pizza,margarita).
jest(margharitty,pizza,margarita).
jest(margharitt,pizza,margarita).
jest(marg,pizza).
jest(texa,pizza).
jest(wege,pizza).
jest(dwie,iloœæ,2).
jest(trzy,iloœæ,3).
jest(jedn¹,iloœæ,1).
jest(cztery,iloœæ,4).
jest(piêæ,iloœæ,5).
jestsk³adnikiem(ceb,hawa).
jestsk³adnikiem(ann,hawa).
jestsk³adnikiem(szy,hawa).
jestsk³adnikiem(ser,hawa).
jestsk³adnikiem(ser,marg).
jestsk³adnikiem(pom,marg).
jestsk³adnikiem(pom,wege).

jest(ma³a,rozmiar,ma³a).
jest(ma³e,rozmiar,ma³a).
jest(ma³¹,rozmiar,ma³a).
jest(ma³ych,rozmiar,ma³a).


rozkaz(Iloœæ,Rodzaj,Modyfikacja,Polecenie,[]):-
 liczba(Iloœæ,Polecenie,Dalej),
 pizza(Rodzaj,Dalej,Koniec),
 Modyfikacja=nie.
 
 rozkaz(Iloœæ,Rodzaj,Modyfikacja,Polecenie,[]):-
 (Polecenie=['chcê'|Dalej];
 Polecenie=['zamawiam'|Dalej];
 Polecenie=['poproszê'|Dalej]),
 liczba(Iloœæ,Dalej,Dalej2),
 pizza(Rodzaj,Dalej2,Koniec),
 modyfikacja(Koniec,Modyfikacja).
 
 
rozkaz(Iloœæ,Rodzaj,Modyfikacja,Polecenie,[]):-
 (Polecenie=['chcê'|Dalej];
 Polecenie=['zamawiam'|Dalej];
 Polecenie=['poproszê'|Dalej]),
 Iloœæ=1,
 pizza(Rodzaj,Dalej,Koniec),
 modyfikacja(Koniec,Modyfikacja).
 
rozkaz(Iloœæ,Rodzaj,Modyfikacja,Polecenie,[]):-
 (Polecenie=['chcê'|Dalej];
 Polecenie=['poproszê'|Dalej];
 Polecenie=['zamawiam'|Dalej]),
 Iloœæ=1,
 pizza(Rodzaj,Dalej,Koniec),
 Modyfikacja=nie.


  rozkaz(Iloœæ,Rozmiar,Rodzaj,Modyfikacja,Polecenie,[]):-
 (Polecenie=['chcê'|Dalej];
 Polecenie=['poproszê'|Dalej];
 Polecenie=['zamawiam'|Dalej]),
 liczba(Iloœæ,Dalej,Dalej2),
 rozmiar(Rozmiar,Dalej2,Dalej3),
 pizza(Rodzaj,Dalej3,Koniec),
 modyfikacja(Koniec,Modyfikacja).
 

rozkaz(Iloœæ,Rozmiar,Rodzaj,Modyfikacja,Polecenie,[]):-
 (Polecenie=['chcê'|Dalej];
 Polecenie=['poproszê'|Dalej];
 Polecenie=['zamawiam'|Dalej]),
 liczba(Iloœæ,Dalej,Dalej2),
 rozmiar(Rozmiar,Dalej2,Dalej3),
 pizza(Rodzaj,Dalej3,Koniec),
 Modyfikacja=nie.

 


 
 
 rozmiar(Rozmiar,X,Dalej):-
    X=[Rozmiaru|Dalej],
    jest(Rozmiaru,rozmiar,Rozmiar).
 
liczba(Iloœæ,X,Dalej):-
 X=[Iloœci|Dalej],
 jest(Iloœci,iloœæ,Iloœæ).
 
pizza(Rodzaj,X,Koniec):-
 X=[Rodzaju|Koniec],
 jest(Rodzaju,pizza,Rodzaj).
modyfikacja(Koniec,Modyfikacja):-
 Koniec=['bez'|Modyfikacja].
 
modyfikacja(Koniec,Modyfikacja):-
 Koniec=['z'|Modyfikacja].
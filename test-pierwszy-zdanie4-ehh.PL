/*
rozkaz(A,B,C,[podnieś,skrzynię,na,10,metrów],[]).
rozkaz(A,B,C,[podnieś,skrzynię,na,10,metrów],[]).

zegnij zg - chcę   ch
element - pizza
rm  ramię - hw hawajską
kąt(o) - składnik(bez)
stopnii - kukurydzy
*/

?-rozkaz(A,B,C,[qwertyuio,fghjk,fgggg],[]).
s(ch,pizza,skłądnik(bez),['chcę'|X],X).

s(hw,['hawajską'|X],X).

jest(hw,pizza).

s(składnik,['kukurydzy'|X],X).


rozkaz(A,B,C,Polecenie,[]) :- 
    akcja(A,B1,C1,Polecenie,X1),
    obiekt(B1,B,X1,X2),
    parametry_akcji(C1,C,X2,[]).
rozkaz(A,B,C,Polecenie,[]) :- 
    akcja(A,B1,C1,Polecenie,X1),
    obiekt(B1,B,X1,X2).
	

akcja(A,B,C,X0,X1) :-
    X0=['chcę'|X1],
    s(A,B,C,X0,X1).


obiekt(B1,B,X0,X1):-
    X0=['hawajską'|X1],
    s(B,X0,X1),
    jest(B,B1).
	

parametry_akcji(składnik(bez),W,['bez'|X1],X2) :-
    s(składnik,[],X1).
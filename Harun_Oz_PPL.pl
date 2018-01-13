
%%

%%  question queries and answers.

%% ?-father(uğur,Y).
%%	Y= harun
%%	Y= ayşe
%%	Y= burak


%% ?-daughter(candan, Y).
%%	Y=sabri
%%	Y=zeliha

%% ?-daughter(ayşe,Y).
%%	Y=sabri
%%	Y=zeliha


%% ?- aunt(harun,X).
%%		false.


%% ?- grandfather(X, harun).
%%X=sabri


%% ?- son(harun,X).
%% X= uğur
%% X= candan


%% Rules


father(X,Y) :-
male(X),
parent(X,Y).




mother(X,Y) :- 
	female(X), 
	parent(X,Y).

son(X,Y) :- 
			male(X), 
			parent(Y,X).

daughter(X,Y) :- 
			
			female(X), 
			parent(Y,X).

aunt(X,Y) :- 

		female(X),
		sister(X,Mom), 
		mother(Mom,Y).


aunt(X,Y) :- female(X),
			sister(X,Dad), 
			father(Dad,Y).


grandfather(X,Y) :- 

			male(X),
			parent(X,Somebody),
			parent(Somebody,Y).

%%Facts

male(harun).
male(uğur).
male(sabri).
male(burak).
male(sami).
female(candan).
female(ayşe).
female(zeliha).
female(makbule).
female(ayşegül).
female(zeynep).
parent(uğur, harun).
parent(uğur, burak).
parent(uğur, ayşe).
parent(candan,harun).
parent(candan,ayşe).
parent(candan,burak).
parent(sabri,candan).
parent(zeliha,candan).
parent(zeliha,makbule).








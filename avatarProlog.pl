%PUNTO 1
esMaestro(Persona):- esMaestroDe(agua,Persona).
esMaestro(Persona):- esMaestroDe(tierra,Persona).
esMaestro(Persona):- esMaestroDe(fuego,Persona).
esMaestro(Persona):- esMaestroDe(aire,Persona).

esMaestroDe(toph,tierra).
esMaestroDe(katara,agua).
esMaestroDe(zuko,fuego).
esMaestroDe(aang,agua).
esMaestroDe(aang,fuego).
esMaestroDe(aang,tierra).
esMaestroDe(matias,tierra).
esMaestroDe(valentin,agua).
esMaestroDe(alf,agua).
esMaestroDe(alf,tierra).
esMaestroDe(lucas,fuego).
esMaestroDe(lucas,agua).
esMaestroDe(diana,agua).
esMaestroDe(diana,tierra).


%PUNTO 2
esMaestroDe(Persona,aire) :- creoMovimientoEspiritual(Persona).
esMaestroDe(Persona,aire) :- tieneConexionEspiritual(Persona).

creoMovimientoEspiritual(zaheer).
creoMovimientoEspiritual(aang).
creoMovimientoEspiritual(tenzin).
tieneConexionEspiritual(zaheer).
tieneConexionEspiritual(bumi).
tieneConexionEspiritual(kai).
tieneConexionEspiritual(marquitos).    


%PUNTO 3
/*

a) ?- esMaestroDe(_,aire).
true .

b) ?- esMaestroDe(Persona,fuego).
Persona = zuko ;
Persona = aang ;
Persona = lucas.

c) ?- esMaestroDe(Persona,Elemento).
Persona = toph,
Elemento = tierra;
Persona = katara,
Elemento = agua;
Persona = zuko,
Elemento = fuego;
Persona = aang,
Elemento = agua;
Persona = aang,
Elemento = fuego;
Persona = aang,
Elemento = tierra;
Persona = matias,
Elemento = tierra;
Persona = valentin,
Elemento = agua;
Persona = alf,
Elemento = agua;
Persona = alf,
Elemento = tierra;
Persona = lucas,
Elemento = fuego;
Persona = lucas,
Elemento = agua;
Persona = diana,
Elemento = agua;
Persona = diana,
Elemento = tierra;
Persona = zaheer,
Elemento = aire;
Persona = aang,
Elemento = aire;
Persona = tenzin,
Elemento = aire; 
Persona = zaheer,
Elemento = aire;
Persona = bumi,
Elemento = aire;
Persona = kai,
Elemento = aire;
Persona = marquitos,
Elemento = aire.

c) ?- esMaestroDe(Persona, Elemento)

d) ?- esMaestroDe(aang,Elemento).
Elemento = agua ;
Elemento = fuego ;
Elemento = tierra ;
Elemento = aire ;

e) ?- esMaestroDe(sokka,Elemento).
false.
*/

%PUNTO 4
tieneDobleMaestria(Persona):-
    esMaestroDe(Persona,Elemento1),
    esMaestroDe(Persona,Elemento2),
    Elemento1\=Elemento2.

%PUNTO 5
confiaEn(aang,zuko).
confiaEn(aang,aang,toph).
confiaEn(aang,sokka).
confiaEn(aang,appa).
confiaEn(aang,momo).
confiaEn(katara,Persona):-
    confiaEn(aang,Persona),
    not(esMaestroDe(Persona,fuego)).

%PUNTO 6
esEnemigoDe(zhao,Persona):-esMaestroDe(Persona,fuego).
esEnemigoDe(zhao,zuko).

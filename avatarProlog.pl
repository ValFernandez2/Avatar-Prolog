/*elemento(tierra).
elemento(agua).
elemento(fuego).
elemento(aire).*/

%PUNTO 1
esMaestro(Persona):- esMaestroDe(agua,Persona).
esMaestro(Persona):- esMaestroDe(tierra,Persona).
esMaestro(Persona):- esMaestroDe(fuego,Persona).
esMaestro(Persona):- esMaestroDe(aire,Persona).

esMaestroDe(tierra,toph).
esMaestroDe(agua,katara).
esMaestroDe(fuego,zuko).
esMaestroDe(agua,aang).
esMaestroDe(fuego,aang).
esMaestroDe(tierra,aang).
esMaestroDe(tierra,matias).
esMaestroDe(agua,valentin).
esMaestroDe(agua,alf).
esMaestroDe(tierra,alf).
esMaestroDe(fuego,lucas).
esMaestroDe(agua,lucas).
esMaestroDe(agua,diana).
esMaestroDe(tierra,diana).


%PUNTO 2
esMaestroDe(aire,Persona) :- creoMovimientoEspiritual(Persona).
esMaestroDe(aire,Persona) :- tieneConexionEspiritual(Persona).

creoMovimientoEspiritual(zaheer).
creoMovimientoEspiritual(aang).
creoMovimientoEspiritual(tenzin).
tieneConexionEspiritual(zaheer).
tieneConexionEspiritual(bumi).
tieneConexionEspiritual(kai).
tieneConexionEspiritual(marquitos).    


%PUNTO 3
/*

a) ?- esMaestroDe(aire,_).
true .

b) ?- esMaestroDe(fuego,Persona).
Persona = zuko ;
Persona = aang ;
Persona = lucas.

c) ?- esMaestroDe(Elemento,Persona).
Elemento = tierra,
Persona = toph ;
Elemento = agua,
Persona = katara ;
Elemento = fuego,
Persona = zuko ;
Elemento = agua,
Persona = aang ;
Elemento = fuego,
Persona = aang ;
Elemento = tierra,
Persona = aang ;
Elemento = tierra,
Persona = matias ;
Elemento = agua,
Persona = valentin ;
Elemento = agua,
Persona = alf ;
Elemento = tierra,
Persona = alf ;
Elemento = fuego,
Persona = lucas ;
Elemento = agua,
Persona = lucas ;
Elemento = agua,
Persona = diana ;
Elemento = tierra,
Persona = diana ;
Elemento = aire,
Persona = zaheer ;
Elemento = aire,
Persona = aang ;
Elemento = aire,
Persona = tenzin ;
Elemento = aire,
Persona = zaheer ;
Elemento = aire,
Persona = bumi ;
Elemento = aire,
Persona = kai ;
Elemento = aire,
Persona = marquitos.

d) ?- esMaestroDe(Elemento,aang).
Elemento = agua ;
Elemento = fuego ;
Elemento = tierra ;
Elemento = aire ;

e) ?- esMaestroDe(Elemento,sokka).
false.
*/

%PUNTO 4
tieneDobleMaestria(Persona):-
    esMaestroDe(Elemento1,Persona),
    esMaestroDe(Elemento2,Persona),
    Elemento1\=Elemento2.

%PUNTO 5
confiaEn(zuko,aang).
confiaEn(toph,aang).
confiaEn(sokka,aang).
confiaEn(appa,aang).
confiaEn(momo,aang).
confiaEn(Persona,katara):-
    confiaEn(Persona,aang),
    not(esMaestroDe(fuego,Persona)).

%PUNTO 6
esEnemigoDe(Persona,zhao):-esMaestroDe(fuego,Persona).
esEnemigoDe(zuko,zhao).

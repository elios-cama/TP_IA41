taille([grand, grande, moyen, moyenne, petit, petite]).
couleurCheveu([brun, blond, rousse, blonde,brune]).
age([mur, jeune, moyen]).
sports([natation, tennis, jogging]).
livres([aventures, sf, policiers]).
homme([paul, pierre, jean]).
femme([marie, eva, lea]).
musique([classique, rock, jazz]).

personne(paul, homme, grand, mur).
loisirs(paul, classique, aventures, natation).
recherche(paul, X):- personne(X,femme,grande, rousse, jeune).

personne(pierre, homme, moyenne, blond, jeune).
loisirs(pierre, rock, sf, tennis).
recherche(pierre,X):-personne(X,femme, petite, blonde, jeune).

personne(jean, homme, petit, brun, mur).
loisirs(jean, jazz, policiers, tennis).
recherche(jean,X):-personne(X,femme, petite,blonde, moyen).

personne(marie,femme, moyenne,blonde,moyen).
loisirs(marie,X,aventures):-musique(L),member(X,L).
recherche(marie, X):-personne( X,homme, grand, brun, moyen).

personne(eva, femme,petite, blonde, jeune).
loisirs(eva, rock, sf, X ):-sports(L), member(X,L), X\=jogging.
recherche(eva,X):-personne(X, homme, moyenne, blond, jeune).

personne(lea, femme, petite, brune, mur).
loisirs(lea, classique,aventures, natation).
recherche(lea,X):-personne(X, homme, moyenne, brun, mur).



convient_physiquement(X,Y):-recherche(X,Y), recherche(Y, X).
ont_meme_gout(X,Y):-loisirs(X,M,L,S),loisirs(Y,M,L,S),X\=Y.

couple_assortis(X,Y):-convient_physiquement(X,Y),ont_meme_gout(X,Y).

entree([foiesGras, saladeGourmande, crudites, tomatesMozza]).
viande([entrecote, magretDeCanard, dindeFermiere]).
poisson([truiteMeuniere, brochetDeLoire,cubeDeBarEnDret]).
dessert([mousseAuChocolat, sorbet, ileFlottante, poireBelleHelene]).

plat1(X):-viande(L),member(X,L);poisson(L),member(X,L).

menu3(X,Y,Z):- entree(L1),member(X,L1),plat1(Y),dessert(L2),member(Z,L2).
% nombre de pas à faire:
steps = 20000;

% Il faut donc d'abord générer "steps" réalisations de 
% la  variable uniformément distribuée entre 0 et 1
r = rand(1, steps);

% avec les commandes suivantes, élément par élément, 
% on peut sélectionner la direction des pas.
 
dx = (r  < 1/6) - ( r > 1/6 & r  <2/6);
dy = (r > 2/6 & r  < 3/6) - ( r > 3/6 & r  <4/6);
dz = (r > 4/6 & r  < 5/6) - ( r > 5/6 );

% Pour faire la somme des différents pas, on peut créer la matrice 
% triangulaire inférieure A, qui n'a que des 1 sous la diagonale:
A = tril(ones(steps,steps),-1);

% La somme incrémentale des éléments de dx se fait à l'aide de A*dx, etc:
x = A * dx;
y = A * dy;
z = A * dz;

% maintenant (x,y,z) définissent les positions successives de la marche aléatoire

% On peut donc la dessiner
plot3(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
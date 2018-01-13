clear all; close all;

% charger le ficher mesures_mua.txt
disp_vel = load('mesures_mua.txt');

% séparation de la déplacement et de la vitesse
% en deux vecteurs séparés 
deplacement = disp_vel(:,1);
vitesse = disp_vel(:,2);

% définition du temps:
M = size(deplacement,1);
t = linspace(0,10,M)';

% dessine un graphique de la déplacement et 
% de la vitesse avec le temps en abscisse
% en utilisant deux couleurs et symboles différents. 

plot(t, deplacement, 'ro:', ...
     t, vitesse, 'bd-');

% titre, legende, et noms des axes. 
legend('deplacement','vitesse');
title('MUA');
xlabel('temps');
ylabel('deplacement et vitesse');
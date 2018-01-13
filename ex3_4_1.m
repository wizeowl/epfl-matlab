clear; close all; clc;

% Generate data
x=linspace(0,6*pi,100);
y=x.*sin(x);
z=exp(x/10)-1;

% Create figure with visualization
hold on
mesh(x,y,z)
%plot3(x,y,0*z,'kx')

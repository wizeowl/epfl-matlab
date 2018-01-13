clf % clear current figure

x = linspace(-1, 1, 101);
y = linspace(-1, 1, 201);

[X,Y] = meshgrid(x, y);

Z = sin(2*pi*x) .* cos(pi*Y);

surf(X, Y, Z);
title('Surface');


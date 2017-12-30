a = 9.81;
x0 = 50;
v0 = 0;

t = linspace(1, 10, 5);
x = x0 + v0 * t + 0.5 * a * t.^2;
v = v0 + a * t;

x = x.*(.95 + .1 * rand(5, 1));
v = v.*(.95 + .1 * rand(5, 1));

A = [x v];
save -ascii mesures_mua.txt A;

function [x, v] = position_vitesse (a, x0, v0, t)

x = x0 + v0 * t + .5 * a * t.^2;
v = v0 + a * t;

end

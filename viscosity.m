function mu = viscosity (gamma_dot, lambda, nu, mu_inf, mu_zero)

p = (nu - 1) / 2;
b = 1 + (lambda * gamma_dot)^2;
d = mu_zero - mu_inf;
mu = mu_inf + d * b ^ p;

endfunction

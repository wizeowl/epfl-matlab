function gamma_dot = shearRate (D)

product = D.*D;
sigma = sum(sum(product));
gamma_dot = sqrt(.5*sigma);

end

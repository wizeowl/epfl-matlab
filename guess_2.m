function ordinateurDevine (a, b)
% function ordinateurDevine (a, b)
% Jeu : l'ordinateur doit deviner le nombre
% entier entre a et b auquel l'utilisateur pense.

% si a>b on change le rôle de a et b.
if (a > b)
  c = a; a = b; b = c;
end

% prend les parties entières de a et b
a = floor(a);
b = ceil (b);

% l'ordinateur demande à l'utilisateur de penser
% à un nombre
disp(['Pensez à un nombre entre ' num2str(a) ...
      ' et ' num2str(b)]);

% On garde trace de l'essai précédent. On l'initialise à a-1:
ancien_guess = a-1;
      
% boucle tant que l'ordinateur devine
% cette boucle est arrêtée par un break.
while (true)
  
  % comme essai, on prend le point milieu de [a,b]
  guess = ceil( (a+b)/2 );
  if ( guess == ancien_guess )
    % si l'ancien essai est le même, on y est presque : c'est
     guess = guess - 1;
  end
  
  reponse = menu(['Le nombre est ' num2str(guess) ' ? '], ...
               'oui', 'trop grand!', 'trop petit');

  if ( reponse == 1)
    disp('J''ai gagné !');
    break;
  elseif ( reponse == 2 )
    % il faut garder l'intervalle inférieur
    b = guess;
  else
    % il faut garder l'intervalle supérieur
    a = guess;
  end
  
  ancien_guess = guess;
end

end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
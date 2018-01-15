function guess(a, b)
% function guess(a, b)
% guess joey's fingers

% switch a and b
if(a > b)
  c = a; a = b; b = c;
end

a = floor(a);
b = floor(b);

number = randi([a, b], 1,1);
disp(['Guess a number between ' num2str(a) ' and ' num2str(b)]);

while (true)
  guess = input('Guesses please? ');
  if(guess == number)
    disp('Guess the hack out of here:)');
    break;
  elseif (guess < number)
    disp('Too little');
  else
    disp('Too much');
  end
end

end
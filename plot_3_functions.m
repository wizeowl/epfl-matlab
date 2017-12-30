% ask for an interval input
invalidInput = true;

while invalidInput 
  interval = input('please provide the interval: ');
  if isvector(interval) && (length(interval) == 2)
    invalidInput = false;
  else
    sprintf("You SOFAB!");
  end
end

N = input("please provide the number of plotted points: ");

x = linspace(interval(1), interval(2), int32(N));
f = 3 * x.^2 - 2 * sin(x);
g = sqrt(abs(x-3));
h = exp(-2 * x.^2);

plot(x, f, 'x', x, g, '*', x, h, 'o');

xlim(interval);
ylim([-2,10]);

saveas(gca, 'fonctions.pdf', 'pdf');
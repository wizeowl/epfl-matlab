figure(1);

x = linspace(-pi, pi, 21);
y = sin(x);
plot(x, y, 'r.o', x, cos(x), 'k.x');
title('sin et cos');
legend('sin(x)', 'cos(x)');
xlabel('Axe des xs');
ylabel('axe des ys');
ylim([-1,1]);

saveas(gca, 'myplot.pdf', 'pdf');
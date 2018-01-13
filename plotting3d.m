figure(2);

t = linspace(-2*pi, 2*pi, 200);

plot3(t, sin(t), cos(t), 'b-');
title('helice');
xlabel('x axis');
ylabel('y axis');
zlabel('z axis');

hold on;
set(2,'linewidth', 2);

plot3(sin(t), -cos(t), t, 'k-');

saveas(gca, 'plot3d.jpg', 'jpg');

%% Uppgift2
format compact

%% definiera intervallet
t = linspace(0, 2*pi);

%% definiera funktionerna
%% f(t)
f = t .* cos((3 * pi * t) / 2);

%% g(t)
g = (20 * log(1+t) ./ exp(t));

%% beräkna h(t)
h = f + g;

%% delfönster 1
figure;
subplot(2,1,1); %% rad resp kolumn.
plot(t, f, 'blue', 'linewidth', 1.5);
hold on; 
plot(t, g, 'red', 'LineWidth', 1.5);
hold off;
grid on;
title('f(t) och g(t)');
legend('f(t)= t.*cos(3*pi/2*t)', 'g(t) = 20*log(1 + t)./exp(t)');

%% delfönster 2
subplot(2, 1, 2); %% andra grafen
plot(t,h,'cyan', 'LineWidth', 1.5);
grid on;
title('h(t)');
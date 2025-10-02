%% Uppgift3
format compact

%% definiera intervallet
x = linspace(0,2*pi);

%% definiera funktionerna
f = sin(x);
g = sqrt(x.^2 + 3);
h = f + g;
i = f.* g;
j = f./ g;

%% delfönsterna + rutnät för lättre jämförelse.
%% delfönster 1 f(x)
figure;
subplot(2,3,1);
plot(x,f,'g--');
title('f(x)');
grid on;

%% delfönster 2 g(x)
subplot(2,3,3);
plot(x,g,'r--');
title('g(x)');
grid on;

%% delfönster 3 h(x)
subplot(2,3,4);
plot(x,h, 'm');
title('h(x)');
grid on;

%% delfönster 4 i(x)
subplot(2,3,5);
plot(x,i, 'k');
title('i(x)');
grid on;

%% delfönster 5 j(x)
subplot(2,3,6);
plot(x, j, 'B');
title('j(x)');
grid on;
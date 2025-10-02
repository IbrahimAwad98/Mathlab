%% uppgift 1
format compact

%% definiera intervallet (x värde mella 0 till 2)
x = linspace(0,2);

%% definiera funktionen
f = @(x) exp(atan(x.^2)-2)+ cos(x./ (x-1));

%% nu beräkna funktionsvärden
y = f(x);

%% att rita grafen (plotta)
figure(1);
plot(x,y, '--g', 'LineWidth',3); %%grön färg 
grid on; %%ett rutnät
grid minor;
title('f(x)');
xlabel('x');
ylabel('y');
%%gränser för axlarna
axis([0 2 -1 1.5]);
%%värde på axlarna.
xticks(0:0.2:2);
yticks(-1:0.25:1.5);
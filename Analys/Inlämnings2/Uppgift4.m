%% Uppgift 4
syms x
format compact

%% definiera kurvan
y = x^2 - 4*x;

%% hitta skärningspunkter
eq = y == 0;
x_limits = double(solve(eq, x));

%% hitta volymintegralen x-axel
vol_x = pi * int(y^2, x, x_limits(1), x_limits(2));
vol_x_value = double(vol_x);
disp(vol_x_value);

%% b)
%% definiera kurvan
y = 4*x^2 - 8 * x;

%% hitta skärningspunkter
x_limits = double(solve(y == 0, x));

%% hitta volymintegralen y-axel
vol_y = 2 * pi * int(abs(x*y),x,x_limits(1), x_limits(2));
vol_y_value = double(vol_y);
disp(vol_y_value);
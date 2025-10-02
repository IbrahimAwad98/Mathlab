syms x
format compact

%% definiera funktionerna
f = 3*x^2 - 6*x;
g = x^4 - 4*x^2;

%% hitta skärningspunkter
eq = f == g;
points = double(solve(eq, x));

%% definiera integral för arean
area_int = int(abs(f - g), points(1), points(2));
area_value = double(area_int);
disp("Area mellan kurvorna:");
disp(area_value);

%% b)
%% intervallet [-2, 2]
%% derivera
gdf = diff(g, x);

%% räkna kurvlängd
length_inter = int(sqrt(1 + gdf^2), x, -2, 2);
result = double(length_inter);
disp("Kurvlängden:");
disp(result);

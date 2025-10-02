%%inlämning 2.2 helt
%% Uppgift 1
disp('Uppgift 1: ');
syms x
format compact

%% definiera variabel och funktionerna
f = x + 3;
g = (3*x - 1/x + 2)^3;
%% a)
disp('a)');
l = expand(g);
disp(l);

%% b)
disp('b)');
p = (x + 1) * g;
p_expand = collect(p);
disp(p_expand);

%% c) 
disp('c)');
h = subs(g, x, f);
h_minus1 = subs(h, x, -1);
double(h_minus1);
disp(h_minus1);

%% d) 
disp('d)');
exp_part = exp(5*x - 3);
Limit_value = limit(g / exp_part, x, 3, 'right');
disp(Limit_value);


%% Uppgift 2
disp('Uppgift 2: ');
sym x;
format compact

%% definiera funktion
f = 2 * pi * x * cos(x+1);

%% a)

df4 = diff(f, x, 4);
ExaktSvar = subs(df4, x, -1);
disp(ExaktSvar);
NumSvar= double(ExaktSvar);
disp('a) ');
disp(NumSvar);

%% b)
%% derivera f f'' 
f_1 = diff(f, x);
f_2 = diff(f, x, 2);
%% definiera intervallet
x_value = linspace(-6, 6, 800);
%% konvertera dem till Mathlab.
f_func= matlabFunction(f);
f_func1= matlabFunction(f_1);
f_func2= matlabFunction(f_2);

%% räkna dem.
f_values = f_func(x_value);
f_values1 = f_func1(x_value);
f_values2 = f_func2(x_value);

%% rita med olika linjer och färger samt plotta.
figure;
plot(x_value, f_values, 'b-', 'LineWidth',1.5);
hold on;
plot(x_value, f_values1, 'r--', 'LineWidth',1.5);
plot(x_value, f_values2, 'g:', 'LineWidth',1.5);
hold off;

%% lägg till titel.
xlabel('x');
ylabel('y');
legend('f(x) = 2\pix * cos(x+1)', 'f''(x)', 'f''''(x)', 'Location', 'north');
title('f(x), f''(x), och f''''(x)');
grid on;

%% Uppgift 3
syms x
format compact

%% definiera funktionerna
f = 3*x^2 - 6*x;
g = x^4 - 4*x^2;

%% hitta skärningspunkter
eq = f == g;
points = double(solve(eq, x));

%% definiera intergral för arean
area_int = int(abs(f - g), points(1), points(2));
area_value = double(area_int);
disp(area_value)%% 

%% b)
%% intervallet [-2,2]
%% derivera
gdf = diff(g, x);
%% räkna kurvlängd
length_inter = int(sqrt(1+ gdf^2),x,-2, 2);
restult = double(length_inter);
disp(restult)

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

%% Uppgift 5
syms x y(x);
format compact

%% a)
%% definiera ekvation
deq = x^2 * diff(y, x) + y == 0;
%% lösning med villkoret y(2)
sol_eqa = dsolve(deq, y(2)== 1);
disp(sol_eqa);

%% b)
%% definiera ekvation
deq2 = diff(y, x, 2) - 4*diff(y,x) + 4*y == 5*sin(3*x);
%% lösning med villkoret y(0) = 0 och y'(0) = 0
df1 = diff(y, x);
sol_eqb = dsolve(deq2, y(0)== 0, df1(0) == 0);
disp(sol_eqb);

%% c)
%% definiera intervallen
x_a = linspace(1,5,100);
x_b = linspace(0,1,100);
%% konvertera dem till Mathlab.
y_sol_a = matlabFunction(sol_eqa);
y_sol_b = matlabFunction(sol_eqb);
%% rita, plotta och titel
figure;
% eftersom 2 figure då subplot
subplot(1,2,1);
fplot(y_sol_a, [1, 5]);
title('Del a');
xlabel('x');
grid on;
%% andra figure
subplot(1, 2, 2);
fplot(y_sol_b, [0, 1], 'red');
title('Del b');
xlabel('x');
grid on;
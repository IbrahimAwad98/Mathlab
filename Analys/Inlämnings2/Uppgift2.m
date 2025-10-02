%% Uppgift 2
sym x;
format compact

%% definiera funktion
f = 2 * pi * x * cos(x+1);

%% a)
df4 = diff(f, x, 4);
ExaktSvar = subs(df4, x, -1);
disp(ExaktSvar);
NumSvar= double(ExaktSvar);
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
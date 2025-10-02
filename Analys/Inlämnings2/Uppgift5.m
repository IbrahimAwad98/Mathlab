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

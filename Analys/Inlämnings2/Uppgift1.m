%% Uppgift 1
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
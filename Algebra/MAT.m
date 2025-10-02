%%uppgift 15 
%%a
format compact;
syms t
x = 1 - t;
y = 2 + t ;
z =-1 + 2.*t;

p4 = 5.*(x) +(y) -z - 2== 0;
s = solve(p4, t);
[subs(x, t, s), subs(y, t, s), subs(z, t, s)]

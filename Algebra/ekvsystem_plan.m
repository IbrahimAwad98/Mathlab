%% Uppgift 6 lös ekv.system
clc, clear
format compact
syms x y z
p1= x+y+z==10;
p2 = 2.*x -y -z == 8;
p3 = x - 2.*y + 2.*z == 2;
[x y z] = solve (p1, p2, p3, x, y, z)
% S = solve (p1, p2, p3, x, y, z, 'ReturnConditions', true) % Med returnconditions
%% b) 
clc, clear
format compact
syms x y z w
p1 = x + y + 3.*z + 4.*w == 2;
p2 = -2.*x + 2.*y + 2.*z == -4;
p3 = x + y + 2.*z + 3.*w == 1;
p4 = x - y - 2.*z - w == 1;
% [x y z w] = solve (p1, p2, p3, p4, x, y, z, w, 'ReturnConditions', true)
% Löser med parameterform
s = solve (p1, p2, p3, p4, x, y, z, w, 'ReturnConditions', true);
[s.x s.y s.z s.w]

%% Uppgift 7 skärningslinjen 

clc, clear
format compact
syms x y z
p1= 3.*x - y + 3.*z - 5 == 0;
p2 = x -y + 6.*z + 5 == 0;
s = solve (p1, p2, x, y, z, 'ReturnConditions', true)
[s.x s.y s.z]

%% b)

clc, clear
format compact

syms t
x = 2.*t;
y = t;
z = 2 + 2.*t;

p4 = 3.*(x) -(y) + 3.*(z) - 5 == 0;
s = solve(p4, t);
[subs(x, t, s), subs(y, t, s), subs(z, t, s)]


%% Uppgift 8
clc, clear
format compact
syms t
x = 1 + t;
y = -t;
z = 3 -2.*t;

insattning = (x-1).^2 + y.^2 + (z + 1).^2 == 16
s = solve(insattning, t);

[subs(x, t, s), subs(y, t, s), subs(z, t, s)]

%% Uppgift 10

clc, clear
format compact

D = [2 1 0 1; -3 4 -1 1; -1 -2 0 1; 0 3 2 1];
V = D(1:2, 2:3)

%% b
D = [2 1 0 1; -3 4 -1 1; -1 -2 0 1; 0 3 2 1];
E = [2 -3 1];
W = [D(2,2) D(2,3); E(1,1) E(1,2)];
W(1,1) = -9;
%W

% c 

det(W)

% d

inv(W)

%% Uppgift 11
clc, clear
format compact

A = [1 5 9; 2 0 5; 3 7 11];
b = [29; 26; 39];
x = [A b];5
T = rref(x)

%% b) 
clc, clear
A = [0 2 3 4; 0 0 2 3; 2 2 -5 2; 2 0 -6 9];
b = [1; 4; 4; 1];
T = rref([A b]);
rats(T)

%% c 
clc, clear
A = [1 1 3 4; -2 2 2 0; 1 1 2 3; 1 -1 -2 -1];
b = [2; -4; 1; 1];
T = rref([A b])
syms x y z w
p1 = x + y + 3.*z + 4.*w == 2;
p2 = x + y + 2.*z + 3.*w == -4;
p3 = x + y + 2.*z + 3.*w == 1;
p4 = x - y - 2.*z - 1.*w == 1;
s = solve (p1, p2, p3, p4, x, y, z, w, 'ReturnConditions', true)
[s.x s.y s.z s.w]


%% Examination A)

clc, clear
format compact

A = [5 -1 2];
B = [2 -1 -1];
C = [7 3 -2];
D = [1 -4 -3];

u = B - A;
v = D - C;

x = dot(u,v) / (norm(u) * norm(v));
% Svar
vinkelGrader = acosd(x) 
vinkelRadianer = acos(x)

%% B) matrisen X
clc, clear
format compact

A = [0 8 -1; 2 8 -7; 2 6 1];
B = [2; 4; 6];

X = (inv(A) * B)



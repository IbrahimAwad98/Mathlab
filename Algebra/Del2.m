%% Uppigft 1 
clc, clear

A = [-3 2 0];
B = [2 -1 -5];
C = [3 -1 2];
PA = C - A

%% b) kryss produkten 
clc, clear

A = [-3 2 0];
B = [2 -1 -5];
C = [3 -1 2];
v = C - A;
u = B - A;
x = dot(u,v) / (norm(u) * norm(v));
acosd(x)


%% c) avståndet
clc, clear

A = [-3 2 0];
D = [-2 -2 1];
u = D - A;
norm(u)
%% d) längd och bestäm w
clc, clear
A = [-3 2 0];
B = [2 -1 -5];
C = [3 -1 2];
v = C - A;
u = B - A;
w = 4.*u - 5.*v;
norm(w)

%% e) enhetsvektor
clear, clc

A = [-3 2 0];
B = [2 -1 -5];
C = [3 -1 2];
v = C - A;
u = B - A;
w = 4.*u - 5.*v;
w / norm(w)

%% f) normalen
clc, clear 

A = [-3, 2, 0];
B = [2, -1, -5];
C = [3, -1, 2];
n = [1 2 3];
u = B - A;
v = C - B;
Planet =cross(u, v)

%% Uppgift 2
clc, clear

t= -7;
x = 1 + 1*t
y = -2 + 2.*t
z = (-2.*t)

%% b) spetsiga vinkeln
clc, clear

u = [1 2 -2];
v = [-3 -6 7];
x = dot(u,v) / (norm(u) * norm(v));
180- acosd(x) % i grader
pi - acos(x) % i radianer 

%% Uppgift 3 area av triangel
clc, clear

A = [5 -2 -3];
B = [-8 2 -3];
C = [1 -1 -1];
AB = B - A;
BC = C - B;
P = cross(AB, BC);
area = 0.5 * norm(P)

%% Uppgift b)
clc, clear

A = [5 -2 -3];
B = [-8 2 -3];
syms t
linje = A + t * (B - A)

%% Uppgift c)

format compact
A = [5 -2 -3];
B = [-8 2 -3];
C = [1 -1 -1];
AB = B - A;
BC = C - B;
P = cross (AB, BC);

syms x y z
Q= [x y z];
D = -dot(P, A);

Planetsekv = dot(P, Q) + D
%% Uppgift 4
clc, clear
t = [1 1 1];
s = [2 -3 0];
A = [4 1 -2];
P = cross(t, s);
D = -(P(1) * A(1) + P(2) * A(2) + P(3) * A(3))
Ekvation = P(1) + P(2) + P(3) + D

%% Uppgift 5
clc, clear

u = [-3 -4 4]; 
v = [2 -3 -2]; 
r = (dot(u,v) / dot(v,v))*v % ortogonala
p = u - r % projektion
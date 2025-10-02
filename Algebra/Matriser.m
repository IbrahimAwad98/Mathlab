%% Uppgift 9
clc, clear
format compact

A = [1 4; 3 1; 5 5];
B = [-2 1; 3 -4; 0 -1];
C = [1 7; -1 2];
Addition = A(2, 1) + B(3, 2)

%% b)
clc, clear
format compact

A = [1 4; 3 1; 5 5];
B = [-2 1; 3 -4; 0 -1];
Add = 2.*A - B./2

%% c) mxn * nxk --> mxk

%% d)
A = [1 4; 3 1; 5 5];
B = [-2 1; 3 -4; 0 -1];
C = [1 7; -1 2];
X = C.^2
X = C^2 % varje element kvadratiseras individuellt

%% e)
clc, clear
format compact

A = [1 4; 3 1; 5 5];
Transponat = A'
A

%% f) (AC)' & A' * C'

A = [1 4; 3 1; 5 5];
C = [1 7; -1 2];
X = (A*C)'
Transponat = C' * A'

%%
B = [2 0 1; -1 -1 0; 1 1 1];
Ua = sym(inv(B))

%% uppgift 10
D = [2 1 0 1; 3 4 1 1; 1 2 0 1; 0 3 2 1];
%skapa vektor v
v = D(3, :);
%skapa kolonvek
u = D(2:3, 2);
% Skapa blockmatris V
V = D(1:2, 2:3);

% Skapa W och byt ut elementet
W = [D(2, 2) D(2, 3);
     D(1, 2) D(1, 3)];
W(1,1) = -9;

% Beräkna determinanten
detW = det(W);

% Beräkna inversen
invW = inv(W)


%% Uppgift 5
clc, clear

z = (-1) + i;
w = (-5).* i;
(w.^3) * z

%% b) konjugat
clc, clear
z = (-1) + i;
conj(z)
%% c) 
z = (-1) + i;
w = (-5).* i;
angle((z.^4)./(w.^2))
%% d)
clc, clear
z = (-1) + i;
w = (-5).* i;
A = (z./w)+i.^13;
real(A)

%% UPPGIFT 6,  p(𝑥) = 4𝑥4 + 13𝑥3 + 28𝑥2 + 27𝑥 + 18 & 𝑎(𝑥) = 𝑥2 + 2𝑥 + 3

p = [4 13 28 27 18];
polyval(p, -2)
%% b)
clc, clear
p = [4 13 28 27 18];
q = [1 2 3];
[p, q] = deconv(p, q)
%% c)
clc, clear
p = [4 13 28 27 18];
roots(p)
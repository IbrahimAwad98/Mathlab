%% Uppgift4
format compact

%% definiera intervallerna %%deifinera med 100. 
x = linspace(-1, 4, 100);
y = linspace(-2, 3, 100);

%% genererar ett rutnät som ligger jämnt fördelat i xy-planet.
[X, Y] = meshgrid(x, y);

%% definiera funktionen f(x,y)
Z = sin(X.^2) + X .* cos(Y.^2);

%% grafikfönster 1: mesh plot
figure;
mesh(x, y, Z);
title('Grafikfönster 1: Mesh(x,y,z)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

%% grafikfönster 2: surf plot
figure; %%saknades innan komplettering
surf(x,y,Z);
title('Grafikfönster 2: surf(X, Y, Z)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

%% grafikfönster 3: contour plot
figure; %%saknde innan komplettering
contour(X, Y, Z);
title('Grafikfönster 3: contour(X, Y, Z)');
xlabel('x');
ylabel('y');
grid on;

%% grafikfönster 4: contourf plot
figure; %%saknades innan komplettering
contourf(X, Y, Z);
title('Grafikfönster 4: contourf(X, Y, Z)');
xlabel('x');
ylabel('y');
grid on;

%%saknades innan komplettering
figure;
surfc(X, Y, Z);
title('surfc(X, Y, Z)');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

%%jag gjorde formulering innan komplettering  så att alla i en bild men det var
%%inte så som uppgiften krävde. 
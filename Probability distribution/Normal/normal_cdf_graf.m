clc
clear
close all

x = 40:0.1:160;
y = normcdf(x,100,15);

plot(x,y)
grid on
title('Normalfördelning CDF')
xlabel('x')
ylabel('F(x)')

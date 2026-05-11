clc
clear
close all

x = 0:0.1:5;
y = expcdf(x,2);

plot(x,y)
grid on
title('Exponentialfördelning CDF')
xlabel('x')
ylabel('F(x)')

clc
clear
close all

x = 0:0.1:5;
y = exppdf(x,2);

plot(x,y)
grid on
title('Exponentialfördelning')
xlabel('x')
ylabel('f(x)')

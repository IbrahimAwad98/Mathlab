clc
clear
close all

x = 40:0.1:160;
y = normpdf(x,100,15);

plot(x,y)
grid on
title('Normalfördelning')
xlabel('x')
ylabel('f(x)')

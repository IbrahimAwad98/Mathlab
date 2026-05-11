clc
clear
close all

x = 0:1:15;
y = poisspdf(x,4);

stem(x,y)
grid on
title('Poissonfördelning')
xlabel('x')
ylabel('P(X=x)')

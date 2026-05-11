clc
clear
close all

x = 0:1:12;
y = binopdf(x,12,0.2);

stem(x,y)
grid on
title('Binomialfördelning')
xlabel('x')
ylabel('P(X=x)')

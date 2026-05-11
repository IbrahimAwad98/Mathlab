clc
clear
close all

% P(2 <= X <= 5)

p = binocdf(5,12,0.2) - binocdf(1,12,0.2)

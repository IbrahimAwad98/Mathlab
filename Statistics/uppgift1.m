x = 0:1:16;
yp = binopdf(x,16,0.25); %value
figure(5);
stem(x,yp); %Draw the figure

format short
x = 0:1:20;   
yp = binopdf(x,20,0.30);  % ger sannolikhetsfunktionens värden
figure(1)
stem(x,yp)

title('Binomial Probability Distribution (n=20, p=0.30)');
xlabel('Number of Successes');
ylabel('Probability');


yc = binocdf(x,20,0.30); % ger fördelningsfunktionens värden
figure(2)
stairs(x,yc) % fördelningsfunktionen är en trappstegskurva.
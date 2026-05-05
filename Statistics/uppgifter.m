
%% Övningsuppgift inför labprov 2026 (ej köteoridelen) i Matematisk Statistik (HF1012).
%
%  Läs noggrannt igenom uppgiften och testkör alla exempel i  matlab.
%
% Inför labprovet ska man känna till de fördelningar som nämns i denna
% uppgift: Binomial-, Poisson-, Exponential- och Normalfördelningen.
% Vad är det allmänna utseendet hos deras
% sannolikhets-/täthets-/fördelningsfunktioner?
% Hur ser de ut när de ritas i ett diagram?
% För en diskret stokastisk variabel, X, gäller att höjden av en stolpe i
% stolpdiagrammet för sannolikhetsfunktionen är lika med höjden av
% trappsteget i trappstegsdiagrammet för fördelningsfunktionen,
% avlästa vid samma x-värde. 
%
% Man behöver också ha lärt sig den grundläggande teorin för kursen.
% Dessutom ska man förstå hur matlabkommandon i denna övningsuppgift
% används. Vad betyder parametrarna i kommandona och vilka värden ska man
% ge dem?
%
%
%% Diskreta fördelningar.
%
% Användbara kommandon: binopdf, binocdf, poisspdf och poisscdf, som ger
% sannolikhets- resp fördelningsfunktionerna för binomial- resp
% poissonfördelning.
% Binomialfördelningen, Bin(n,p), har väntevärdet E(X)=n*p.
% Fördelningens topp ligger nära detta värde.
%
%
% Exempel:
% Antag att man gör 20 försök med en sannolikhet att "lyckas" på 30% i
% varje enskilt försök. Antalet lyckade försök av dessa 20 är då en
% stokastisk variabel, X, som är binomialfördelad. Denna fördelning
% åskådliggörs med ett stolpdiagram (stem):

format short
x = 0:1:20;   % skapar en vektor med heltalen från 0 till 20.
yp = binopdf(x,20,0.30);  % ger sannolikhetsfunktionens värden
figure(1)
stem(x,yp)

yc = binocdf(x,20,0.30); % ger fördelningsfunktionens värden
figure(2)
stairs(x,yc) % fördelningsfunktionen är en trappstegskurva.

% Studera de båda diagrammen. Hur hänger de ihop?

% Sannolikheten att X = 7 (exakt 7 försök lyckas)
% beräknas först med sannolikhetsfunktionen och sedan med
% fördelningsfunktionen.
sanno1_pdf = binopdf(7,20,0.30)
sanno1_cdf = binocdf(7,20,0.30)-binocdf(6,20,0.30)

% Sannolikheten att X är minst 4 och högst 7 beräknas med
% sannolikhetsfunktionen och med fördelningsfunktionen.
sanno2_pdf = binopdf(4,20,0.30)+binopdf(5,20,0.30)+binopdf(6,20,0.30)+binopdf(7,20,0.30)
sanno2_cdf = binocdf(7,20,0.30)-binocdf(3,20,0.30)

%%
% Exempel:
% En viss händelse inträffar slumpmässigt och i genomsnitt lambda gånger
% per tidsenhet och därmed i genomsnitt mu=lambda*t gånger under det givna tidsintervallet t.
% Antalet gånger som denna händelse inträffar under det givna
% tidsintervallet, t, är då en poissonfördelad stokastisk variabel (Po(mu)).
% Poissonfördelningen, Po(mu), har väntevärdet mu, och en topp nära detta
% värde.
%
% Antag att lambda=2.00 och t=10 (minuter). 
% Åskådliggör denna fördelnings sannolikhetsfunktion med ett stolpdiagram och
% fördelningsfunktion med ett trappstegsdiagram (välj lämpligt intervall på x-axeln).
x = 0:1:40;
yp_2 = poisspdf(x,20);
figure(3)
stem(x,yp_2)
yc_2 = poisscdf(x,20);
figure(4)
stairs(x,yc_2)
% 
% Tänk noga (!) igenom följande: Vilket samband finns mellan de båda
% diagrammen du just ritat? Vad betyder x-värden resp y-värden i
% diagrammen? Hur bestämmer man sannolikheter för olika värden på den
% stokastiska variabeln från diagrammen?

% Bestäm fördelningens väntevärde och varians.
[vante, varians] = poisstat(20)

% Bestäm sannolikheten att händelsen inträffar minst 18 och högst 22 gånger
% under ett tidsintervall på 10 minuter, dels med hjälp av sannolikhetsfunktionen och
% dels med hjälp av fördelningsfunktionen.
sanno3_pdf = poisspdf(18,20) + poisspdf(19,20) + poisspdf(20,20) + poisspdf(21,20) + poisspdf(22,20)
sanno3_cdf = poisscdf(22,20) - poisscdf(17,20)


%% Kontinuerliga fördelningar.
%
% Täthets- och fördelningsfunktioner ges av normpdf och normcdf (för normalfördelning)
% samt exppdf och expcdf (för exponentialfördelning).
% En normalfördelad (N(mu,sigma)) stokastisk variabel, X, har väntevärdet mu
% och standardavvikelsen sigma. Täthetsfunktionen har en topp vid mu, 
% och är mer utbredd ju större sigma är.
% normcdf för x är integralen (arean) av normpdf från minus oändligheten till x.
% normcdf är monotont växande.
%
% Exempel:
% En stokastisk variabel, X, är normalfördelad, med väntevärde 8.0 och
% standardavvikelse 1.7.
% Åskådliggör täthets- och fördelningsfunktionerna för denna fördelning.

x = 0:0.10:15;
yp_3 = normpdf(x, 8.0, 1.7); 
figure(5)
plot(x,yp_3)
grid on % eftersom fördelningen är kontinuerlig passar inte stolpdiagram här.

yc_3 = normcdf(x, 8.0, 1.7); 
figure(6)
plot(x,yc_3)
grid on 

% Bestäm sannolikheten att X antar ett värde mellan 4,50 och 5,80.
sanno = normcdf(5.80, 8.0, 1.7) - normcdf(4.50, 8.0, 1.7)

% Bestäm x, så att P(X < x) = 0,75, d.v.s. med en sannolikhet på 75% (percentil)
% antar den stokastiska variabeln X ett mindre värde än x.
% Kommandot norminv kan användas här.
x75 = norminv(0.75, 8.0, 1.7) 

%%
% Exempel:
% En stokastisk variabel är exponentialfördelad med väntevärdet 8,0. 
% Exponentialfördelningens täthetsfunktion är en avtagande exponentialkurva.
% Den har värdet 0 för alla negativa x och har sitt största värde på
% y-axeln (d.v.s. x=0).
% expcdf för x är integralen (arean) av exppdf från minus oändligheten till x,
% d.v.s. från 0 till x, för denna fördelning.
% expcdf är monotont växande.
% 
% Åskådliggör täthets- och fördelningsfunktionerna.
x = 0:0.10:25;
yp_4 = exppdf(x, 8.0); 
figure(7)
plot(x,yp_4)
yc_4 = expcdf(x, 8.0);
figure(8) 
plot(x,yc_4)

% Tänk noga (!) igenom följande: Vilket samband finns mellan de båda
% diagrammen du just ritat? Vad betyder x-värden resp y-värden i
% diagrammen? Hur bestämmer man sannolikheter för olika värden på den
% stokastiska variabeln från diagrammen?

% Bestäm sannolikheten att X antar ett värde mellan 0 och 8.0.
sanno2 = expcdf(8.0, 8.0)

% Bestäm x, så att P(X < x) = 0,50, d.v.s. bestäm medianen för
% fördelningen.
x50 = expinv(0.50, 8.0) 


%% Centrala gränsvärdessatsen.
%
% Exempel:
% Vi ritar binomialfördelningar och normalfördelningar
% (med samma väntevärde och standardavvikelse) parvis i samma diagram och jämför.
% Precis som centrala gränsvärdessatsen förutsäger så blir
% binomialfördelningen mer lik en normalfördelning ju större värde n har.

n = 2  % 2 försök...
p = 0.80 % ..som vardera lyckas med en sannolikhet på 80%
vante = n*p % väntevärdet
stav = sqrt(n*p*(1-p)) % standardavvikelsen

xd_values = 0:1:2;
yd_values = binopdf(xd_values,n,p); % binomialfördelningen
x_values = 0:0.1:2;
y_values = normpdf(x_values,vante,stav); % motsvarande normalfördelning
figure(9)  % Rita båda fördelningarna i samma diagram
plot(x_values,y_values)  % kontinuerlig fördelning - kurva
hold on % håller kvar kurvan när stolpdiagrammet ritas i samma figur
stem(xd_values, yd_values) % diskret fördelning - stolpdiagram

% Vi gör n lite större och plottar igen:
n = 4  % 4 försök...
p = 0.80 % ..som vardera lyckas med en sannolikhet på 80%
vante = n*p % väntevärdet
stav = sqrt(n*p*(1-p)) % standardavvikelsen

xd_values = 0:1:4;
yd_values = binopdf(xd_values,n,p);
x_values = 0:0.1:4;
y_values = normpdf(x_values,vante,stav);
figure(10)
plot(x_values,y_values) 
hold on
stem(xd_values, yd_values)

%%
% Exempel:
% Rita på samma sätt upp binomialfördelningen och motsvarande normalfördelning
% för n = 10 och n = 25

n = 10 
p = 0.80 
vante = n*p 
stav = sqrt(n*p*(1-p)) 

xd_values = 0:1:10;
yd_values = binopdf(xd_values,n,p);
x_values = 0:0.1:10;
y_values = normpdf(x_values,vante,stav);
figure(11)
plot(x_values,y_values) 
hold on
stem(xd_values, yd_values)
%

n = 25
p = 0.80 
vante = n*p
stav = sqrt(n*p*(1-p))

xd_values = 0:1:25;
yd_values = binopdf(xd_values,n,p);
x_values = 0:0.1:25;
y_values = normpdf(x_values,vante,stav);
figure(12)
plot(x_values,y_values) 
hold on
stem(xd_values, yd_values)
%
% SLUT!
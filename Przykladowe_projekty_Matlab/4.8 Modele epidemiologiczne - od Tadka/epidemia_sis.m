% epidemia_sis.m
%
% AGH Akademia Górniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% systemów biologicznych oraz ich symulacji w œrodowisku MATLAB
%
% Przyk³ad 4.16
% Równanie modelu SIS - osobniki zainfekowane
%---------------------------------------------------------------------

% Dane wejœciowe modelu:
t0 = 0;  % czas pocz¹tkowy symulacji
tk = 10; % czas koñcowy symulacji
h = 0.1; % krok rozwi¹zywania (pocz¹tkowy)
I0 = 0.7;% proporcja osobników zainfekowanych w chwili t0
 
% Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Dormand-Prince
[wektor_czasu, osobniki_zainfekowane] = ode45(@model_matematyczny_sis, [t0, tk], I0, h);
 
% Wyznaczenie liczby osobników podatnych
osobniki_podatne = 1 - osobniki_zainfekowane;
 
% Przebiegi liczby osobników zainfekowanych i podatnych w zale¿noœci od czasu
hold on;
plot(wektor_czasu, osobniki_podatne, 'r-');
plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
 
% Ustawienie legendy, tytu³u, opisów osi oraz uwidocznienie siatki
legend('Osobniki podatne', 'Osobniki zainfekowane');
title('Model epidemii SIS (S_0 = 0.99, I_0 = 0.01, \delta > 1)');
xlabel('Czas');
ylabel('Proporcja populacji');
grid on
hold off;
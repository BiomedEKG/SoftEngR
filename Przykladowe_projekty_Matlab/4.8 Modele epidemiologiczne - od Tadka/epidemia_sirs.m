% epidemia_sirs.m 
%
% AGH Akademia Górniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% systemów biologicznych oraz ich symulacji w œrodowisku MATLAB
%
% Przyk³ad 4.18
% Model epidemii SIRS (podatny, zainfekowany, uodporniony, podatny)
%---------------------------------------------------------------------

% Dane wejœciowe modelu:
t0 = 0;   % czas pocz¹tkowy symulacji
tk = 20;  % czas koñcowy symulacji
h = 0.5;  % krok rozwi¹zywania (pocz¹tkowy)
S0 = 0.4; % proporcja osobników podatnych w chwili pocz¹tkowej (t0)
I0 = 0.6; % proporcja osobników zainfekowanych w chwili pocz¹tkowej (t0)
R0 = 0.0; % proporcja osobników uodpornionych w chwili pocz¹tkowej (t0)

% Rozwi¹zanie równania ró¿niczkowego metod¹ przybli¿on¹ Dormand-Prince
[wektor_czasu, rezultat] = ode45(@model_matematyczny_sirs, [t0, tk], [S0, I0, R0], h);

% Wyznaczenie proporcji osobnikow podatnych, zainfekowanych i uodpornionych
osobniki_podatne = rezultat(:, 1);
osobniki_zainfekowane = rezultat(:, 2);
osobniki_uodpornione =  rezultat(:, 3);

% Przebiegi proporcji osobników podatnych, zainfekowanych i uodpornionych w zale¿noœci od czasu
hold on;
plot(wektor_czasu, osobniki_podatne, 'r-');
plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
plot(wektor_czasu, osobniki_uodpornione, 'g-'); 

% Ustawienie legendy, tytu³u, opisów osi oraz uwidocznienie siatki
legend('Osobniki podatne', 'Osobniki zainfekowane', 'Osobniki uodpornione');
title('Model epidemii SIRS (S_0 = 0.6, I_0 = 0.4, R_0 = 0, \delta < 1)');
xlabel('Czas');
ylabel('Proporcja populacji');
grid on
hold off;

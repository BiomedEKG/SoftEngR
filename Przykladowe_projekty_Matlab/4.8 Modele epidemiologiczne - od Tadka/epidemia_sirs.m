% epidemia_sirs.m 
%
% AGH Akademia Górniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% systemów biologicznych oraz ich symulacji w środowisku MATLAB
%
% Przykład 4.18
% Model epidemii SIRS (podatny, zainfekowany, uodporniony, podatny)
%---------------------------------------------------------------------

% Dane wejściowe modelu:
t0 = 0;   % czas początkowy symulacji
tk = 20;  % czas końcowy symulacji
h = 0.5;  % krok rozwiązywania (początkowy)
S0 = 0.4; % proporcja osobników podatnych w chwili początkowej (t0)
I0 = 0.6; % proporcja osobników zainfekowanych w chwili początkowej (t0)
R0 = 0.0; % proporcja osobników uodpornionych w chwili początkowej (t0)

% Rozwiązanie równania różniczkowego metodą przybliżoną Dormand-Prince
[wektor_czasu, rezultat] = ode45(@model_matematyczny_sirs, [t0, tk], [S0, I0, R0], h);

% Wyznaczenie proporcji osobnikow podatnych, zainfekowanych i uodpornionych
osobniki_podatne = rezultat(:, 1);
osobniki_zainfekowane = rezultat(:, 2);
osobniki_uodpornione =  rezultat(:, 3);

% Przebiegi proporcji osobników podatnych, zainfekowanych i uodpornionych w zależności od czasu
hold on;
plot(wektor_czasu, osobniki_podatne, 'r-');
plot(wektor_czasu, osobniki_zainfekowane, 'b-'); 
plot(wektor_czasu, osobniki_uodpornione, 'g-'); 

% Ustawienie legendy, tytułu, opisów osi oraz uwidocznienie siatki
legend('Osobniki podatne', 'Osobniki zainfekowane', 'Osobniki uodpornione');
title('Model epidemii SIRS (S_0 = 0.6, I_0 = 0.4, R_0 = 0, \delta < 1)');
xlabel('Czas');
ylabel('Proporcja populacji');
grid on
hold off;

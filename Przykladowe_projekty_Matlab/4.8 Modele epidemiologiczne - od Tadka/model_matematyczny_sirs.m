% model_matematyczny_sirs.m
%
% AGH Akademia Górniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% systemów biologicznych oraz ich symulacji w œrodowisku MATLAB
%
% Przyk³ad 4.18
% Równania modelu SIRS - osobniki podatne, zainfekowane i uodpornione
%---------------------------------------------------------------------

function [rezultat] = model_matematyczny_sirs(t, arg) 
beta = 0.4;           % wspó³czynnik zaka¿eñ
lambda = 0.1;         % wspó³czynnik (uodpornieñ) wyzdrowieñ
alfa = 0.1;           % wspó³czynnik utraty odpornoœci

% uk³ad równañ ró¿niczkowych (4.68)
rezultat(1) = -beta*arg(1)*arg(2) + alfa*arg(3);  
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2);  
rezultat(3) = lambda*arg(2) - alfa*arg(3);         
rezultat = rezultat';

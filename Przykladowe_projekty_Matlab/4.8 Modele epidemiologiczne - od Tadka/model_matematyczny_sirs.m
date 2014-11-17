% model_matematyczny_sirs.m
%
% AGH Akademia G�rniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% system�w biologicznych oraz ich symulacji w �rodowisku MATLAB
%
% Przyk�ad 4.18
% R�wnania modelu SIRS - osobniki podatne, zainfekowane i uodpornione
%---------------------------------------------------------------------

function [rezultat] = model_matematyczny_sirs(t, arg) 
beta = 0.4;           % wsp�czynnik zaka�e�
lambda = 0.1;         % wsp�czynnik (uodpornie�) wyzdrowie�
alfa = 0.1;           % wsp�czynnik utraty odporno�ci

% uk�ad r�wna� r�niczkowych (4.68)
rezultat(1) = -beta*arg(1)*arg(2) + alfa*arg(3);  
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2);  
rezultat(3) = lambda*arg(2) - alfa*arg(3);         
rezultat = rezultat';

% model_matematyczny_sir.m
%
% AGH Akademia G�rniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% system�w biologicznych oraz ich symulacji w �rodowisku MATLAB
%
% Przyk�ad 4.17
% R�wnania modelu SIR - osobniki podatne i zainfekowane
%---------------------------------------------------------------------

function [rezultat] = model_matematyczny_sir(t, arg) 
beta = 0.1;    % wsp�czynnik zaka�e�
lambda = 0.5;  % wsp�czynnik (uodpornie�) wyzdrowie�
 
% uk�ad r�wna� r�niczkowych (4.65)
rezultat(1) = -beta*arg(1)*arg(2);                
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2); 
rezultat = rezultat';

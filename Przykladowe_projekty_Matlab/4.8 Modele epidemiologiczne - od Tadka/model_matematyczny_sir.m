% model_matematyczny_sir.m
%
% AGH Akademia Górniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% systemów biologicznych oraz ich symulacji w œrodowisku MATLAB
%
% Przyk³ad 4.17
% Równania modelu SIR - osobniki podatne i zainfekowane
%---------------------------------------------------------------------

function [rezultat] = model_matematyczny_sir(t, arg) 
beta = 0.1;    % wspó³czynnik zaka¿eñ
lambda = 0.5;  % wspó³czynnik (uodpornieñ) wyzdrowieñ
 
% uk³ad równañ ró¿niczkowych (4.65)
rezultat(1) = -beta*arg(1)*arg(2);                
rezultat(2) = beta*arg(1)*arg(2) - lambda*arg(2); 
rezultat = rezultat';

% model_matematyczny_sis.m
%
% AGH Akademia G�rniczo-Hutnicza w Krakowie
% Laboratorium Biocybernetyki
%
% Wprowadzenie do modelowania cybernetycznego 
% system�w biologicznych oraz ich symulacji w �rodowisku MATLAB
%
% Przyk�ad 4.16
% R�wnanie modelu SIS - osobniki zainfekowane
%---------------------------------------------------------------------

function [I] = model_matematyczny_sis(t, arg) 
alfa = 0.3;       % wsp�czynnik �miertelno�ci
beta = 0.2;       % wsp�czynnik zaka�e�
gamma = 0.3;      % wsp�czynnik wyzdrowie�
 
% R�wnanie r�niczkowe (4.55)
I = -beta*arg^2 + (beta - (alfa + gamma))*arg;

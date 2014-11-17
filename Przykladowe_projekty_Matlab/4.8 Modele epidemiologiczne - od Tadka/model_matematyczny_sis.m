% model_matematyczny_sis.m
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

function [I] = model_matematyczny_sis(t, arg) 
alfa = 0.3;       % wspó³czynnik œmiertelnoœci
beta = 0.2;       % wspó³czynnik zaka¿eñ
gamma = 0.3;      % wspó³czynnik wyzdrowieñ
 
% Równanie ró¿niczkowe (4.55)
I = -beta*arg^2 + (beta - (alfa + gamma))*arg;

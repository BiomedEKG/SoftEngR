sim SImple
hold on;
plot(tout, S, 'r-');
plot(tout, I, 'b-'); 

legend('Osobniki podatne', 'Osobniki zainfekowane');
title('\bf Model epidemii SIR (S_0 = 0.99, I_0 = 0.01, \delta > 1)');

xlabel('Czas');
ylabel('Proporcja populacji');
grid on

figure
plot(I,S);
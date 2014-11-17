sim SIRek
hold on;
plot(tout, S, 'r-');
plot(tout, I, 'b-'); 
plot(tout, R, 'g-'); 

legend('Osobniki podatne', 'Osobniki zainfekowane', 'Osobniki uodpornione');
title('\bf Model epidemii SIR (S_0 = 0.9, I_0 = 0.1, R_0 = 0, \delta > 1)');

xlabel('Czas');
ylabel('Proporcja populacji');
grid on
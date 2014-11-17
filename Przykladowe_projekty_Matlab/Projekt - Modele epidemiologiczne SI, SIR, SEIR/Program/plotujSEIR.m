%sim SIERek_umierajoR
sim SIERek
hold on;
plot(tout, S, 'r-');
plot(tout, E, 'm-');
plot(tout, I, 'b-'); 
plot(tout, R, 'g-');

%legend('Osobniki podatne', 'Osobniki w fazie utajonej', 'Osobniki zainfekowane', 'Osobniki uodpornione');
title('\bf Model epidemii SEIR - Przyk³ad 6');

xlabel('Czas');
ylabel('Proporcja populacji');
grid on;
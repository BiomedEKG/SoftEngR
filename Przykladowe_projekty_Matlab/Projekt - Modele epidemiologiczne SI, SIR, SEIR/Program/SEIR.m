beta = 0.7;    % wsp�czynnik zaka�e�
lambda = 0.01; % wsp�czynnik (uodpornie�) wyzdrowie�
epsilon = 0.9; % wsp�czynnik nara�enia? fazy utajonej? utajone stadium choroby
               % osobnik jest zara�ony, cho� sam nie jest jeszcze
               % zainfekowany
umier = 0.05;
delta = epsilon*beta/((umier+lambda)*(umier+epsilon))
delta1 = beta/lambda
%delta2 = (beta+epsilon)/lambda
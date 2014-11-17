beta = 0.7;    % wspó³czynnik zaka¿eñ
lambda = 0.01; % wspó³czynnik (uodpornieñ) wyzdrowieñ
epsilon = 0.9; % wspó³czynnik nara¿enia? fazy utajonej? utajone stadium choroby
               % osobnik jest zara¿ony, choæ sam nie jest jeszcze
               % zainfekowany
umier = 0.05;
delta = epsilon*beta/((umier+lambda)*(umier+epsilon))
delta1 = beta/lambda
%delta2 = (beta+epsilon)/lambda
 x = (1000:.01:1000.07)';
 y = [1 4 3 4 1 2 1 4]';
 plot(x,y,':o')

A =  vander(x);
C = cond(A);

coeff = A\y;
hold on
plot(x , A*coeff,'r')

z = (x - mean(x))/std(x);
A =  vander(z);
C = cond(A);

coeff = A\y;
hold on
plot(x , [y A*coeff])
legend('a','b')
A = gallery('frank',10);
cond(A)
[U S V] = svd(A);
C = S(1,1)/S(10,10);
inv(A)-inv(A+eps*eye(size(A)))
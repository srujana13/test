A = ones(3);
[U S V] = svd(A)
A = gallery('pei',5,-5);
[U S V] = svd(A)
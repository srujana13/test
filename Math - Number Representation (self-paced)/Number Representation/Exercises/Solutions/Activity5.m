A = [0.780 0.563; 0.913 0.659];
b = [0.217; 0.254];

x1 = A\b;
x2 = inv(A)*b;

A = gallery('lehmer',1000);
b = ones(1000,1);

tic
for i=1:25
    x1 = A\b;
end
toc

tic
for i=1:25
    x2 = inv(A)*b;
end
toc
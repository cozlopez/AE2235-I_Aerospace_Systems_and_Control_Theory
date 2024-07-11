%INCOMING FROM VARIABLES_5_02_3
rng(9)
a = randn(5, 5);
a = round(a)
a(6,:) = [-2:1:2];
a(:,6) = (0:5)';
ans=  nnz(a)

% NEW CODE
b=24
whos("a")
size(a)
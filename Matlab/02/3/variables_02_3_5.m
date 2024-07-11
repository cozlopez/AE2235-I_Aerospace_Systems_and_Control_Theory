rng(5)
a = rand(5, 5);
t = toeplitz(1:5)
m = [a' ; t]  
sum(m(:,1))  



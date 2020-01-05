clear
rng default
A = rand(1000);
ind = A>=0.5;
num = sum(ind(:))

load NDM
mean(A(:))
std(A(:))       %无偏估计
std(A(:),1)     %矩估计与最大似然估计

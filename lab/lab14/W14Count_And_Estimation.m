clear
rng default
A = rand(1000);
ind = A>=0.5;
num = sum(ind(:))

load NDM
mean(A(:))
std(A(:))       %��ƫ����
std(A(:),1)     %�ع����������Ȼ����

%% Q1
clear
rng default
A = rand(3,5);
L = A>=0.5
ind = find(A>=0.5)
%% Q2
clear
x = -3*pi:pi/15:3*pi;
y = x;
[X,Y] = meshgrid(x,y);
warning off;
Z = sin(X).*sin(Y)./X./Y;
% (1)
num = length(find(isnan(Z)))
% (2)
surf(X,Y,Z);
shading interp
% (3)
Lx = X==0;
Ly = Y==0;
X1 = X+Lx*realmin;
Y1 = Y+Ly*realmin;
Z1 = sin(X1).*sin(Y1)./X1./Y1;
num1 = length(find(isnan(Z1)))
surf(X1,Y1,Z1);
shading interp
%% Q3
clear
rng default
N = 1200;
A = rand(N);
b = rand(N,1);
tic
c = A\b;
toc

A1 = A; b1 = b;
tic
p = zeros(N,1);
q = 1:N;
a = zeros(N,1);
for j = 1:N
    [a(j),i_] = max(A1(N*(j-1)+q));
    i = q(i_); p(j) = i;
    mul = A1(:,j)/A1(i,j); mul(i) = 0;
    A1 = -mul*A1(i,:)+A1;
    b1 = -mul*b1(i)+b1;
    q(i_) = [];
end
b1 = b1(p);
x = a.\b1;
toc

err1 = norm(x-c);
b2 = A*x;
err2 = norm(b-b2);
%% Q4
% (1)
clear
load('W5Q4.mat');
[U,S,V] = svd(F);
F2 = S*V';
F3 = F2(1:6,:);
% (2)
B = F3(:,1+unidrnd(999)); C = B;
for i = 2:6
    while(rank(C) ~= i)
        C = [B,F3(:,1+unidrnd(999))];
    end
    B = C;
end
F4 = B\F3;
F5 = abs(F4) > 1e-9;
k = find(F5(:,1));
ind = logical(sum(F5(k,:)));
rank1 = rank(F(:,ind),1e-9)
rank0 = rank(F(:,~ind),1e-9)
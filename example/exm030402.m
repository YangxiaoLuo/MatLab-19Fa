%exm030402 
clear
rng('default')			%
m=100;p=300;n=200;
A=randn(m,p)+1j*randn(m,p);	%
B=randn(p,n)+1j*randn(p,n);	%  

tic							%
Dc=exm030402_1(A,B);	%
Tc=toc;					%  

tic
Dm=A*B;					%
Tm=toc;					%  

RE=abs((Dm-Dc)./Dm);	%
re=max(RE(:));			%
tmc=Tm/Tc;				%
fprintf('两种编码所得矩阵间的最大元素相对误差为        %6.4e\n', re)
fprintf('“直接乘算符法”耗时与“标量循环法”耗时之比为  %6.4e\n',tmc)  






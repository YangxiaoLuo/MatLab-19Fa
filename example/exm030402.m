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
fprintf('���ֱ������þ��������Ԫ��������Ϊ        %6.4e\n', re)
fprintf('��ֱ�ӳ����������ʱ�롰����ѭ��������ʱ֮��Ϊ  %6.4e\n',tmc)  






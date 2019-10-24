%exm040305 

rng default,rng(2)				%
N=10000;
a=randn(N+2,1);					
A=[a(1:N),a(2:N+1),a(3:N+2)];	%
A(1:4,:)							%
CA=corrcoef(A)					%  

clear
rng(5)							%
N=10000;						%
A=rand(N,3);					%
B=randn(N,3);					%
C=rand(N,3);					%
RAB=corrcoef(A(:),B(:))		%
RAC=corrcoef(A,C)			%  

clear
N=10000;
rng(17)
a=randn(1,5)					%
A=rand(N,3);
rng(18)						%
b=randn(1,5)					%
B=rand(N,3);
CAB=corrcoef([A,B])			%  

clear
N=1e4;
rng default			%
a=rand(N,1);
rng(0,'v4')			%
b=rand(N,1);
Cab=corrcoef(a,b)  




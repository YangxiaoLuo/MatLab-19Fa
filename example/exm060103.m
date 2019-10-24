%exm060103

K=5;
A = zeros(K,K) ;					%
for m = 1:K						%
	for n = 1:K					%
		A(m,n) = 1/(m+n -1);
	end
end
format rat
A
format  

clear
tic								%
K=1000;
for m = 1:K
	for n = 1:K
		A1(m,n) = 1/(m+n -1);
	end
end
t1=toc							%  

tic
K=1000;
A2 = zeros(K,K);				%
for m = 1:K
	for n = 1:K
		A2(m,n) = 1/(m+n -1);
	end
end
t2=toc  

tic
N=1000;
n=repmat(1:N,N,1);
m=n';
A3=1./(n+m-1);
t3=toc  






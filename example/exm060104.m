%exm060104

clear,clc 
n=12;
[A,n]=exm060104_ZZY(n);
s0=round(n*(n*n+1)/2);	% 
disp([int2str(n),' 阶魔方矩阵的标称和是   ',int2str(s0)])
Ns0=round(2*(n+1));	% 
B=A';
SC=sum(A);				% 
SR=sum(B);				%
	Sd=sum(diag(A)); 		%
	Sdi=sum(diag(B));		% 
LS=[SC,SR,Sd,Sdi]==s0;	%
NS=round(sum(LS));		%
if NS==Ns0
	disp('经验证，A是魔方矩阵。')
else
	disp('经验证，A不是魔方矩阵。')
end  

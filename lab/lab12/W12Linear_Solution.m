%% Q9 存在唯一解的情况
A=magic(3);			%产生3阶魔方阵
b=ones(3,1);			%（3*1）全1列向量
R1 = rank(A),R2 = rank([A,b])
[R,C]=rref([A,b])	%Gauss Jordan消去法解方程，同时判断解的唯一性
x=A\b					%矩阵除解方程
xx=inv(A)*b			%逆阵法解方程  
%% Q10已作为作业布置
%% Q11是无解的情况
A=magic(4);					%产生4阶魔方阵
b=(1:4)';	
R3 = rank(A),R4 = rank([A,b])
[R,C]=rref([A,b])			%发现无解
x = A\b
A*x
err1 = norm(A*x-b)
%% M-P伪逆，常用于满秩非方阵，若列满秩则pinv(A)=inv(A'*A)*A'
x=pinv(A)*b		%非准确解
b_pinv=A*x		%验算 
err2 = norm(b_pinv-b)
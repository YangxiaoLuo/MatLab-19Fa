%% Q9 ����Ψһ������
A=magic(3);			%����3��ħ����
b=ones(3,1);			%��3*1��ȫ1������
R1 = rank(A),R2 = rank([A,b])
[R,C]=rref([A,b])	%Gauss Jordan��ȥ���ⷽ�̣�ͬʱ�жϽ��Ψһ��
x=A\b					%������ⷽ��
xx=inv(A)*b			%���󷨽ⷽ��  
%% Q10����Ϊ��ҵ����
%% Q11���޽�����
A=magic(4);					%����4��ħ����
b=(1:4)';	
R3 = rank(A),R4 = rank([A,b])
[R,C]=rref([A,b])			%�����޽�
x = A\b
A*x
err1 = norm(A*x-b)
%% M-Pα�棬���������ȷǷ�������������pinv(A)=inv(A'*A)*A'
x=pinv(A)*b		%��׼ȷ��
b_pinv=A*x		%���� 
err2 = norm(b_pinv-b)
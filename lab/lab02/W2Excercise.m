clear all
%% ����1
a = 1/0
b = -1/0
c = 0/0

%% ����2
p = [1 0 4.75 2.5];
R = roots(p)
real_root = R(imag(R)==0)
nthroot(p,3);%��һ�䲢���ԣ�ֻ����������ϵ�������η���
syms x
f = x^3 + 4.75*x + 2.5;
S1 = solve(f)
syms x real
f = x^3 + 4.75*x + 2.5;
S2 = solve(f)
% ��һ�ַ���
% fun = @(x) x^3 + 4.75 * x + 2.5; %�����˺������
% real_root_2 = fzero(fun,0) %��0Ϊ������һ�������ĸ�

%% ����3
clear all %�����Mupad�ڴ棬x���޶�Ϊʵ��
syms n x
f = symsum((n+1)/factorial(n)*x^n,n,1,inf)

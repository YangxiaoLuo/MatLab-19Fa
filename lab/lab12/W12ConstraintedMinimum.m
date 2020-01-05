%% ��ϰ1
clear,clc
f = @(x) x(1)^2 + x(2)^2 + x(1)*x(2)/3 + x(1) - x(2);
x0 = [1,1] %����ĳ�ֵ
A = [-1,-1]; b = 0; %����������ע��MATLAB������AxС�ڵ���b
[x,fval] = fmincon(f,x0,A,b)

%% ��ϰ2
f = @(x) sqrt(3)/36*x(1)^2 + x(2)^2/16 + x(3)^2/4/pi;
x0 = [2/3,2/3,2/3]
A = []; b = [];%�޲���ʽ��������
Aeq = [1,1,1]; beq = 2; %������������
[x,fval] = fmincon(f,x0,A,b,Aeq,beq)
fgt = 1/(pi+4+3*sqrt(3))%�������۽�
err = abs(fval - fgt)
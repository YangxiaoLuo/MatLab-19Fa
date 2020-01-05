%% 练习1
clear,clc
f = @(x) x(1)^2 + x(2)^2 + x(1)*x(2)/3 + x(1) - x(2);
x0 = [1,1] %合理的初值
A = [-1,-1]; b = 0; %限制条件，注意MATLAB条件是Ax小于等于b
[x,fval] = fmincon(f,x0,A,b)

%% 练习2
f = @(x) sqrt(3)/36*x(1)^2 + x(2)^2/16 + x(3)^2/4/pi;
x0 = [2/3,2/3,2/3]
A = []; b = [];%无不等式限制条件
Aeq = [1,1,1]; beq = 2; %线性限制条件
[x,fval] = fmincon(f,x0,A,b,Aeq,beq)
fgt = 1/(pi+4+3*sqrt(3))%本题理论解
err = abs(fval - fgt)
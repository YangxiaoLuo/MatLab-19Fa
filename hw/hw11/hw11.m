%% Q1
polygon
polygon(5)
try
    polygon(0.5)
catch err1
    disp(err1.message)
end
try
    polygon(2)
catch err2
    disp(err2.message)
end
%% Q2
syms x
f = @(x)x^2-cos(x)+exp(-x);
x_min1 = fminbnd(f, 0, 1);
f_min1 = f(x_min1);
df = diff(f, x);
d2f = diff(df, x);
x_old = 0;iter = 0;
while(1)
    iter = iter+1;
    x_new = x_old-double(subs(df,x,x_old)/subs(d2f,x,x_old));
    if(abs(x_new-x_old)<1e-8)
        break;
    end
    x_old = x_new;
end
x_min2 = x_new;
f_min2 = f(x_min2);
%% Q3
syms x
f = @(x)sin(x(1))+exp(x(2))+exp(x(3));
x_min = fmincon(f,[1 0 0],[],[],[],[],[],[],@Q3con);
%% Q4
%(1)
x = fminunc(@Q4func, zeros(5,1));
%% utility
function [c,ceq]=Q3con(x)
ceq = x(1)^2+x(2)^2+x(3)^2-1;
c = [];
end

function y=Q4func(x)
rng default
A = rand(5);
B = rand(5);
b = rand(5,1);
lambda = 0.1;
y = (norm(A*x-b,2)^2)/2+lambda*norm(B*x,1);
end
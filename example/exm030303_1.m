function y=exm030303_1(x)
% exm030303_1	采用传统“标量循环+条件分支”结构，计算分区间函数值 
% x					
% y					
M=length(x);
y=zeros(1,M);
for jj=1:M
    if x(jj)<=-1
        y(jj)=x(jj);
    elseif -1<x(jj)&&x(jj)<=1
        y(jj)=x(jj)^3*cos(2*pi*x(jj));
    else
        y(jj)=exp(-x(jj)+1);
    end
end


% exm060302.m		包含本地函数的脚本文件示例
x=-2:0.01:2;							%
y1=ComputeBy_ForIf(x);				%
y2=ComputeBy_Array(x);				%
e12=max(abs(y1(:)-y2(:)))				%
figure									%
plot(x,y2,'r','Linewidth',3)				%
xlabel('x'),ylabel('y')					%
grid on								%
axis([-2,2,min(min(y1)),max(max(y1))])	% 
hCBFI=@ComputeBy_ForIf;
hCBA=@ComputeBy_Array;
% ************************* *************************
function y=ComputeBy_Array(x)
% ComputeBy_Array	采用“算术、关系、逻辑数组”综合运算，计算分区间函数值
% x					函数自变量行数组
% y					函数值行数组
L1=x<=1;					%
L2=-1<x&x<=1;				%
L3=1<x;						%
y=zeros(size(x));				%
y(L1)=x(L1);						%
y(L2)=x(L2).^3.*cos(2*pi*x(L2));	%
y(L3)=exp(-x(L3)+1);				%
end
%--------------------------------------------------------------------------
function y=ComputeBy_ForIf(x)
% ComputeBy_ForIf		
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
end



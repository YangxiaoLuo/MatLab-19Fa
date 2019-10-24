% exm010501.m
t=0:pi/50:4*pi;			%定义自变量t的取值数组 
y=exp(-t/3).*sin(3*t);	%计算相应t的y数组；注意：乘法符前的小黑点<2>
plot(t,y,'-r','LineWidth',2)				%绘制曲线
grid on
axis([0,4*pi,-1,1])
xlabel('t'),ylabel('y')
%exm010206.m
a=-8;
r_a=a^(1/3)
r_n=nthroot(a,3)
p=[1,0,0,-a];
R=roots(p)
MR=abs(R(1));
t=0:pi/20:2*pi;
x=MR*sin(t);
y=MR*cos(t);
plot(x,y,'b:'),grid on
						
hold on
plot(R(2),'.','MarkerSize',30,'Color','r')
plot(R([1,3]),'o','MarkerSize',15,'Color','b')	
hold off
axis([-3,3,-3,3]),axis square
xlabel('x  (real)'),ylabel('y  (imag)')
title('\bf(-8)^{1/3}的全部立方根') 

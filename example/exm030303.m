x=-2:0.01:2;						%
y1=exm030303_1(x);				%
y2=exm030303_2(x);				% 
e12=max(abs(y1(:)-y2(:)))		%
clf									%
plot(x,y2,'r','Linewidth',3)	%
xlabel('x'),ylabel('y')			%
grid on							%
axis([-2,2,min(min(y1)),max(max(y1))])		%  


%exm040107 

x1=-50;x2=5;				%
yx=@(x)(sin(x).^2.*exp(-0.1*x)-0.5*sin(x).*(x+0.1));				%	<2>
							%
[xc0,fc0,exitflag]=fminbnd(yx,x1,x2)									%	<3>

figure
xx=-50:pi/200:5;			%
fplot(yx,[-50,5]);		%						<5>
axis([-50,5,-5,5])		%
xlabel('x'),grid on  

xx=[-23,-20,-18];		%
fc=fc0;xc=xc0;			%
for k=1:2
	[xw,fw]=fminbnd(yx,xx(k),xx(k+1));							%	<16>
	if fw<fc0
		xc=xw;
		fc=fw;
	end
end	 
fprintf('函数最小值%6.5f发生在x=%6.5f处\n',fc,xc)  






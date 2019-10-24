%exm021103 
clear all								% 	<1>
syms x y real							% 		<2>
f(x)=1-2/(1+exp(x));				% 					<3>
disp('f(x)=')
pretty(f)
sf=int(f,x)							% 				<6>  

figure
fh=fplot([f,sf],'LineWidth',3);		% 		<8>
fh(1).Color='r';							% 		<9>
fh(2).Color='g';fh(2).LineStyle=':';	% 	<10>
grid on
title('函数f(x)及其不定积分函数')
xlabel('x'),ylabel('y')
legend('\it f(x)','\it\int f(x) dx','Location','North')	% <14>

g(y)=subs(finverse(f),x,y)				% 				<15>
sg=int(g,y)								% 	<16>

gf=g(f(x))								% 			<17>
fg=f(g(y))								% 			<18> 

syms a b real					% 					<19>
ya=f(a);yb=f(b);				% 
sgyba=sg(yb)-sg(ya);		% <21>
sfba=sf(b)-sf(a);			% 	<22>
ss=sfba+sgyba-(b*f(b)-a*f(a));		% 				<23>
sss=simplify(ss,'IgnoreAnalyticConstraints',true,'Steps',200)%	<24>
								% 
isAlways(sss==0)				% 				<26>

figure										% 					<27>
a=1;b=3;
af=a+(b-a)/20*(0:20);					% 	<29>
Sfxx=[a,af,b,a];Sfxy=[0,f(af),0,0];	% 
fill(Sfxx,Sfxy,'g')						% 		<31>
hold on									% 
ag=f(a)+(f(b)-f(a))/20*(0:20);		% 	<33>
Sgyx=[0,g(ag),0,0];
Sgyy=[f(a),ag,f(b),f(a)];				% 
fill(Sgyx,Sgyy,'y')						% 	<36>
fh=fplot(f,'Color','r','LineWidth',3);	% 		<37>
plot([-5,5;0,0]',[0,0;-1,1]','k')		% 
hold off									% 
xlabel('x'),ylabel('y')
title(['验证：\it\int_{a}^{ b} f(x)dx + \int_{Y_{a}}^{Y_{b}} g(y)dy ',...
	'= [Ob*OY_{b} - Oa*Y_{a}] = bf(b)-af(a)'])	% 			<42>
text(0.1,-0.06,'O')								% 			<43>
text(a+0.1,f(a),'C'),text(b+0.1,f(b),'D')	% 
text(a-0.1,-0.03,'a'),text(b-0.1,-0.03,'b')	% 
text(-0.2,f(a),'Y_{a}','Rotation',-90)			% 
text(-0.2,f(b),'Y_{b}','Rotation',-90)			% 			<47>
text(1.4,0.3,'\it \int_{a}^{ b} f(x)dx')	% 	<48>
text(0.7,0.87,'\it \int_{Y_{a}}^{Y_{b}} g(y)dy','Rotation',-90)%<49>






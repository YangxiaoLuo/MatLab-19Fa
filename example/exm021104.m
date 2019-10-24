%exm021104 
clear all								% 
syms x y								% 
F(x,y)=sin(x^2+y)					% 					<3>
F7=taylor(F,[x,y],'Order',8)		% 		<4>

subplot(1,2,1);								% 
fsurf(F,[-2,2],'MeshDensity',30)			% 	<6>
line(0,0,F(0,0),'Marker','.','MarkerSize',20,'Color','r');	%	<7>
												% 		<8>
daspect([1,1,1])								% 	<9>
view(-16,26)									% 	<10>
camlight,camlight left						% 	<11>
xlabel('x'),ylabel('y')						% 
title('\it F(x,y)=sin(y+x^{2})')			% 					<13>
subplot(1,2,2);								% 
xx=linspace(-2,2,30);yy=xx;				% 		<15>
[X,Y]=meshgrid(xx,yy);						% 		<16>
Z=double(F7(X,Y));							% 		<17>
IZ=abs(Z)>1;									% 	<18>
C=Z;C(IZ)=-1;									% 	<19>
surf(X,Y,Z,C)									% 		<20>
line(0,0,F7(0,0),'Marker','.','MarkerSize',20,'Color','r')	%	<21>
												% 
daspect([1,1,1])								% 				<23>
axis([-2,2,-2,2,-1,1])						% 			<24>
view(-16,26)									% 		<25>
camlight,camlight left						% 			<26>
xlabel('x'),ylabel('y')
title('FµÄ8½×½Ø¶ÏÌ©ÀÕ½üËÆ') 

DF=abs(F-F7);										% 			<29>
figure												% 
xx=linspace(-0.2,0.2,50);yy=xx;				% 
[X,Y]=meshgrid(xx,yy);							% 
Z=double(DF(X,Y));								% 	<33>
surf(X,Y,Z);										% 			<34>
line(0,0,DF(0,0),'Marker','.','MarkerSize',20,'Color','r')
shading interp									% 
colorbar											% 			<37>
caxis([0,2e-9])									% <38>
camlight,camlight left							% 	<39>
view(-35,32)										% 	<40>
axis([-0.2,0.2,-0.2,0.2,-0.2e-7,1e-7])		% 			<41>
pbaspect([1,1,1])								% 
xlabel('x'),ylabel('y')
title('abs(f(x,y) - F7)')












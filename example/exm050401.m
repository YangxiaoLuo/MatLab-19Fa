%exm050401 

clear
figure
[X,Y,Z]=peaks(50);						% 
z1=min(Z(:));z2=max(Z(:));				% 
n=6;
v1=linspace(z1,0,n);					% 		<6>
v2=linspace(0,z2,n);					% 
v=[v1(1:n-1),v2];						% 	<8>
C=contourf(X,Y,Z,v);					% 		<9>
vc=v(v~=0);								% 
clabel(C,vc)								% 	<11>
hold on
contour(X,Y,Z,[0,0],...					% 				<13>
	'ShowText','on',...					% 			<14>
	'LineColor','r','LineWidth',3);	% 						<15>
hold off
colormap(jet)
colorbar
xlabel('x'),ylabel('y')
title('peaks函数的填色等位线图')


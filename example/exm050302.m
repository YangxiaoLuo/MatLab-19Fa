%exm050302 

figure						% 
x=-4:4;y=x;				% 				<2>
[X,Y]=meshgrid(x,y);	% 	<3>
Z=X.^2+Y.^2;				% 	<4>
Sh=surf(X,Y,Z)			% 			<5>
hold on					% 
stem3(X,Y,Z,'ro')		% 
hold off					% 
xlabel('x'),ylabel('y'),zlabel('z')
axis([-5,5,-5,5,0,inf])	% 
view([-84,21])			% 									<11>
colorbar					%   

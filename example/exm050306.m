%exm050306 
figure
[X,Y,Z]=peaks(30);					% 
Z(11,20)=NaN;							% 					<2>
X(18:20,9:15)=NaN;					% 		<3>
surfc(X,Y,Z)							% 				<4>
xlabel('x'),ylabel('y'),zlabel('z')
colormap(summer)
light('position',[50,-10,5])		% 
lighting flat							% 
material([0.9,0.9,0.6,15,0.4])	%   

%exm040106 

F=@(z)(2*z-1)./(z.*(z-1));					%				<1>
Path=[2+1i,-1+1i, -1-1i, 2-1i, 2+1i];	%							<2>
											%
sf=integral(F,2+1i,2+1i,'Waypoints', Path)  









%exm050502 

figure
r=@(u,v)3+sin(5.*u+2.*v);			% 	<2>
x=@(u,v)2*r(u,v).*cos(u).*sin(v);	% 
y=@(u,v)2*r(u,v).*sin(u).*sin(v);	% 
z=@(u,v)r(u,v).*cos(v);				% 				<5>
Fh=fsurf(x,y,z,[0 2*pi 0 pi]) 	% 				<6>
Fh.EdgeColor='none';				% 
camlight								% 
axis equal off						% 
CM=[autumn;flipud(autumn)];				% <10>
colormap(CM)							% 				<11>
spinmap(20,1)							% 



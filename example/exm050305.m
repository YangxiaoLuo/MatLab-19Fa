%exm050305 

figure
[X,Y,Z]=sphere(40);			% 
subplot(1,2,1)				% 
surf(X,Y,Z-1)					% 
axis equal
set(gca,'Box','on','BoxStyle','full')			% 	<6>
camlight left					% 								<7>
camlight headlight			% 
camlight right				% 								<9>
shading interp				% 									<10>
lighting gouraud				% 								<11>
material shiny				% 								<12>
colormap(gca,jet)			% 				<13>
xlabel('x'),ylabel('y')
title({'三相机光源','interp着色','轴专用色调'})	% 		<15>
subplot(1,2,2)									% 
surf(X,Y,Z-1)										% 
axis equal
set(gca,'Box','on','BoxStyle','full')							%	<19>
light('color','r','style','local')			% 		<20>
light('position',[-1,0.5,-1],'color','y')	% 				<21>
light('position',[0,-1,-1])					% 				<22>
shading flat										% 			<23>
lighting flat										% 			<24>
material default 								% 	<25>
xlabel('x'),ylabel('y'),zlabel('z')
title({'三坐标光源','flat着色','图形窗色调'})	% 		<27>
set(gcf,'Color','w')		% 					<28>  





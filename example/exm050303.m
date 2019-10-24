%exm050303 

figure('OuterPosition',[200,500,636,260])									%
x=linspace(-4,4,15);y=x;
[X,Y]=meshgrid(x,y);			% 
Z=X.^2+Y.^2;						% 
colormap(jet)						% 					<5>
subplot(1,3,1)					% 
surf(Z)
axis tight off					% 			<8>
title('Ä¬ÈÏfaceted')
subplot(1,3,2)					% 							<10>
surf(Z)							% 						<11>
shading flat
title('shading flat')
xlabel('Ix'),ylabel('Iy'),zlabel('Z')
axis tight						% 					<15>
set(gca,'Box','on','BoxStyle','full')							%	<16>
									% 
subplot(1,3,3)					% 
surf(Z),shading interp
axis tight off														%	<20>
title('shading interp')
set(gcf,'Color','w')			% 	<22>  



%exm050403 

clear,close all,figure			% 
[X,Y,Z] = meshgrid(-2:.1:2,-2:.1:2,-2:.1:2);	% 		<2>
V=X.*exp(-X.^2-Y.^2-Z.^2);		% 							<3>
[m1,ind1]=min(V(:));			% 						<4>
[m2,ind2]=max(V(:));			% 
xs=[X(ind1(1)),X(ind2(1))];	% 
ys=Y(ind1(1));zs=Z(ind1(1));	% 	<7>
slice(X,Y,Z,V,xs,ys,zs)			% 							<8>
shading interp					% 
iv=0.2;							% 						<10>
fv=isosurface(X,Y,Z,V,iv);		% 					<11>
nfv=reducepatch(fv,0.3);		% 			<12>
cbn=round((iv-m1)/(m2-m1)*64);% <14>
CM=jet;							% 
pec=CM(cbn,:);					% 			<16>
Ph=patch(nfv,'FaceColor','none',...								%	<17>
	'EdgeColor',pec)				% 				<18>
colormap(CM)						% 
colorbar							% 
caxis([m1,m2]);					% 	<21>
view([-10,15])					% 							<22>
legend(Ph,'v=0.2µ»÷µ√Ê','Location','NorthEast')% 	<23>
xlabel('x'),ylabel('y'),zlabel('z')
title('\fontsize{14}\it v=xe^{-x^{2}-y^{2}-z^{2}}')
set(gca,'Color',get(gcf,'Color'))	% 		<26>



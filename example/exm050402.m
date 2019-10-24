%exm050402 

clear
[X,Y,Z]=peaks(25);				% 
[Gx,Gy]=gradient(Z);			% 
LZ=abs(4*del2(Z));				% 		<4>
axyz=[min([X(:),Y(:),Z(:)]);...
	max([X(:),Y(:),Z(:)])];	% 
axyz=reshape(axyz,1,6);			% 			<7>  

close all							% 
F=figure('Position',[50,200,580,600]);% 	<9>
A1=subplot(3,1,1);				%						<10>
S1=surf(X,Y,Z,Z);				% 				<11>
shading interp					% 					<12>
zlabel({'z ','按高度着色'})
axis(axyz)						%					<14>
A1.Color=F.Color;				% 			<15>
camlight							% 
colormap(A1,jet)					% 					<17>
colorbar('eastoutside')			% 				<18>
caxis([min(Z(:)),max(Z(:))])	% 			<19>  

A2=subplot(3,1,2);													%	<20>
S2=surf(X,Y,Z,Gx);				% 			<21>
shading interp
S2.MeshStyle='row';				% 				<23>
S2.EdgeColor=[0.8,0.8,0.8];	% 						<24>
zlabel({'z','按x轴向梯度着色'})
axis(axyz)
A2.Color=F.Color;													%	<27>
camlight('headlight')			% 				<28>
material shiny					% 
colormap(A2,parula)				% 					<30>
colorbar('eastoutside')
caxis([min(Gx(:)),max(Gx(:))])% 	<32>  

A3=subplot(3,1,3);													%	<33>
S3=surf(X,Y,Z,LZ);				% 					<34>
shading interp
S3.MeshStyle='column';			% 				<36>
S3.EdgeColor=[0.8,0.8,0.8];										%	<37>
xlabel('x'),ylabel('y'),zlabel({'z','按曲率着色'})
axis(axyz)
A3.Color=F.Color;													%	<40>
[az,el]=view;						% 				<41>
lightangle(az,el)				% 				<42>
material shiny					% 
colormap(A3,hsv)					% 					<44>
colorbar('eastoutside')
caxis([-1,max(LZ(:))])			% 			<46>  

np=5;												% 
p=[1:-0.1:-1];p=[p,-p];p=repmat(p,1,np);	% 
for k=1:length(p)								% 			<49>
	S1.ZData=p(k)*Z;								% 			<50>
	S2.ZData=p(k)*Z;S2.CData=p(k)*Gx;		% 	<51>
	S3.ZData=p(k)*Z;S3.CData=abs(p(k))*LZ;	% <52>
	pause(0.1)									% <53>
end																		%	<54>


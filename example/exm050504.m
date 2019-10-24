%exm050504 

clear all
FH=figure('Renderer','zbuffer');			% 
x=linspace(-3*pi,3*pi,50);y=x;
[X,Y]=meshgrid(x,y);
R=sqrt(X.^2+Y.^2)+eps;						% 	<5>
Z=sin(R)./R;															%	<6>
h=surf(X,Y,Z);								% 
h.EdgeColor=[0.6,0.6,0.6];					% 
shading flat,material metal
camlight left,camlight headlight,camlight
colormap(jet);
axis([-4*pi,4*pi,-4*pi,4*pi,-0.22,1])	% 	<12>
axis off										% 
title('旋转的巴拿马草帽')
n=24;da=360/n;
MF(n)=struct('cdata',[],'colormap',[]);	% 			<16>
for ii=1:n
	rotate(h,[0 0 1],da);					% 
	drawnow									% 
	MF(ii)=getframe(FH);					% 		<20>
end

disp('按任意键，播放动画!!')
pause
fig=figure;									% 				<22>
movie(fig,MF,5,20)							% 			<23> 

figure
imshow(MF(:,3).cdata)						% 			<25>


%exm050308 

close all
clear
load trees							% 	<3>
TR=flipud(X);							% 	<4>
[X1,Y1,Z1]=sphere(30);				% 
figure
Hs1=surf(X1,Y1,Z1,TR,...			% 					<7>
	'CDataMapping','direct',...	% 		<8>
	'FaceColor','texturemap',...	% 				<9>
	'EdgeColor','none');			% 						<10>
colormap(map)							% 			<11>
axis equal off						% 
view(-179,22)							% 						<13>

hold on								% 						<14>
X2=1.7*X1;Y2=1.7*Y1;Z2=1.7*Z1;	%
mesh(X2,Y2,Z2,Z2+100)				% Z		<16>
hidden off							% 
hold off								% 							<18>
set(gcf,'Color','w')				% 

Nr=30;								% 
da=360/Nr;						% 
Ngf=Nr*3;							% 
GF(Ngf)=struct('cdata',[],'colormap',[]);	% 		<23>
E=eye(3);							% 
kk=0;
for k=3:-1:1						% 
	for ii=1:Nr					% 
		rotate(Hs1,E(k,:),da)	% 			<28>
		pause(0.1)				% 				<29>
		kk=kk+1;
		GF(kk)=getframe(gcf);	% 					<31>
	end
end

disp('按任意键，播放影片动画！')
pause
close all							% 				<34>
fig=figure;						% 							<35>
movie(fig,GF,1,10)				% 				<36>




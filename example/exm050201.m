%exm050201 

figure
x=linspace(0,1,50)'*pi/2;	% 	<2>
Y=cos(x)*(1:10);				% 			<3>
subplot(1,2,1)
Lh=plot(x,Y);					% 					<5>
title('��xֵΪ�������������')
xlabel('x'),ylabel('Y')
subplot(1,2,2)
plot(Y)						% 			<9>
title('��Y�����Ϊ�������������')
xlabel('�����'),ylabel('Y')
colormap(lines(10))
colorbar('Position',[0.5,0.155,0.033,0.8],'Ticklabels',[])

RGB=zeros(10,3);				% 
for k=1:10
	RGB(k,:)=Lh(k).Color;	% 					<14>
end
RGB								% 					<16>




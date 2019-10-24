%exm021002
clear
syms t
A=sym([sqrt(3)/2,1/2;1/2,sqrt(3)/2])		% 
G=[cos(t),-sin(t);sin(t),cos(t)];			% 
GA=G*A											%   

figure											% 
Op=[0;0];										% 
v1=[Op,A(:,1)]';v2=[Op,A(:,2)]';			% 
Lh=plot(v1(:,1),v1(:,2),'--k',v2(:,1),v2(:,2),'b',...
	A(:,1),A(:,2),'.r');				% 	<10>
axis([-1,1,-1,1]),axis square
Lh(1).LineWidth=4;Lh(2).LineWidth=4;Lh(3).MarkerSize=30;		%	<12>
Th=title(['Givens 旋转 0 度']);
Gh=legend([Lh(1),Lh(2)],{'A(:,1)','A(:,2)'},...
		'Location','southoutside',...
		'Orientation','horizontal');	% 
aa=(1:30)*12/sym(180)*pi;				% 
for k=1:30
	An=subs(GA,t,aa(k));				% 
	u1=[Op,An(:,1)]';u2=[Op,An(:,2)]';
	set(Lh(1),'XData',u1(:,1),'YData',u1(:,2))	% 		<21>
	set(Lh(2),'XData',u2(:,1),'YData',u2(:,2))
	set(Lh(3),'XData',An(1,:),'YData',An(2,:))					%	<23>
	Th.String=['Givens 旋转 ',int2str(12*k),' 度'];	% 	<24>
	if k==1;Gh.String={'An(:,1)','An(:,2)'};end	% 		<25>
	pause(0.1)							% 		<26>
end

















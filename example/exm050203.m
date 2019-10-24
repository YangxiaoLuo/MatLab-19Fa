%exm050203 

figure
t=(0:1/100:1)'*pi;					%			<2>
yy1=sin(t)*[1,-1];					%		<3>
y2=sin(t).*sin(9*t);				%		<4>
t3=pi*(0:9)/9;						%				%	<5>
y3=zeros(size(t3));					%		<6>
plot(t,yy1,'--r','LineWidth',2)	%	<7>
hold on								%
Lh2=plot(t,y2,'-bo');				%	%	<9>
Lh2.MarkerSize=4;					%<10>
Lh3=plot(t3,y3,'s');				%	<11>
set(Lh3,'MarkerSize',10,'MarkerEdgeColor',[0,1,0],...	%		<12>
	'MarkerFaceColor',[1,0.8,0])									%	<13>
hold off								%	<14>
axis([0,pi,-1,1])					%				<15>




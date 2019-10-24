%exm050206 

clear,figure
t=6*pi*(0:100)/100;
y=1-exp(-0.3*t).*cos(0.7*t);
plot(t,y,'r-','LineWidth',3)			%		<4>
hold on
plot([0;6*pi],[0.95,1.05;0.95,1.05],'LineWidth',1.5,...
	'Color',[0.5,0.5,0.5])				%				<7>
tt=t(abs(y-1)>0.05);ts=max(tt);		%				<8>
plot(ts,0.95,'bo','MarkerSize',10)	% 					<9>
hold off
axis([-inf,6*pi,0.6,inf])				% 	<11>
grid on									% 		<12>

xticks((0:6)*pi)							% 				<13>
AA=repmat('\bf\fontsize{14}\color{red}',7,1);
											% 	<14>
BB={'0','1\pi','2\pi','3\pi','4\pi','5\pi','6\pi'}';			%	<15>
											% 
CC=strcat(AA,BB);						% 	<17>
xticklabels(CC);							%					<18>
yticks([0.95,1,1.05,max(y)])					% 				<19>
ymaxs=sprintf('%.2f',max(y));					% 	<20>
yticklabels({'0.95','1.00','1.05',ymaxs});	% 		<21>

grid minor						% 					<22>
tss1={'\fontsize{12}{\alpha}=0.3','\fontsize{12}{\omega}=0.7'};%<23>
									% 
text(13.5,1.2,tss1)				% 						<25>
tss2{1}='\fontsize{12}\uparrow';									%	<26>
tss2{2}='\fontsize{16} \fontname{隶书}镇定时间';
tss2{3}=['\fontsize{14}\rmt_{s} = ' num2str(ts)];				%	<28>
									% 
text(ts,0.85,tss2,'Color','b','HorizontalAlignment','Center')%	<30>
									% 

title('\fontsize{14}\it y = 1 - e^{ -\alpha t}cos{\omegat}')%	<32>
xlabel('\it\fontsize{14}\color{red}t \rightarrow')			%	<33>
ylabel('\it\fontsize{14}y \rightarrow')			% 	<34>



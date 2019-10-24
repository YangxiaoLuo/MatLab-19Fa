%exm040301 

figure
N=100;p=0.5;				%
k=0:N;						%
pdf=binopdf(k,N,p);		%
cdf=binocdf(k,N,p);		%
yyaxis left										%		<6>
hp=plot(k,pdf,'LineWidth',2,'Marker','.','MarkerSize',15);
													%
ylim([0,0.1])										%
ylabel('pdf概率','Color',hp.Color)			%				<10>
yyaxis right										%		<11>
hc=plot(k,cdf,'Marker','o','MarkerSize',5);	%
ylim([0,1])										%
ylabel('cdf累计概率','Color',hc.Color)		%				<14>
grid on,grid('minor')	%							<15>
xlabel('k')				%
title('二项分布的概率pdf和累计概率cdf特性曲线') 
legend('pdf','cdf','Location','NorthWest')	%		<18>








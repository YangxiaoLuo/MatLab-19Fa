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
ylabel('pdf����','Color',hp.Color)			%				<10>
yyaxis right										%		<11>
hc=plot(k,cdf,'Marker','o','MarkerSize',5);	%
ylim([0,1])										%
ylabel('cdf�ۼƸ���','Color',hc.Color)		%				<14>
grid on,grid('minor')	%							<15>
xlabel('k')				%
title('����ֲ��ĸ���pdf���ۼƸ���cdf��������') 
legend('pdf','cdf','Location','NorthWest')	%		<18>








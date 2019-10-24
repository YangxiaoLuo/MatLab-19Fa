%exm040302 

mu=3;sigma=0.5;							%
x=mu+sigma*[-3:-1,1:3];
yf=normcdf(x,mu,sigma);
P=[yf(4)-yf(3),yf(5)-yf(2),yf(6)-yf(1)];
											%
xd=1:0.1:5;
yd=normpdf(xd,mu,sigma);				%
clf
for k=1:3
	%-------------------------------
		xx=x(4-k):sigma/10:x(3+k);
	yy=normpdf(xx,mu,sigma);	
	%--------------------------------------------------
	subplot(3,1,k),plot(xd,yd,'b');				%
	hold on
	fill([x(4-k),xx,x(3+k)],[0,yy,0],'g');		%
	hold off
	if k<2
 		text(3.8,0.6,'[{\mu}-{\sigma},{\mu}+{\sigma}]')
 	else
		kk=int2str(k);
		text(3.8,0.6,['[{\mu}-',kk,'{\sigma},{\mu}+',kk,'{\sigma}]'])
	end
	text(2.8,0.3,num2str(P(k)));shg
end  
xlabel('x');shg  







%exm040407 

N1=3;N2=12;
A=ones(1,(N2-N1+1));		%
M1=2;M2=9;
B=ones(1,(M2-M1+1));		%
Nc1=N1+M1;Nc2=N2+M2;		%
kcc=Nc1:Nc2;					%
%
for n=Nc1:Nc2
	w=0;
	for k=N1:N2
		kk=k-N1+1;
		t=n-k;
		if t>=M1&t<=M2
			tt=t-M1+1;
			w=w+A(kk)*B(tt);
		end
	end
	nn=n-Nc1+1;
	cc(nn)=w;					%
end
kcc,cc  

N1=3;N2=12;
a=ones(1,N2+1);a(1:N1)=0;	%
M1=2;M2=9;
b=ones(1,M2+1);b(1:M1)=0;	%
c=conv(a,b);					%
kc=0:(N2+M2);					%
kc,c  

N1=3;N2=12;
M1=2;M2=9;
A=ones(1,(N2-N1+1));		%
B=ones(1,(M2-M1+1));		%
C=conv(A,B);					%
Nc1=N1+M1;Nc2=N2+M2;		%
KC=Nc1:Nc2;					%
KC,C  


figure
subplot(2,1,1),stem(kc,c), text(20,6,'0 起点法')		%
CC=[zeros(1,KC(1)),C];										%
subplot(2,1,2),stem(kc,CC),text(18,6,'非平凡区间法')	%
xlabel('n')  





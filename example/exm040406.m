%exm040406 

tm=(t(end)+t(1))/2;		%								<1>
r=(t(end)-t(1))/2;		%
tt=(t-tm)/r;				%				<3>  

n=3;						%						<4>
M=length(tt);
X=zeros(M,n+1);
for k=1:n
	X(:,n-k+1)=(tt.^k);
end
X(:,n+1)=ones(M,1);  

Y=[CH,US];				%
a=(X\Y)'					%	<12>  

pCH=vpa(poly2sym(a(1,:)),5)		%		<13>
pUS=vpa(poly2sym(a(2,:)),5)		%		<14>  


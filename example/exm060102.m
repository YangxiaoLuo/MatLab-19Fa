%exm060102

clear;
%
for k=1:10
	a(k)={89+k};b(k)={79+k};c(k)={69+k};d(k)={59+k};
end;
c=[d,c];
%
A=cell(3,5);	%
A(1,:)={'Jack','Marry','Peter','Rose','Tom'};%<7>
A(2,:)={72,83,56,94,100};	%						<8>
%
for k=1:5
   switch A{2,k}				%
   case 100 					%
      r='����';		
   case a     					% 
      r='����';  	
   case b    					%
      r='����';  	
   case c     					%
      r='����';   	
   otherwise  					%
      r='������';   
   end
	A(3,k)={r};	
end
A



function [A,n]=exm060104_ZZY(n)
% exm060104_ZZY.m	
% A					
% n						
    while 1											% 			<5>
        if mod(n,4)==0
            break
        else
            n=input('请输入一个能被4整除的正整数! n =  ');	%
        end
    end										% 						<11>
    G=logical(eye(4,4)+rot90(eye(4,4)));		 % 
    m=n/4;
    K=repmat(G,m,m);						% 
    N=n^2;
    A=reshape(1:N,n,n);
    A(K)=N-A(K)+1;							% 
end

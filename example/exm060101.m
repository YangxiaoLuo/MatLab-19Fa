function [xmin,fmin,n]=exm060101(fx,a,b,Nt)
% exm060101.m		
% fx			
% a¡¢b			
% Nt			
% xmin¡¢ymin	
% n				

    [~,f0]=fminbnd(fx,a,b);		%
    n=1;							%
    jj=1;							%
    while 1
        n=2*n;					%
        d=(b-a)/n;				%
        x=a:d:b;					%
        ii=0;
        xc=zeros(1,n);fc=xc;	%
        for k=1:n					%
            [w,f,eflag]=fminbnd(fx,x(k),x(k+1));	%
            if eflag>0			%
                ii=ii+1;
                xc(ii)=w;
                fc(ii)=f;
            end 
        end
        [fmin,kk]=min(fc);		%
        xmin=xc(kk);				%
        if abs(f0-fmin)<1e-6	%
            jj=jj+1;				%
            if jj>Nt				%
                break			%
            end
        elseif f0-fmin>1e-6		%
            f0=fmin;				%
            jj=1;					%
        end
   end
end

function D=exm030402_1(A,B)
%D=exm030402_1(A,B)	采用传统“实数标量循环”法计算两个复数矩阵的乘积 
%A、B				
%D					

[m,p]=size(A);
[q,n]=size(B);
if p~=q		
		error('A阵的列数不等于B阵的行数，所以A不能与B相乘！')
end
for ii=1:m
    for jj=1:n
        wr=0;wi=0;
        for k=1:p
            wr=wr+real(A(ii,k))*real(B(k,jj))...
                -imag(A(ii,k))*imag(B(k,jj));
            wi=wi+real(A(ii,k))*imag(B(k,jj))...
                +imag(A(ii,k))*real(B(k,jj));
        end
        D(ii,jj)=wr+1j*wi;
    end
end


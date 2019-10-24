%% Q1
c = zeros(1,50);
for N = 1:50
   n=repmat(1:N,N,1);
   m=n';
   H=1./(n+m-1);
   c(N) = cond(H);
end
plot(c)
%% Q2
N = 300;
a = zeros(1, N); a(1) = 1;
for i = 2:N/2
    if a(i)==0
        a(2*i:i:N) = 1;
    end
end
p = find(a==0);
%exm040306 

rng(0,'v5normal')		%
A=randn(1000,4);			%
AMAX=max(A)				%
AMIN=min(A)				%
CM=mean(A)				%
MA=mean(mean(A))			%
S=std(A)					%
var(A)-S.^2				%
C=cov(A)
diag(C)'-var(A)			%
p=corrcoef(A)				%  






A = imread('cameraman.png');
B = imread('cameraman_scratch.png');
ind = B==0;
C = B;
for i = 1:100
C = medfilt2(C,[15 15]);
C(~ind) = B(~ind);
imshow(C);
drawnow
pause(0.05);
end
imshow(C);
psnr(B,A)
psnr(C,A)
close all
A = imread('example.jpg');
A0 = A;
imshow(A);
AR = A(:,:,1);
figure;
imshow(AR,[]);
filt = 1/9*ones(3);
filt2 = 1/49*ones(7);
AR = imfilter(AR,filt2,'same');
figure;
imshow(AR,[]);
A(:,:,1) = AR;
figure;
AG = A(:,:,2);
imshow(AG,[]);
AG = imfilter(AG,filt,'same');
figure;
imshow(AG,[]);
A(:,:,2) = AG;
figure;
AB = A(:,:,3);
imshow(AB,[]);
AB = imfilter(AB,filt2,'same');
AB = imfilter(AB,filt2,'same');
figure;
imshow(AB,[]);
A(:,:,3) = AB;
figure;
imshow(A);
figure;
imshow(double(abs(A-A0)),[]);
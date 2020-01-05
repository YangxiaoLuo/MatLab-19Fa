close all;clear;
A = imread('man.png'); 
A = double(A); 
% %��ʵ������һ�䲻��ʡ�ԣ���Ϊ�����͵�imfilter�������룬Ӱ����׼ȷ��
Af = fft2(A);

kernel = fspecial('disk',5);
B = imfilter(A,kernel,'symmetric');
B = [B,fliplr(B);flipud(B),flipud(fliplr(B))]; 
%���öԳ����ؽ�ģ��ͼ�����ķݣ��Ӷ�����˴��ı����������ص�ͼ
Bf = fft2(B);

% Kf = fft2(kernel); 
%11X11��ģ���˵Ķ�ά��ɢ����Ҷ�任����11X11���޷���������
[m,n,~] = size(A);
kernel_Extend = zeros(2*m,2*n);%����ģ���˳����������2��
kernel_Extend(1:11,1:11)=kernel;%����������ģ����
kernel_Extend = kernel_Extend([6:end,1:5],[6:end,1:5]);
%��ģ���������ƶ������Ͻ�
KfE = fft2(kernel_Extend);
%������ģ���˵Ķ�ά��ɢ����Ҷ�任

Cf = Bf./KfE;   %KfE��СԪ�ص�1e-7�����������Զ����ǳ�����
C = ifft2(Cf);  %��任�󣬵õ����غ�Ĵ�����ͼ��
C = C(1:m,1:n); %��ȡ���Ͻǲ�����Ϊ�ָ����
imshow(uint8(C));
PSNR = psnr(uint8(C),uint8(A)) %PSNRֵ������������ȫһ��

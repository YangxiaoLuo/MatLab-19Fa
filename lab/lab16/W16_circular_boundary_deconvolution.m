close all;clear;
A = imread('man.png'); 
A = double(A); 
% %��ʵ������һ�䲻��ʡ�ԣ���Ϊ�����͵�imfilter�������룬Ӱ����׼ȷ��
Af = fft2(A);

kernel = fspecial('disk',5);
B = imfilter(A,kernel,'circular');
Bf = fft2(B);

% Kf = fft2(kernel); 
%11X11��ģ���˵Ķ�ά��ɢ����Ҷ�任����11X11���޷���������
[m,n,~] = size(A);
kernel_Extend = zeros(m,n);
kernel_Extend(1:11,1:11)=kernel;%����������ģ����
kernel_Extend = kernel_Extend([6:end,1:5],[6:end,1:5]);
%��ģ���������ƶ������Ͻ�
KfE = fft2(kernel_Extend);
%������ģ���˵Ķ�ά��ɢ����Ҷ�任

Err = norm(Bf - Af.*KfE)  %����������������ͨ������Ҷ�任׼ȷ��á�
Cf = Bf./KfE;   %KfE��СԪ�ص�1e-7�����������Զ����ǳ�����
C = ifft2(Cf);  %��任�󣬵õ�����ͼ��
imshow(uint8(C));
PSNR = psnr(uint8(C),uint8(A)) %����û�����

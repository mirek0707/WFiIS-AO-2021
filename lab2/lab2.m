clear;clc;close all;
im=imread('zubr.jpg');
im=double(im)/255;

%{figure;
%{
h=2;w=2;i=1;
subplot(h,w,i);i=i+1;
imshow(im)
%}
%{subplot(h,w,i);i=i+1;
%{imshow(1-im)
%{
imr=im;
imr(:,:,[2,3])=0;
subplot(h,w,i);i=i+1;
imshow(imr)
imr1=im;
imr1(:,:,[1,2])=0;
subplot(h,w,i);i=i+1;
imshow(imr1)
imr2=im;
imr2(:,:,[1,3])=0;
subplot(h,w,i);i=i+1;
imshow(imr2)
%}
%{
subplot(h,w,i);i=i+1;
imshow(im(:,:,1))
subplot(h,w,i);i=i+1;
imshow(im(:,:,2))
subplot(h,w,i);i=i+1;
imshow(im(:,:,3))
%}
% h=3;w=2;i=1;
% subplot(h,w,i);i=i+1;
% imshow(im(:,:,1))
% subplot(h,w,i);i=i+1;
% imhist(im(:,:,1))
% 
% subplot(h,w,i);i=i+1;
% imshow(im(:,:,2))
% subplot(h,w,i);i=i+1;
% imhist(im(:,:,2))
% 
% subplot(h,w,i);i=i+1;
% imshow(im(:,:,3))
% subplot(h,w,i);i=i+1;
% imhist(im(:,:,3))
% for j=1:3
%     subplot(h,w,i);i=i+1;
%     imshow(im(:,:,j))
%     subplot(h,w,i);i=i+1;
%     imhist(im(:,:,j))
% end
% img=mean(im,3);
% h=3;w=2;i=1;
% subplot(h,w,i);i=i+1;
% imshow(img)
% subplot(h,w,i);i=i+1;
% imhist(img)
% 
% 
% YUV=[.299,.587,.114]
% YUV=permute(YUV,[1,3,2]);
% img1=im.*YUV;
% img1=sum(img1,3);
% subplot(h,w,i);i=i+1;
% imshow(img1)
% subplot(h,w,i);i=i+1;
% imhist(img1)


h=3;w=3;i=1;
subplot(h,w,i);i=i+1;
b=.1;
imb=im+b;
imb(imb>1)=1;
imb(imb<0)=0;
imshow(imb)
subplot(h,w,i);i=i+1;
x=0:1/255:1;
y=x+b;
y(y>1)=1;
y(y<0)=0;
plot(x,y)
ylim([0,1]);
subplot(h,w,i);i=i+1;
imhist(imb(:,:,:))

c=2;
imc=im*c;
subplot(h,w,i);i=i+1;
imc(imc>1)=1;
imshow(imc)
subplot(h,w,i);i=i+1;
x=0:1/255:1;
y=c*x;
y(y>1)=1;
y(y<0)=0;
plot(x,y)
ylim([0,1]);
subplot(h,w,i);i=i+1;
imhist(imc(:,:,:))

g=1/2;
imga=im.^g;
subplot(h,w,i);i=i+1;
imshow(imga)

x=0:1/255:1;
y=x.^g;
y(y>1)=1;
y(y<0)=0;
subplot(h,w,i);i=i+1;
plot(x,y)
ylim([0,1]);
subplot(h,w,i);i=i+1;
imhist(imga(:,:,:))


clear;clc;close all;
im=rgb2gray(double(imread('opera.jpg'))/255);

%transformata Fouriera
fim=fft2(im);%macierz liczb zespolonych
%imshow(fim)
A=abs(fim);
phi=angle(fim);
%imshow(A);
maxA=max(A,[],'all');
%imshow(log(A),[0,log(maxA)]);
%imshow(fftshift(log(A)),[0,log(maxA)]); 
%imshow(phi,[-pi,pi]) %szum

%zespolony obrazek
% z=A.*exp(1i*phi);
% imz=ifft2(z);
% imz=(abs(imz));
% imshow(imz)

%zmmiana amplitudy
% A(5,5)=10^5;
% z=A.*exp(1i*phi);
% imz=ifft2(z);
% imz=(abs(imz));
% imshow(imz)

%zmiana fazy ( punkt 1,1 zmienia najwiej, wczesmiej robilismy 5,5
% phi(1,1)=phi(1,1)+pi;
% z=A.*exp(1i*phi);
% imz=ifft2(z);
% imz=(abs(imz));
% imshow(imz)


f=fspecial('average',[9,9]);
[h,w]=size(im);
ff=fft2(f,h,w);
%imshow (ff)
%widmo amplitudowe
fA=abs(ff);
fAmax=max(fA,[],'all');
fAmin=min(fA,[],'all');
%imshow(fftshift(log(fA)),log([fAmin,fAmax]))

%transformata odwrotna
A=fA.*A;
%imshow(A)
zc=A.*exp(1i*phi);
imz=ifft2(zc);
imz=(abs(imz));
%imshow(imz)
Amax=max(A,[],'all');
imshow(fftshift(log(A)),([0,log(Amax)]))







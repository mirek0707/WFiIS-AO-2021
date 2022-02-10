clear;clc;close all;
im = double(imread('zubr.jpg'))/255;
im=rgb2gray(im);


% obrazek z filtrem
% s=6;
% f=ones(s)/s^2;
% imf=imfilter(im,f);
% imshow(imf)

% obrazek z filtrem, ujemne wagi
% s=5;
% f=-ones(s);
% f((s+1)/2, (s+1)/2)=s^2;
% imf=imfilter(im,f);
% imshow(imf)

% obrazek z filtrem, ujemne wagi, ciemniejszy
% s=3;
% f=-ones(s);
% f((s+1)/2, (s+1)/2)=s^2-1;
% imf=imfilter(im,f);
% imshow(imf)


% inwersja
% im1=1-im;
% imshow(im1)

%filtr medianowy
% im=1-im;
% imk=medfilt2(im,[10,10]);
% imshow(imk)99/1

%obraz binarny z inwersja (t mniej wiecej w minimum z histogramu)
% t=0.4;
% imb=1-im;
% imb(imb<t)=0;
% imb(imb>=t)=1;
% imshow(imb)


%obraz binarny z progowaniem metoda otsu
% t=graythresh(1-im);
% imb=1-im;
% imb(imb<t)=0;
% imb(imb>=t)=1;
% imshow(imb)
% 
% im=1-im;
% t=graythresh(im);
% imb1=imbinarize(im,t);
% imshow(imb1)


%

% %t=graythresh(im);
% imn=imbinarize(1-im, 'adaptive');
% imshow(imn)

%google imbinarize na tekscie


%erozja, porownac z poprzednim (ale bez adaptive)
% imb=imbinarize(1-im);
% imb=imerode(imb,ones(3));
% imshow(imb)


%dylatacja
% imd=imbinarize(1-im);
% imd=imdilate(imd,ones(7));
% imshow(imd);

%dylatacja, potem erozja (zastepcze imclose(im,ones(3));
% imd=imbinarize(1-im);
% imd=imdilate(imd,ones(7));
% imd=imerode(imd,ones(7));
% imshow(imd);

%erozja, potem dylatacja (zastepcze imopen(im,ones(3));
% imd=imbinarize(1-im);
% imd=imerode(imd,ones(7));
% imd=imdilate(imd,ones(7));
% imshow(imd);


%f=fspecial(...) INNE FILTRY, NIE TRZEBA PISAC RECZNIE



clear;clc;close all;
im=imread('ptaki.jpg');
% im=rgb2gray(double(imread('ptaki.jpg'))/255);
% h=2;w=2;i=1;
% subplot(h,w,i);i=i+1;
% imshow(im)
% im=imbinarize(im(:,:,3));
% % im=imclose(im,ones(30));
% imshow(im)


imr=imbinarize(im(:,:,1));
imr1=imbinarize(im(:,:,3));



im=~imr1|imr;
im=imclose(im,ones(15));
%imshow(im)
l=bwlabel(im);
n=max(l,[],'all');
prep=regionprops(l==4,'all');
%regionprops:
%area - ilosc pikseli
%cemtroid - punkt centralny obiektu
%boundingbox - najmniejszy prostokat, w ktorym mozna zamknac obraz
%major, minor axis - dlugosc osi o najwiekszej rozpietosci
%eccentricy - srodek masy
%convexhull - podobne do obwodu
%euler - liczba obiektow
%perimiter - obwod
% 
% imshow(prep.Image) %przycieta ges (boundingbox)
% imshow(l==4)

a=regionprops(im,'all');
a(1).Image;
a = regionprops(im,'all');
fun =  {@AO5RBlairBliss, @AO5RDanielsson, @AO5RFeret, @AO5RHaralick, @AO5RMalinowska};
w = zeros(length(a), length(fun));
for i =1:length(a)
    for j = 1:length(fun)
        w(i,j) =  fun{j}(a(i).Image);
    end
end

m=mean(w);
s=std(w);
out=abs(w-m)./s>1.8;

out=max(out,[],2);
w(out,:)=[];
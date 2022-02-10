clear;clc;close all;
im=rgb2gray(double(imread('kaczki.jpg'))/255);
im=imbinarize(1-im);
im=imclose(im,ones(11));%biale kaczki, czarne tlo po binaryzacji i zamknieciu
%imshow(im)

%im=bwmorph(im,'remove'); %ramka kaczek, inne polecenia: erode, open, fill, clean

% skel=bwmorph(im,'skel', inf); %szkielet kaczki
% %skel=bwmorph(skel,'endpoints');% punkty koncowe krawedzi
% skel=bwmorph(skel,'branchpoints');%punkty przeciecia krawedzi
% imshow(skel)

%p=bwmorph(im,'shrink'); %inf redukuje do punktu 
%liczba eulera to liczba obiektow na obrazie

% %p=bwmorph(im,'thin',40);%redukcja do odcinkow/krzywych
% p=bwmorph(im,'thicken',40);%dziala podobnie jak dylatacja, ale nie laczy ze soba obiektow
% imshow(p)

% l=bwlabel(im);
% imo=(double(imread('kaczki.jpg'))/255);
% %imshow(label2rgb(l)) %gdy napisze sie l==3 to wyswietla jedna kaczke
% %imshow((l==3).*imo)%jedna kolorowa kaczka

%podzial obrazka na segmenty i wyswietlenie ich pojedynczo
imo=(double(imread('kaczki.jpg'))/255);
seg=bwmorph(im, 'thicken', inf);
l=bwlabel(seg);
imshow((l==2).*imo)

%transformacja odleglosciowa
d=bwdist(im);
imshow(d,[0,max(d,[],'all')])

l=watershed(d);%taka sama macierz jak w przykpadku bwdist
imshow(label2rgb(l))


clear;clc;close all;
%canny
cimg = imread('201.jpg');
gimg = rgb2gray(cimg);

img = edge(gimg,'canny');
img = img==0;
figure()
imshow(img)
imwrite(img,'canny.jpg');

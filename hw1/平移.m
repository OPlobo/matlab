clear;clc;close all;
img = imread('C:\Users\陳冠綸\Desktop\影像處理\000.jfif');
[h,w,d] = size(img);

a = zeros(h*3,w*3,3);
a = uint8(a);
for i=0:20
    b=a;
    b(1+ceil(h*i*(2/20)):h+ceil(h*i*(2/20)),1:w,:)=img(1:h,1:w,:);
    imshow(b)
end
for i = 0:20
    b=a;
    b(2*h+1:3*h,1+ceil(w*i*(2/20)):w+ceil(w*i*(2/20)),:)=img(1:h,1:w,:);
    imshow(b)
end
for i=20:-1:0
b=a;
b(1+ceil(h*i*(2/20)):h+ceil(h*i*(2/20)),2*w+1:3*w,:)=img(1:h,1:w,:);
imshow(b)
end
for i = 20:-1:0
    b=a;
    b(1:h,1+ceil(w*i*(2/20)):w+ceil(w*i*(2/20)),:)=img(1:h,1:w,:);
    imshow(b)
end
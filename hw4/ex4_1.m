clc;clear;close all;
[y, fs]=audioread('music.mp3');
%sound(y, fs);	% 播放此音訊
time=(1:length(y))/fs;	% 時間軸的向量
figure
plot(time, y);	% 畫出時間軸上的波形

F1 = fft(y);
F1 = fftshift(F1);
F2 = 0.1*log(1+abs(F1));
f1 = F1(1:end,1);
f2 = F1(1:end,2);
figure
plot(time,F2);

[h,w] = size(F1);
a = floor(3*h/8);
b = floor(5*h/8);
for i = 1:h
    if i>a && i<b 
        F1(i,:) = 0;
    else
        F1(i,:) = F1(i,:);
    end
end
figure
plot(time,0.1*log(1+abs(F1)));

G = F1;
G = ifftshift(G);
G = ifft(G);
sound(real(G),fs)
figure
plot(time,real(G));
%clear sound
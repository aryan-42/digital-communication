% PPM Signal
fc=1000;
fs=10000;
fm=200;
t=0:1/fs:((2/fm)-(1/fs));
X= 0.5*cos(2*pi*fm*t)+0.5;
Y= modulate(X,fc, fs,'PPM');
figure
plot(X);
title('Message Signal');
figure
plot(Y);
axis([0 500 -0.2 1.2]);
title('PPM Signal');
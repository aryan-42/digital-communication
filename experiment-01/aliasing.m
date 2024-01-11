clc;
clear all;
close all;
fs=500;
f=100;
t=1/f;
x=2*cos(2*pi*100*t+(pi/3));
y=2*cos(2*pi*600*t+(pi/3));
phase=pi/3;
mag=2;
Ts=1/fs;
k=1;
num_pts=200;
num_spl=11;
step=2/(f*num_pts);
t=0:step:2*(1/f);
n=0:num_spl-1;
x=mag*cos(2*pi*f*t+phase);
y=mag*cos(2*pi*(f+k*fs)*t+phase);
x2=mag*cos(2*pi*f*n*Ts+phase);
y2=mag*cos(2*pi*(f+k*fs)*n*Ts+phase);
subplot(2,1,1)
plot(t,x,'r.-',t,y,'b-');
subplot(2,1,2)
plot(n,x2,'rx',n,y2,'bO');
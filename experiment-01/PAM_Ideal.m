clc;
close all;
clear all;
a=input('Enter the amplitude =');
f=input('Enter the frequency =');
t=0:0.02:2;
x1=1; %generation of an impulse
x2=a*sin(2*pi*f*t); %generation of sine wave 
y=x1.*x2; %modulation step
subplot(3,1,1);
stem(x1);
title('Impulse Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(3,1,2) %for sine wave plot
plot(t,x2);
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
subplot(3,1,3); %PAM Wave Plot
stem(t,y);
title('PAM Wave');
xlabel('Time');
ylabel('Amplitude');

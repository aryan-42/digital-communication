clc;
close all;
clear all;
fc=100;
fm=fc/10;
fs=100*fc;
t=0:1/fs:4/fm;
msg_sgl=cos(2*pi*fm*t);
carr_sgl=0.5*square(2*pi*fc*t)+0.5;
mod_sgl=msg_sgl.*carr_sgl;
tt=[];
for i=1:length(mod_sgl)
    if mod_sgl(i)==0
        tt=[tt,mod_sgl(i)];
    else
       tt=[tt,mod_sgl(i)+2];
    end
end
figure(1)
subplot(4,1,1)
plot(t,msg_sgl);
title('Message Signal');
ylabel('Amplitude --->');
xlabel('Time --->');
subplot(4,1,2)
plot(t,carr_sgl);
title('Carrier Signal');
ylabel('Amplitude --->');
xlabel('Time --->');
subplot(4,1,3)
plot(t,mod_sgl);
title('PAM Modulated Signal');
ylabel('Amplitude --->');
xlabel('Time --->');
subplot(4,1,4)
plot(t,tt);
title('PAM');
ylabel('Amplitude --->');
xlabel('Time --->');

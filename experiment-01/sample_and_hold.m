clc;
close all;
clear all;
Ts=input('Enter the sampling period:');
t=0:0.01:20;
ts=0:Ts:20;
msg=5*sin(t);
sampledmsg=5*sin(ts);
%Original message%
subplot(4,1,1);
plot(t,msg);
axis([0 20 -6 6]);
title('Message Signal');
ylabel('Amplitude --->');
xlabel('Time --->');
%Sampled Signal%
subplot(4,1,2);
stem(ts,sampledmsg);
axis([0 20 -6 6]);
title('Sampled Signal');
ylabel('Amplitude --->');
xlabel('Time --->');
%Sampled & Hold Signal%
subplot(4,1,3);
hold on
stairs(ts,sampledmsg);
hold off
axis([0 20 -6 6]);
title('Sampled & Hold Signal');
ylabel('Amplitude --->');
xlabel('Time --->');
%Reconstructed Signal%
rmsg= zeros(length(t));
for i=1:length(t)
    for j=1:length(sampledmsg)
        rmsg(i)=rmsg(i)+sampledmsg(j)*sinc((1/Ts)*t(i)-j);
    end
end
subplot(4,1,4);
plot(t,rmsg);
axis([0 20 -6 6]);
title('Reconstructed Signal');
ylabel('Amplitude --->');
xlabel('Time --->');
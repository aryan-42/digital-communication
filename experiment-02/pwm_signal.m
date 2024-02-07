%PWM Signal
t=0:0.0001:1;
s=sawtooth(2*pi*10*t+pi);
m=0.75*sin(2*pi*1*t);
n=length(s);
for i=1:n;
    if(m(i)>=s(i))
        pwm(i)=1;
    elseif(m(i)<=s(i))
        pwm(i)=0;
    end
end
figure
plot(t,pwm,'g',t,m,'r',t,s,'b');
ylabel('Amplitude')
axis([0 1 -1.5 1.5]);
xlabel('Time')
title('PWM Signal')
grid on;

clear all;close all;clc
figure(1) %figura pentru rezolutie de 2ms
T=2; %perioada in secunde
t = 0:0.002:2; %rezolutie temporala de 2ms
f=0.5; %frecventa este f=1/T , unde T este perioada de 2 sec
a=1.5; % amplitudinea este de 1.5 peak to peak
b=a/2;  % amplitudinea to peak

x = b*square(2*pi*f*t, 25) -0.25; %generarea semnalului dreptunghiular ; este -0.25 pentru a cobori semnalul cu 0.25 in jos
plot(t,x)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 2ms')

figure(2)
t=0:0.02:2; %rezolutia de 20ms
x = b*square(2*pi*f*t, 25) - 0.25;
plot(t,x)
xlabel('Time (sec)')
ylabel('Amplitude')
title('rezolutia temporala de 20ms')

figure(3)
t=0:0.2:2; %rezolutia de 200ms
x = b*square(2*pi*f*t, 25) -0.25;
plot(t,x)
xlabel('Time (sec)')
ylabel('Amplitude')
title('rezolutia temporala de 200ms')





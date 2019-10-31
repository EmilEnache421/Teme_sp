clear all;close all;clc
T=4; %perioada semnalului neredresat. deci cel redresat o sa aiba perioada de 1.5, urmat de o funcite constanta de amplitudine 0 pentru alte 1.5s
%teoretic perioada se injumatateste dupa dubla alternanta, deci devine 2
%pentru noul semnal
f=1/T;
figure(1)
t = 0:0.002:4;
s=1.5*sin(2*pi*f*t);

for i=1:1:length(s) 
    if s(i)<=0
        s(i)=-s(i); %aici am facut dubla alternanta , pentru valori negative , ele devin pozitive
    end
end
plot(t,s)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 2ms')
figure(2)
t = 0:0.02:4; %pentru rezolutie temporara de 20ms
s=1.5*sin(2*pi*f*t);

for i=1:1:length(s) 
    if s(i)<=0
        s(i)=-s(i);
    end
end
plot(t,s)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 20ms')

figure(3)
t = 0:0.2:4; %pentru rezolutie temporara de 200ms
s=1.5*sin(2*pi*f*t);
for i=1:1:length(s) 
    if s(i)<=0
        s(i)=-s(i);
    end
end
plot(t,s)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 200ms')

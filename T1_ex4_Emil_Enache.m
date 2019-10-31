clear all;close all;clc
T=3; %perioada semnalului neredresat. deci cel redresat o sa aiba perioada de 1.5, urmat de o funcite constanta de amplitudine 0 pentru alte 1.5s
f=1/T;
figure(1)
t = 0:0.002:3;
s=0.8*sin(2*pi*f*t);

for i=1:1:length(s) %aici am facut monoalternanta, daca e mai mic decat 0 valoarea devine 0
    if s(i)<=0
        s(i)=0;
    end
end
plot(t,s)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 2ms')
figure(2)
t = 0:0.02:3; %pentru rezolutie temporara de 20ms
s=0.8*sin(2*pi*f*t);

for i=1:1:length(s) 
    if s(i)<=0
        s(i)=0;
    end
end
plot(t,s)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 20ms')

figure(3)
t = 0:0.2:3; %pentru rezolutie temporara de 200ms
s=0.8*sin(2*pi*f*t);
for i=1:1:length(s) 
    if s(i)<=0
        s(i)=0;
    end
end
plot(t,s)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 200ms')


clear all;close all;clc
T=5; %periaoda
f=1/T; %frecventa 
figure(1)
t = 0:0.002:5; %rezolutia temporala
x=1.5*sawtooth(2*pi*f*t,0.6) - 0.5; %al doilea argument al functiei reprezinta unde este varful. cum perioada este de 5 secunde
%ca panta dreptei sa fie 1 trebuie ca tangenta varfului sa fie 1, deci
%setez varful la secunda 3, deoarece semnalul are amplitudine (peak to
%peak) de 3. Asadar cu regula de 3 simpla, la 5 secunde am 1, decila 3
%secunde am 0.6. Asa am setat varful
%ca sa setez amplitudinea de la -2 la 1; am inmultit semnalul cu 1.5 ,
%astfel era d la -1.5 la 1.5, par pe urma am scazut-o cu 0.5 ca sa fie de
%la -2 la 1.
plot(t,x)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 2ms')

figure(2)
t = 0:0.02:5; %rezolutie temporala de 20ms
x=1.5*sawtooth(2*pi*f*t,0.6) - 0.5;
plot(t,x)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 20ms')

figure(3)
t = 0:0.2:5; %rezolutie temporala de 200ms
x=1.5*sawtooth(2*pi*f*t,0.6) - 0.5;
plot(t,x)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('rezolutia temporala de 200ms')

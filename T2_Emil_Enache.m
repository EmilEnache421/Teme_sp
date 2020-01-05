clear all;close all;clc
P=40; %perioada
f=1/P; %frecventa
D=8; %durata
N=50; %coeficientii
t = -80:0.002:80; %rezolutia temporala 
w=(2*pi)/P; %frecventa unghiulara omega0

figure(1)
y=-0.5*sawtooth(((2*pi*f*t)*5),0.5) + 0.5; %am pus 0.5 ori semnalul plus 0.5 ca sa avem amplitudine de 1, si sa inceapa de la 0, ca in exemplul dumneavoastra
x=square((2*pi*f*(t+4)),(D/P)*100)/2 + 0.5; % semnalul dreptungihular ajutator cu care am facut ca semnalul triunghiular sa aiba durata de 8 secunde, iar in rest sa fie 0, in cele 32 de secunde ramase din perioada
plot(t,y)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('Semnalul triunghiular cu durata egala cu perioada')

figure(2)
plot(t,x) 
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('Semnalul dreptungihular ajutator')

figure(3)
z=y.*x;
plot(t,z)
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('Semnalul triunghiular cerut in cerinta')


figure(4)
v=0;
%determinarea coeficientiilor seriei complexe
for k=-N:N 
 v(N+k+1)=1/P * integral(@(t)((square((2*pi*f*(t+4)),(D/P)*100)/2 + 0.5).*(-0.5*sawtooth(((2*pi*f*t)*5),0.5) + 0.5).*exp(-j*k*w*t)),0,P ); %am folosit formula de la ss
end
stem( (-N:N)*w , abs(v) )
xlabel('Frecventa') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('Spectrul de amplitudini')

figure (5)
s=0;
%generarea semnalului reconstruit prin suma,fiecare termen inmultit cu explonentiala, formula tot de la ss.
for k=-N:N
    s=s+(v(N+k+1).*exp(-j*k*w*t));
end
plot(t,real(s),t,z) %semnalul initial este cu rosu, iar cel reconstruit cu coeficientii complexi este cu albastru
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title(' z(t)Semnal initial rosu si Semnal reconstruit  cu N coeficienti albastru (zoom)')

figure (6) 
plot(t,imag(s)) %am afisat si partea imaginara a semnalului s, daca il puneam pe acelasi grafic din figura 5, era o linie galbena constanta in 0.
xlabel('Time (sec)') %notatii pe axele de coordonate si titlu
ylabel('Amplitude')
title('Partea imaginara a semnalului general cu coeficienti complexi')   

%In concluzie, conform celor studiate la ss, semnalul generat cu
%coeficineti complexi difera fata de cel initial, deoarece acesta nu este
%triunghiular simplu, ci este formal dintr-o sinusoida cu care se face
%semnalul triunghluar.De asemenea , spectrul de amplitudini formeaza tot o
%sinusoida, cu maximul in 0. 
%de asemenea, am folosit inmultirea a doua semnale pentru a genera semnalul
%cerut in cerinta, deoarece semnalul triunghlilar nu are factor de umplere
%ca cel dreptunghiular, de aceea l-am inmultit cu unul dreptungihular cu
%factor de umplere cerut, iar pe urma am adunat, scazut , inmutit si
%impartit astfel incat sa fie simetrice, iar in 0 sa aiba valoarea maxima,
%la jumatatea duratei semnalului.
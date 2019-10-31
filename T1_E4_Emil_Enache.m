clear all;close all;clc
%a)
z = [0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]; %initializare vector
n=0:20; %declarare n
m=-5:15; %declarare m
figure(1) %fereastra pentru a)
subplot(2,1,1),stem(n,z),grid,title('a.1') %afisare z in functie de n
subplot(2,1,2),stem(m,z),title('a.2'),grid %afisare z in functie de m
%b)
t=abs(10-n); %declarare t
figure(2) %fereastra pentru b)
stem(n,t),title('b'),grid
%c)

figure(3) %fereastra pentru c) ->in cerinta, este figura 1.
n=[-15:25];
x1=sin(pi/17*n); %declararea lui x1
plot(n,x1,'c'),grid, % afisare x1 in culoarea cyan :)
hold on %pastreaza graficul si adaugam peste grafic
m=[0:50];
x2=cos(pi/sqrt(23)*m);
plot(m,x2),grid %afisare x2 -> nu ii dau culoare :(
hold off %nu mai afisam in figura 3
figure(4)
subplot(2,1,1),plot(n,x1),grid %afisare x1
subplot(2,1,2),plot(m,x2) %afisare x2
%afisarea cu stem:
figure(5)
stem(n,x1,'c'),grid
hold on
stem(m,x2),grid
hold off
figure(6)
subplot(2,1,1),stem(n,x1)
subplot(2,1,2),stem(m,x2)








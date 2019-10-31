function [medie,patrat,matrice]=functie_E3(a)
b=real(a); %am creat un vector cu partile reale a vectorului a
mean(b); %am calculat media aritmetica a elementelor lui b
medie=mean(b) %data de iesire: media
patrat=a.*a %calculul patratului elementelor matricei , element cu element
matrice=a*a' %teoretic nu da o matrice , inmultind vectorul cu transpusul sau
%pentru a da o matrice 7x7 (vectorul are 7 elemente) trebuie sa inmultim
%transpusul vectorului cu vectorul initial : matrice=a'*a
end

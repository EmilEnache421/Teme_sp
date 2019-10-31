clear all;close all; clc %stergem tot de pe ecran inainte de rularea programului
% initializarea vectorului a
a=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2];
%initializarea vectorului b
b=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]; 
%modificam vectorul b sa fie coloana, b' find transpusa lui b
b=b';
%vectorul b trebuie sa aiba numarul de linii egale cu numarul de coloane a
%matricei a pentru a avea sens inmultirea matriceala. Se opereaza
%inmultirea matricelor, nu element cu element
a*b
b*a
%in urma inmultirii b ori a , se obtine o matrice 21x21
a.*b
%in urma inmultirii element cu element, se obtine tot o matrice 21x21 , ca
%in cazul inmultirii matriceala b*a


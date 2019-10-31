clear all;close all; clc
a=randn(5); %generarea matricei cu elemente aleatoare cu distributie normala
a %afisarea lui a
for i=1:1:5 %contor pentru linii
    for j=1:1:5 %contor pentru coloane
        if a(i,j)<0 %conditie ca elementul sa fie negativ
            a(i,j) %afisarea elementului negativ
        end
    end
end

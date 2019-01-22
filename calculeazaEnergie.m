function E = calculeazaEnergie(img)
%calculeaza energia la fiecare pixel pe baza gradientului
%input: img - imaginea initiala
%output: E - energia

%urmati urmatorii pasi:
%transformati imaginea in grayscale
%folositi un filtru sobel pentru a calcula gradientul in directia x si y
%calculati magnitudinea gradientului
%E - energia = gradientul imaginii

%completati aici codul vostru

img = rgb2gray(img);
f = fspecial('sobel');
fx = imfilter(double(img), f);
fy = imfilter(double(img), f');
E = abs(fx) + abs(fy);
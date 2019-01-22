function img = eliminaObiect(img,culoareDrum,ploteazaDrum,metodaSelectareDrum)

figure;
imshow(img);
rec= getrect;
xmin= rec(1);
ymin = rec(2);
width = rec(3);
height = rec(4);
xmax = xmin+width;
ymax = ymin+height;

for i=1:width
    disp(['Eliminam drumul vertical numarul ' num2str(i) ...
        ' dintr-un total de ' num2str(width)]);
    
    %calculeaza energia dupa ecuatia (1) din articol
    E = calculeazaEnergie(img);
    E(ymin:ymax,xmin:xmax) = -10000;
    
    %alege drumul vertical care conecteaza sus de jos
    drum = selecteazaDrumVertical(E,metodaSelectareDrum);
    
    %afiseaza drum
    if ploteazaDrum
        ploteazaDrumVertical(img,E,drum,culoareDrum);
        pause(1);
        close(gcf);
    end
    
    %elimina drumul din imagine
    img = eliminaDrumVertical(img,drum);
end



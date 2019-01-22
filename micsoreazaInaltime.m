function img = micsoreazaInaltime(img,numarPixeliInaltime,metodaSelectareDrum,ploteazaDrum,culoareDrum)
%roteste imaginea cu 90 grade
img = imrotate(img,90);
 %micsoreaza Latimea (inaltimea) cu numarPixeliLatime
img = micsoreazaLatime(img,numarPixeliInaltime,metodaSelectareDrum,...
    ploteazaDrum,culoareDrum);
 %roteste imaginea inapoi cu -90 grade 
img = imrotate(img,-90);

end
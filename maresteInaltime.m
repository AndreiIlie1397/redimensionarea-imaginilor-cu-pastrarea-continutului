function img = maresteInaltime(img,numarPixeliInaltime,metodaSelectareDrum,ploteazaDrum,culoareDrum)
%roteste imaginea cu 90 grade
 img = imrotate(img,90);
 %mareste Latimea (inaltimea) cu numarPixeliLatime
 img = maresteLatime(img,numarPixeliInaltime,metodaSelectareDrum,...
     ploteazaDrum,culoareDrum);
 %roteste imaginea inapoi cu -90 grade 
 img = imrotate(img,-90);
end


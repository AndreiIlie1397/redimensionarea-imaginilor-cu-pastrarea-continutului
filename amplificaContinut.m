function imgRedimensionata = amplificaContinut(img,metodaSelectareDrum,ploteazaDrum,culoareDrum)
img1= imresize(img,2);
[H,L,~]= size(img);
[h,l,~]= size(img1);
numarPixeliLatime=l-L;
numarPixeliInaltime=h-H;
%micsoreaza Latimea cu numarPixeliLatime
imgRedimensionata = micsoreazaLatime(img1,numarPixeliLatime,metodaSelectareDrum,...
    ploteazaDrum,culoareDrum);
%roteste imaginea cu 90 grade
imgRedimensionata= imrotate(imgRedimensionata,90);
%micsoreaza Latimea (inaltimea) cu numarPixeliLatime
imgRedimensionata = micsoreazaLatime(imgRedimensionata,numarPixeliInaltime,metodaSelectareDrum,...
    ploteazaDrum,culoareDrum);
%roteste imaginea la valoarea initiala 
imgRedimensionata = imrotate(imgRedimensionata,-90);
end
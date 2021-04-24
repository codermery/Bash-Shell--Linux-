#1/bin/bash

echo "Saat şu an : "$(date)

saat=$(date +'%I') #saat değerini 0-12 arasında buldum.
dakika=$(date +'%M') #dakikayı buluyorum.
echo Saat : $saat / Dakika : $dakika #saat ve dakikayı yazdırıyorum.

sd=$((10#$saat *30 + dakika/12*6)) # akrebin derecesini tam sayı olarak buluyorum.
sdd=$((dakika*6)) #yelkovanın derecesini tam sayı olarak buluyorum.

if [[ $sdd -ge $sd ]]; #akrep ile yelkovan arasında ki açı pozitif olacak şekilde çıkartmak için if- else kullandım ve sonucu yazdırdım.
then
sonuc=$((sdd-sd))
echo Sonuc: $sonuc Derece
else
sonuc=$((sd-sdd))
echo Sonuc: $sonuc Derece
fi

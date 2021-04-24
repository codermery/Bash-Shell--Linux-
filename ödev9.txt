!#/bin/bash
clear
sayi=$(( ( RANDOM % 100 ) + 1 ))
for i in {1..10} 
do
	echo "0-100 Sayıları Arasında Tahminde Bulunun... "
	read tahmin
	echo $i ". Tahmin : " $tahmin
	
	if [ $sayi == $tahmin ];
	then
		echo "Tebrikler " $i ". tahminde bildiniz."
		break
	fi
done
if [ $sayi != $tahmin ];
then
	echo "Bilemediniz Tutulan Sayı :"$sayi
fi

exit

!#/bin/bash

function topla {
		topla=$((sayi1+sayi2))
		echo $sayi1 "+" $sayi2 "=" $topla
		}
function cikar {
		cikar=$((sayi1-sayi2))
		echo $sayi1 "-" $sayi2 "=" $cikar
		}
function carp {
		if [ $sayi1 == '0' ] || [ $sayi2 == '0' ];
			then 
			  	echo "Sonuç : 0"
			else
				carp=$(( sayi1 * sayi2 ))
				echo $sayi1 "*" $sayi2 "=" $carp
		fi
		}
function bol { if [ $sayi2 == 0  ];
			then 
		  		echo "Sonuç : Tanımsız !"
			else
				bol=$((sayi1/sayi2))
				echo $sayi1 "/" $sayi2 "=" $bol
		fi
		}		
function uss {
		ussu=$((sayi1**sayi2))
		echo $sayi1 "^" $sayi2 "=" $ussu
		}
while (true)

do

echo "Lütfen sayi1 değerini giriniz :  "

read sayi1

echo "Lütfen sayi2 değerini giriniz :  "

read sayi2

echo "*******************************"
echo "Lütfen bir işlem seçiniz:  "
echo " 1 topla"
echo " 2 çıkar"
echo " 3 çarp"
echo " 4 böl"
echo " 5 üssünü al"
echo "*******************************"

read islem

echo "*******************************"

case $islem in

	1) echo " 1. islem topla"
		
		topla;
	    ;;
	2) echo " 2. islem cikar"
		
		cikar;
		
	    ;;
	3) echo " 3. islem çarp"
		
		carp;
		
	    ;;
	4) echo " 4. islem böl"
		
		bol;
		
	    ;;
	5) echo " 5. islem üssünü al"
		
		uss;
		
	    ;;

	*) echo "uygun değer girilmedi..."
	   echo "1-5 arası değer girilmeli..."
esac
 echo "Tekrar hesap yapmak ister misiniz?  Evet(1) Hayır(0)"
 read tekrar
 if [ $tekrar == 0 ];
 then
 	break
 fi
 
done
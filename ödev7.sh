!#/bin/bash

clear

dizinOlustur () {
	mkdir -p $1
	cd $1
	}
dosyaOlustur () {
	touch $1
	chmod 755 $1
	}
dizinSil () {
	ls
	rm -fr $1
	ls
	}
dosyaSil () {
	ls
	rm $1
	ls
	}
diziniAc () {
	cd $1
	pwd
	}
while (true) 
do

	echo "*************************MENU************************"
	echo "0-Hangi bash kullandığını görüntüle"
	echo "1-Hangi oturumun açık olduğunu ve tarihi görmek istiyorsanız"
	echo "2-Hangi dizinde olduğumu görüntüle"
	echo "3-Dizine Gir"
	echo "4-Bir Dizin Geri Git"
	echo "5-Yeni bir dizin oluştur "
	echo "6-Yeni bir dosya oluştur"
	echo "7-Dizinde Bulunan dosyalar"
	echo "8-Yeni  dizin ve dosya açıp dizini görüntüleme"
	echo "9-Dizin Silme"
	echo "10-Dosya Silme"
	echo "*************************MENU************************"
	echo "Hangi Işlemi Yapmak Istesiniz..."
	read komut
	echo "******************************************************"
	case $komut in

		0)
			which bash
			;;
		1)
			who
			;;
		2)
			pwd
			;;
		3)
			echo "Hangi dizine gitmek istersiniz?"
			read dizin
			diziniAc $dizin
			;;
		4)
			pwd
			cd ..
			echo "Bir Dizin Geri Gidildi.."
			pwd
			;;
		5)
			echo "Dizin adı giriniz..."
			read x
			dizinOlustur $x
			;;
		6)
			echo "Dosya adı giriniz..."
			read xx
			dosyaOlustur $xx
			;;
		7)
			echo $x"dizininde bulunanan dosyalar"
			ls
			;;
		8)
			echo "Dizin adı giriniz..."
			read x
			dizinOlustur $x
			echo "Dosya adı giriniz..."
			read xx
			dosyaOlustur $xx
			echo $x"dizininde bulunana dosyalar"
			ls
			;;
		9)
			echo "Silinecek dizinin adını giriniz..."
			read xs
			dizinSil $xs
			;;
		10)
			echo "Silinecek dosyanın adını giriniz..."
			read xxs
			dosyaSil $xxs
			;;
		*)
			echo "Geçerli Bir Sayı Giriniz..."

	esac

	echo "Çıkmak isterseniz 'E' tuşuna basın..."
	read tus
	
	if [  $tus == E ];
	then
		break
	fi
done
exit

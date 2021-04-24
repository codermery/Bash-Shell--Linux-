#1/bin/bash

ornek="$1"

if [ $# -ne 1 ];
then
	echo "kullnımı : $0{dizin adı}"
	exit 1
fi

if [ -d "$ornek" ]; then
	echo "bu dizin zaten sistemde mevcut..."
	
else
	echo "$ornek kulasörü bulunamadı..."
	sleep 4;
	echo -n "Klasörü oluşturmak ister misiniz [E/H]:"
	read cevap
	if [ "$cevap" == "E" ]; then
	
		mkdir $1
		echo "Klasör oluşturuldu..."
	else
		echo "Klasörü olşturmadık..."
	fi
fi


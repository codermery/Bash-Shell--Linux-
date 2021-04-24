!#/bin/bash

echo "Lütfen çekmek istediğiniz miktarı yazınız = "
read paracik

if [ $(( paracik % 10)) -ne 0 ] 
	
	then
		echo "HATA: Lütfen 10'un katları şeklinde giriş yapınız."
		
	else
		if [ $(( paracik  / 100 )) -ge 1 ]
			
			then
				
				let "yuz = $paracik/100"
				
				echo "$yuz Adet 100 TL"
				
				let "paracik= $paracik-($yuz*100)"
				
			 fi
		
		
		if [ $(( paracik / 50 )) -ge 1 ]
		
			then
				let "elli = $paracik/50"
				
				echo "$elli Adet 50 TL"
				
				let "paracik= $paracik-($elli*50)"
			
			fi
		
		
		if [ $(( paracik / 20 )) -ge 1 ]
		
			then
				let "yirmi = $paracik/20"
				
				echo "$yirmi Adet 20 TL"
				
				let " paracik= $paracik-($yirmi*20)" 
				
			fi
		
		if [ $(( paracik / 10 )) -ge 1 ]
			
			then
				let "on = $paracik/10"
				
				echo "$on Adet 10 TL"
				
			fi
		
 fi

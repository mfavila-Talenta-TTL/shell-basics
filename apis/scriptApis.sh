#!/bin/bash

req=`curl https://raw.githubusercontent.com/olea/lemarios/master/nombres-propios-es.txt | shuf`


arrnames=() 

countA=0
countL=0
count=0

for nombre in $req
do
	if [[ $nombre == A* ]] && [ $countA -le 4 ]
	then
		arrnames+=( $nombre )
		let countA++
	fi

	if [[ $nombre == L* ]] && [ $countL -le 4 ]
	then
		arrnames+=( $nombre )
		let countL++
	fi

	if [[ $nombre != A* ]] && [[ $nombre != L* ]] && [ $count -le 4 ]
	then
		arrnames+=( $nombre )
		let count++
	fi
done

printf '%s\n' "${arrnames[@]}"
echo $countA $countL $count

for nombre1 in "${arrnames[@]}"
do
	curl -s https://api.genderize.io/?name=$nombre1 | jq '.gender' | { read -r gen; echo "Gender of $nombre1 is: $gen"; }
	curl -s https://api.nationalize.io/?name=$nombre1 | jq '.country[0].country_id' | { read -r cn; echo "Country of $nombre1 is: $cn"; }

done

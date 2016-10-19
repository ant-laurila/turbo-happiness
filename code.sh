# testing only



function getR() {
return $(( RANDOM % (10 - 5 + 5 ) + 1 ))

}

function makeC() {
getR
n=$?
getR
i=$?


clear
echo "Paljon on $n + $i?"
read answ
corr=$(expr $n + $i)
if [ "$answ" = "$corr" ]; then
 echo "Oikein"
else 
 echo "Väärin"
echo "Oikea vastaus: $corr"

fi

}


function drawDeco() {

for i in {1..20} 
do
  echo -n "- "
  sleep .05
done

printf "\n"

}



clear
echo "Käynnistetään lasku-robottia!"
drawDeco
echo "Matematiikka harjoitus Veikolle!"
echo "Oletko valmis harjoituksiin?"

# getR
# ran=$?
# echo "Paljon on $ran+4?"


echo "Jos olet valmis, kirjoita k"
read answer

if [ "$answer" = "k" ]; then
  echo "--------------------------------"
  echo "Vastasit: $answer"
  echo "Aloitetaan, kirjoita ensin nimesi"
  read player
  echo "Hei $player! Tervetuloa!"
  sleep 1

  makeC

  echo "--------------------------------"
  echo "Haluatko uuden tehtävän? Kirjoita k jos haluat, ja e jos et halua"
  read new
  while [ "$new" = "k" ]
  do
    makeC
    echo "Haluatko uuden tehtävän? Kirjoita k jos haluat, ja e jos et halua"
    read new
  done


else
  echo "--------------------------------"
  echo "Etkö halunnutkaan kokeilla?"
  echo "Ohjelma-robotti keskeytetään"
fi

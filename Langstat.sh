#!/bin/bash

###### HAVAMAL G.L hacksprugz 4 understanding ######

###### Klean La Konsole ######
clear

###### Greetingz center ######

  titulo="BIENVENUE DANS LANGSTAT - PROGRAMME de STATISTIQUES - realiser sur Debian GNU-Linux "
  clear
  ast="*****************************************************************************************"
  columnas=$(tput cols)
  y=$((($columnas-${#ast})/2))
  x=0
  tput clear
  tput cup $x $y
  echo "${ast}"
  echo ""
  y=$((($columnas-${#titulo})/2))
  x=1
  tput cup $x $y
  echo "${titulo}"
  echo ""
  y=$((($columnas-${#ast})/2))
  x=2
  tput cup $x $y
  echo "${ast}"

###### Greetings script ######

echo -e "\033[1;32mProgramme Bash Avril-2019 V1\033[0m"
echo -e "\033[1;32mscript Bash pour fournir des statistiques sur l'utilisation du nombres de lettres utiliser dans une langue\033[0m"
echo -e "\033[1;32mScript opensource par HAVAMAL GL\033[0m"
echo -e "\033[1;32mExercice Final de OpenClassrooms sur le cour GNU/Linux\033[0m"
echo
###### Affichage suivi script ######

echo -e "\033[1;32mSYNTAXE: ./langstat.sh [\033[4mFILE\033[0m\033[1;32m]... [\033[4mPARAMETRE\033[0m\033[1;32m]...\033[0m"
echo -e "\033[1;32mPARAMETRE DISPONIBLE: -Pikaboo\033[0m"
echo -e "# Pikaboo affiche la sortie console par ordre alphabetique\033[0m"
echo

###### Verification si parametre Pikaboo utiliser ######

###### Condition si Pikaboo present ou pas ######
if [ -z $1 ]

#  Condition 2 #
then

# Notification de l'erreur && arret du script #
echo -e "\033[1;31mAttention nom du fichier obligatoire\033[0m"
exit

# Condition 3 #
else

# Prise en compte du parametre #
echo -e "\033[1;32mPrise en compte du parametre ok:\033[0m $1"

if [ ! -f $1 ]

then

# arret du script avec notification si erreur #
echo -e "\033[1;31mAttention Le parametre\033[0m $1 \033[1;31mn'est pas un fichier Jedi !\033[0m"
exit

else

# Confirm parametre Ok
echo -e "\033[1;32mParametre Ok\033[0m $1 \033[1;32mdico.txt est bien le bon fichier\033[0m"

# Si le second parametre est absent
if [ -z $2 ]

then

# Traitement du fichier sans second parametre
echo -e "\033[1;32mPrise en charge sans parametre secondaire : Ok\033[0m"
echo -e "\033[1;32mTraitement standard de l'opération : Ok\033[0m"
for letter in {A..Z}; do
echo -e "`grep -c $letter $1` - $letter"
done | sort -rn
echo -e "\033[1;32mWoooOOOooow c'etait rapide ça !!!!\033[0m"

else

# Si le second parametre n'est pas -Pikaboo
if [ ! $2 = "-Pikaboo" ]

then

# arret du script si erreur + Notif #
echo -e "\033[1;31mTu es sympa mais J'ai pas compris ton second parametre.\033[0m"
exit

else

# Si second parametre = Pikaboo #
if [ $2 = "-Pikaboo" ]

then

# Opération avec Pikaboo
echo -e "\033[1;32mTutti béné! Pikaboo bien pris en compte:\033[0m $2"
echo -e "\033[1;32mLe tri seras fait par ordre alphabetique\033[0m"
for letter in {A..Z}; do
echo -e "`grep -c $letter $1` - $letter"
done
echo -e "\033[1;32mAnnnnnnd voualaaaaaa Tadaaaaaa !\033[0m"
fi
fi
fi
fi
fi

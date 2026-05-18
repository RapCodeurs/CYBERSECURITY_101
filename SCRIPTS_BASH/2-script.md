Taches 2 : Les parametres 

Comment pouvons-nous obtenir le nombre d’arguments fournis à un script ? $#
Comment pouvons-nous obtenir le nom de fichier de notre script actuel (alias notre premier argument) ? $0
Comment pouvons-nous fournir le 4ème argument au script ? $4
Si un script nous demande une entrée, comment pouvons-nous diriger notre entrée dans une variable appelée ‘test’ en utilisant “read” : read test
Quelle sera la sortie de “echo $1 $3” si le script a été exécuté avec “./script.sh hello hola aloha” : 

Taches 3 : Les tableaux

creer un tableau :                       tableau=('car' 'voiture' 'bus')
afficher tous les elements :             echo "${transport[@]}"
supprimer un element du tableau :        unset transport[1]
ajouter un element dans le tableau :     transport[1]='voiture'


cars=('honda' 'audi' 'bmw' 'tesla')

Quelle serait la commande pour imprimer audi sur l'écran à l'aide de l'indexation : echo "${cars[1]}"
Si nous voulions supprimer Tesla du tableau, comment le ferions-nous ? : unset cars[3]
Comment pourrions-nous insérer une nouvelle valeur appelée Toyota pour remplacer Tesla ? : cars[3]='toyota'
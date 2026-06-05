Tache 3 : Depannage reseau 

Configuration du réseau
Vous pouvez vérifier les informations de votre réseau en utilisant ipconfig. La sortie du terminal ci-dessous affiche notre adresse IP, notre masque de sous-réseau et notre passerelle par défaut.

ipconfig

Vous pouvez également utiliser ipconfig /all pour plus d'informations sur la configuration de votre réseau. Comme indiqué dans le terminal ci-dessous, nous pouvons visualiser nos serveurs DNS et confirmer que DHCP est activé. 

ipconfig /all

Dépannage du réseau

Une tâche de dépannage courante consiste à vérifier si le serveur peut accéder à un serveur particulier sur Internet. La syntaxe de la commande est ping target_name. Inspirés par le ping-pong, nous envoyons un paquet ICMP spécifique et écoutons une réponse. Si une réponse est reçue, nous savons que nous pouvons atteindre la cible et que la cible peut nous atteindre.

ping : nous envoyons un paquet ICMP spécifique et écoutons une réponse
tracert : trace l'itinéraire réseau parcouru pour atteindre la cible
nslookup : recherche un hôte ou un domaine et renvoie son adresse IP

netstat : affiche les connexions réseau actuelles et les ports d'écoute, avec des options---->
    -a: affiche toutes les connexions établies et les ports d'écoute
    -b: affiche le programme associé à chaque port d'écoute et à la connexion établie
    -o: révèle l'ID de processus (PID) associé à la connexion
    -n: utilise une forme numérique pour les adresses et les numéros de port


Quelle commande pouvons-nous utiliser pour rechercher l'adresse physique du serveur (adresse MAC) ? : ipconfig /all
Quel est le nom du service écoutant sur le port 135 ? : RpcSs
Quel est le nom du service écoutant sur le port 3389 ? : TermService
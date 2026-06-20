Tache 1 : Introduction 

Objectifs d'apprentissage

Cette salle a pour objectif de vous fournir les bases nécessaires à l'utilisation du scanner Nmap ou simplementnmap . En particulier, vous apprendrez à :

    - Découvrez les hôtes en direct
    - Trouvez des services en cours d'exécution sur les hôtes en direct
    - Distinguer les différents types de scans de ports
    - Détecter les versions des services en cours d'exécution
    - Contrôlez le timing
    - Formater la sortie


Avant de commencer, nous devons mentionner que Nmaputilise plusieurs façons de spécifier ses cibles :

    - Plage IP utilisant- : Si vous souhaitez analyser toutes les adresses IP de 192.168.0.1 à 192.168.0.10, vous pouvez écrire 192.168.0.1-10
    - Sous-réseau IP utilisant/ : Si vous souhaitez analyser un sous-réseau, vous pouvez l'exprimer comme192.168.0.1/24 , et cela équivaudrait à 192.168.0.0-255
    - Nom d'hôte : Vous pouvez également spécifier votre cible par nom d'hôte, par exemple, example.thm

Comme dernier point, Nmap propose une analyse de liste avec l'option-sL . Cette analyse répertorie uniquement les cibles à analyser sans les analyser réellement. 
nmap -sL <adresse reseau/25> : listera les 256 cibles qui seront analysées. Cette option permet de confirmer les cibles avant d'exécuter l'analyse réelle.

Comme nous l'avons mentionné précédemment,
 nmpa -sn <adresse reseau> : vise à découvrir des hôtes en direct sans tenter de découvrir les services qui y fonctionnent. Cette analyse peut être utile si vous souhaitez découvrir les appareils sur un réseau sans provoquer beaucoup de bruit. Cependant, cela ne nous dira pas quels services fonctionnent. Si nous voulons en savoir plus sur les services réseau exécutés sur les hôtes en direct, nous avons besoin d’un type d’analyse plus “bruyant”, que nous explorerons dans la prochaine tâche.
 nmap -sS <adresse > :  sélectionner l'analyse SYN
 nmap -sS -o <adresse > : l'option de détection du système d'exploitation
 nmap -sS -sV <adresse > : permet la détection de version
 nmap -sS -A <adresse > : la détection du système d'exploitation, l'analyse des versions et le traceroute

Auparavant, nous avions l'habitude-sn de découvrir les animateurs en direct. Dans cette tâche, nous souhaitons découvrir les services réseau qui écoutent sur ces hôtes en direct. Par service réseau, nous entendons tout processus qui écoute les connexions entrantes sur un port TCP ou UDP. Les services réseau courants incluent les serveurs Web, qui écoutent généralement sur les ports TCP 80 et 443, et les serveurs DNS, qui écoutent généralement sur le port UDP (et TCP) 53.

De par sa conception, TCP dispose de 65 535 ports, et il en va de même pour UDP. 
Bien que la plupart des services utilisent TCP pour la communication, beaucoup utilisent UDP. Les exemples incluent DNS, DHCP, NTP (Network Time Protocol), SNMP (Simple Network Management Protocol) et VoIP (Voice over IP). UDP ne nécessite pas d'établir une connexion et de la supprimer ensuite. De plus, il est très adapté à la communication en temps réel, comme les diffusions en direct. Ce sont toutes des raisons d’envisager de rechercher et de découvrir des services écoutant sur les ports UDP.

Nmap offre la possibilité-sU de scanner pour UDPservices. Parce que UDPest plus simple que TCP, nous nous attendons à ce que le trafic soit différent. La capture d'écran ci-dessous montre plusieurs réponses ICMP destination inaccessible (port inaccessible) lorsque Nmap envoie UDPpaquets à fermer UDPports.

Limiter les ports cibles
Nmap analyse par défaut les 1 000 ports les plus courants. Cependant, ce n’est peut-être pas ce que vous recherchez. Nmap vous offre donc quelques options supplémentaires.

    -F :est destiné au mode rapide, qui analyse les 100 ports les plus courants (au lieu des 1 000 par défaut).
    -p[range] : vous permet de spécifier une plage de ports à analyser. Par exemple,-p10-1024 il analyse du port 10 au port 1024, tout en-p-25 analysant tous les ports compris entre 1 et 25. Notez qu'il analyse-p- tous les ports et qu'il est équivalent-p1-65535 et constitue la meilleure option si vous souhaitez être aussi minutieux que possible.
    - Astuce : les services les plus courants utilisent un numéro de port compris entre 1 et 1024 pour UDP ou TCP. Ces ports sont également connus sous le nom de ports bien connus. Utilisé-p1-1023 pour rechercher les ports bien connus.

Nmapfournit diverses options pour contrôler la vitesse et le timing de numérisation.

L'exécution de votre analyse à sa vitesse normale peut déclencher une IDou d'autres solutions de sécurité. Il est raisonnable de contrôler la vitesse à laquelle un scan doit aller. Nmap vous donne six modèles de timing, et les noms disent tout : paranoïaque (0), sournois (1), poli (2), normal (3), agressif (4) et fou (5). Vous pouvez choisir le modèle de synchronisation par son nom ou son numéro. Par exemple, vous pouvez ajouter-T0 (ou-T 0 ) ou-T paranoid opter pour le timing le plus lent.

Combien de ports TCP sont ouverts sur le système cible à10.64.155.54 ? nmap -sT <adress ip>
Quel est le nom et la version détectée du serveur Web en cours d'exécution10.64.177.4 ? : nmap -sS -sV <adresse ip>

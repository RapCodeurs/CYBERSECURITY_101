Tache 4 : ICMP: Depannage des reseaux

Le protocole ICMP (Internet Control Message Protocol) est principalement utilisé pour le diagnostic du réseau et le signalement des erreurs. Deux commandes populaires s'appuient sur ICMP et jouent un rôle déterminant dans le dépannage et la sécurité du réseau. Les commandes sont les suivantes

    ping: Cette commande utilise ICMP pour tester la connectivité à un système cible et mesure le temps aller-retour (RTT). En d’autres termes, il peut être utilisé pour apprendre que la cible est vivante et que sa réponse peut atteindre notre système.
    traceroute: Cette commande est appelée traceroute sur les systèmes Linux et de type UNIX et tracert sur les systèmes MS Windows. Il utilise ICMP pour découvrir l'itinéraire de votre hôte à la cible.

Les algorithmes de routage dépassent le cadre de cette salle ; cependant, nous décrirons brièvement quelques protocoles de routage afin que vous vous familiarisiez avec leurs noms :

    -OSPF (Ouvrez d'abord le chemin le plus court): OSPF est un protocole de routage qui permet aux routeurs de partager des informations sur la topologie du réseau et de calculer les chemins les plus efficaces pour la transmission de données. Pour ce faire, les routeurs échangent des mises à jour sur l’état de leurs liens et réseaux connectés. De cette façon, chaque routeur dispose d’une carte complète du réseau et peut déterminer les meilleurs itinéraires pour atteindre n’importe quelle destination.
    -EIGRP (Protocole de routage de passerelle intérieure amélioré): EIGRP est un protocole de routage propriétaire Cisco qui combine des aspects de différents algorithmes de routage. Il permet aux routeurs de partager des informations sur les réseaux qu'ils peuvent atteindre et sur le coût (comme la bande passante ou le délai) associé à ces itinéraires. Les routeurs utilisent ensuite ces informations pour choisir les chemins les plus efficaces pour la transmission de données.
    -BGP (Protocole de passerelle frontalière): BGP est le principal protocole de routage utilisé sur Internet. Il permet à différents réseaux (comme ceux des fournisseurs d'accès Internet) d'échanger des informations de routage et d'établir des chemins permettant aux données de circuler entre ces réseaux. BGP permet de garantir que les données peuvent être acheminées efficacement sur Internet, même lors de la traversée de plusieurs réseaux.
    -RIP (Protocole d'information de routage): RIP est un protocole de routage simple souvent utilisé dans les petits réseaux. Les routeurs exécutant RIP partagent des informations sur les réseaux qu'ils peuvent atteindre et le nombre de sauts (routeurs) nécessaires pour y arriver. En conséquence, chaque routeur construit une table de routage basée sur ces informations, en choisissant les itinéraires avec le moins de sauts pour atteindre chaque destination.

Quel champ d'en-tête IP effectue le traceroute la commande nécessite de devenir zéro ? : TTL
Quel protocole de routage discuté dans cette tâche est un protocole propriétaire Cisco ? : EIGRP
En supposant que le routeur dispose d'une puissance de traitement infinie, approximativement parlant, combien mille les connexions TCP simultanées peuvent-elles être maintenues ? : 65



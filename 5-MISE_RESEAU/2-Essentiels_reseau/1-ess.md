Tache 1 : Introduction 


Objectifs d'apprentissage

L'objectif de cette salle est de vous enseigner différents protocoles et technologies standards qui collent les choses ensemble :

    Protocole de configuration dynamique de l'hôte (DHCP)
    Protocole de résolution d'adresse (ARP)
    Traduction d'adresses réseau (NAT)
    Protocole de message de contrôle Internet (ICMP)
        Ping
        Traceroute



Vous êtes allé dans votre café préféré, avez pris votre boisson chaude préférée et avez ouvert votre ordinateur portable. Votre ordinateur portable s'est connecté au WiFi du magasin et a automatiquement configuré le réseau, vous pouvez donc désormais travailler sur une nouvelle salle TryHackMe. Vous n'avez pas saisi une seule adresse IP, mais votre appareil est entièrement configuré. Voyons comment cela s'est passé.

Chaque fois que nous voulons accéder à un réseau, nous devons au moins configurer les éléments suivants :

    Adresse IP avec masque de sous-réseau
    Routeur (ou passerelle)
    DNSserveur

Chaque fois que nous connectons notre appareil à un nouveau réseau, les configurations ci-dessus doivent être définies en fonction du nouveau réseau. La configuration manuelle de ces paramètres est une bonne option, en particulier pour les serveurs. Les serveurs ne sont pas censés changer de réseau ; vous ne transportez pas votre contrôleur de domaine et ne le connectez pas au WiFi du café. De plus, d’autres appareils doivent se connecter aux serveurs et s’attendre à les trouver à des adresses IP spécifiques.

Disposer d’un moyen automatisé de configurer les appareils connectés présente de nombreux avantages. Premièrement, cela nous éviterait de configurer manuellement le réseau ; c’est extrêmement important, en particulier pour les appareils mobiles. Deuxièmement, cela nous évite les conflits d’adresse, c’est-à-dire lorsque deux appareils sont configurés avec la même adresse IP. Un conflit d’adresse IP empêcherait les hôtes impliqués d’utiliser les ressources du réseau ; cela s’applique aux ressources locales et à Internet. La solution réside dans l'utilisation du protocole de configuration dynamique de l'hôte (DHCP). DHCPest un protocole au niveau de l'application qui s'appuie sur UDP; le serveur écoute sur UDPport 67, et le client envoie depuis UDPport 68. Votre smartphone et votre ordinateur portable sont configurés pour être utilisés DHCPpar défaut.


DHCPsuit quatre étapes : Découvrir, Offrir, Demander et Reconnaître (DORA) :

    DHCP Découvrir: Le client diffuse un message DHCPDISCOVER recherchant le local DHCPserveur s'il en existe un.
    DHCP Offre: Le serveur répond avec un message DHCPOFFER avec une adresse IP disponible pour que le client puisse l'accepter.
    DHCP Demande: Le client répond avec un message DHCPREQUEST pour indiquer qu'il a accepté l'IP proposée.
    DHCP Reconnaître: Le serveur répond par un message DHCPACK pour confirmer que l'adresse IP proposée est désormais attribuée à ce client.

À la fin de la DHCPprocessus, notre appareil aurait reçu toute la configuration nécessaire pour accéder au réseau ou même à Internet. En particulier, nous nous attendons à ce que le DHCPle serveur nous a fourni ce qui suit :

    L'adresse IP louée pour accéder aux ressources réseau
    La passerelle pour acheminer nos paquets en dehors du réseau local
    A DNSserveur pour résoudre les noms de domaine (plus d'informations à ce sujet plus tard)


Combien d’étapes DHCP utilise-t-il pour fournir la configuration du réseau  : 4
Quelle est l’adresse IP de destination utilisée par un client lorsqu’il envoie un paquet DHCP Discover ? : 255.255.255.255
Quelle est l'adresse IP source utilisée par un client lorsqu'il tente d'obtenir une configuration de réseau IP via DHCP ? : 0.0.0.0
Quelle est l'adresse MAC de destination utilisée dans une requête ARP ? : ff:ff:ff:ff
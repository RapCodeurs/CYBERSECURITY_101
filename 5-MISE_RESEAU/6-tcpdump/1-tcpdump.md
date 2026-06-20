Tache 1 : Introduction


Objectifs d'apprentissage
Cette salle a pour objectif de vous fournir les bases nécessaires à son utilisationtcpdump. En particulier, vous apprendrez à :

    Capturez les paquets et enregistrez-les dans un fichier
    Définir des filtres sur les paquets capturés
    Contrôlez la manière dont les paquets capturés sont affichés



TCPDUMP :  ecoute les interfaces reseaux --> -i INTERFACE, -i any, -w FILE, -r FILE, -c COUNT
filtrage par port, host, protocol(icmp)

 - tcpdump -i eth0 -c 50 -v capture et affiche 50 paquets en écoutant sur leth0'interface, qui est un Ethernet filaire, et les affiche de manière verbeuse.
 - tcpdump -i wlo1 -w data.pcap capture les paquets en écoutant sur l'wlo1interface (l'interface WiFi) et écrit les paquets dansdata.pcap . Cela continuera jusqu'à ce que l'utilisateur interrompe la capture en appuyant sur CTRL-C.
 - tcpdump -i any -nncapture les paquets sur toutes les interfaces et les affiche à l'écran sans nom de domaine ni résolution de protocole.

Considérez les exemples suivants :

    - tcpdump -i any tcp port 22 écoute sur toutes les interfaces et capture les paquets vers outcp depuisport 22, c'est-à-dire le trafic SSH.
    - tcpdump -i wlo1 udp port 123 écoute sur la carte réseau WiFi et filtre le trafic vers le protocole NTP (Network Time Protocol).udpport 123
    - tcpdump -i eth0 host example.com and tcp port 443 -w https.pcap écoutera sureth0 , l'interface Ethernet filaire et filtrera le trafic échangé avecexample.com qui utilisetcp etport 443 . En d’autres termes, cette commande filtre le trafic HTTPS lié àexample.com .

Il existe de nombreuses autres façons de filtrer les paquets. Après tout, dans toute situation réelle, nous devrions filtrer des milliers, voire des millions de paquets. Il est indispensable de pouvoir exprimer les paquets exacts à afficher. Par exemple, nous pouvons limiter les paquets affichés à ceux plus petits ou plus grands qu'une certaine longueur :

    - greater LENGTH: Filtre les paquets dont la longueur est supérieure ou égale à la longueur spécifiée
    - less LENGTH: Filtre les paquets dont la longueur est inférieure ou égale à la longueur spécifiée

Tcpdump est un programme riche avec de nombreuses options pour personnaliser la façon dont les paquets sont imprimés et affichés. Nous avons choisi de couvrir les cinq options suivantes :

    -q: Sortie rapide ; imprimer de brèves informations sur les paquets
    -e: Imprimez l'en-tête au niveau du lien
    -A: Afficher les données du paquet en ASCII
    -xx: Afficher les données du paquet au format hexadécimal, appelé hexadécimal
    -X: Afficher les en-têtes de paquets et les données en hexadécimal et ASCII

Le tableau ci-dessous fournit un résumé des options de ligne de commande que nous avons couvertes.

    Commande	                            Explication
    - tcpdump -q	                        Rapide et silencieux : informations brèves sur le paquet
    - tcpdump -e	                        Inclure les adresses MAC
    - tcpdump -A	                        Imprimer les paquets en codage ASCII
    - tcpdump -xx	                        Afficher les paquets au format hexadécimal
    - tcpdump -X	                        Afficher les paquets aux formats hexadécimal et ASCII


sudo tcpdump -r traffic.pcap "tcp[tcpflags] == tcp-rst" -n : affiche les paquets qui ont uniquement l'indicateur TCP Reset (RST)
tcpdump -r traffic.pcap -n "greater 15000" : affiche l'adresse IP de l'hôte qui a envoyé des paquets supérieurs à 15 000 octets
Quelle option pouvez-vous ajouter à votre commande pour afficher les adresses uniquement au format numérique ? : -n
Quelle est l'adresse MAC de l'hôte qui a envoyé une requête ARP ? : sudo tcpdump -e -r trafic.pcap arp

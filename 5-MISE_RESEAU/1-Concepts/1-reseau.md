Tache 1 : Introduction


Objectifs d'apprentissage
Lorsque vous aurez terminé cette salle, vous aurez appris ce qui suit :

    Modèle de réseau ISO OSI
    Adresses IP, sous-réseaux et routage
    TCP, UDP, et numéros de port
    Comment se connecter à un open TCPport depuis la ligne de commande


Tache 2 : Modele OSI

Avant de commencer, il convient de noter que le modèle OSI peut sembler compliqué au départ. Ne vous inquiétez pas si vous rencontrez des acronymes cryptiques, car nous fournissons des exemples de couches de modèles OSI. Nous vous assurons qu’au moment où vous aurez terminé ce module, cette tâche vous semblera un jeu d’enfant.

Le modèle OSI (Open Systems Interconnection) est un modèle conceptuel développé par l'Organisation internationale de normalisation (ISO) qui décrit comment les communications doivent se produire dans un réseau informatique. En d’autres termes, le modèle OSI définit un cadre pour les communications sur les réseaux informatiques. Bien que ce modèle soit théorique, il est essentiel de l’apprendre et de le comprendre car il permet de saisir les concepts de réseautage à un niveau plus profond. Le modèle OSI est composé de sept couches :

    1-Couche physique
    2-Couche de liaison de données
    3-Couche réseau
    4-Couche de transport
    5-Couche de session
    6-Couche de présentation
    7-Couche d'application


Couche 1 : Couche physique

La couche physique, également appelée couche 1, traite de la connexion physique entre les appareils ; cela inclut le support, tel qu'un fil, et la définition des chiffres binaires 0 et 1. La transmission de données peut se faire via un signal électrique, optique ou sans fil. Par conséquent, nous avons besoin de câbles de données ou d’antennes, en fonction de notre support physique.

Outre le câble Ethernet, représenté dans l'illustration ci-dessous, et le câble à fibre optique, des exemples de support de couche physique comprennent les bandes radio WiFi, la bande 2,4 GHz, la bande 5 GHz et la bande 6 GHz.

Couche 2 : Couche de liaison de données

La couche physique définit un support pour transmettre notre signal. La couche de liaison de données, c'est-à-dire la couche 2, représente le protocole qui permet le transfert de données entre les nœuds d'un même segment de réseau. Disons-le en termes plus simples. La couche de liaison de données décrit un accord entre les différents systèmes d'un même segment de réseau sur la manière de communiquer. Un segment de réseau fait référence à un groupe d'appareils en réseau utilisant un support ou un canal partagé pour le transfert d'informations. Prenons par exemple un bureau d’entreprise doté de dix ordinateurs connectés à un commutateur réseau ; il s’agit d’un segment de réseau.

Les exemples de couche 2 incluent Ethernet, c'est-à-dire 802.3, et WiFi, c'est-à-dire 802.11. Les adresses Ethernet et WiFi sont de six octets. Leur adresse est appelée adresse MAC, où MAC signifie Media Access Control. Ils sont généralement exprimés au format hexadécimal avec deux points séparant chacun deux chiffres hexadécimaux (un octet). Les trois octets les plus à gauche identifient le fournisseur.

Couche 3 : Couche réseau
La couche de liaison de données se concentre sur l’envoi de données entre deux nœuds sur le même segment de réseau. La couche réseau, c'est-à-dire la couche 3, est concernée par l'envoi de données entre différents réseaux. En termes plus techniques, la couche réseau gère l'adressage et le routage logiques, c'est-à-dire la recherche d'un chemin pour transférer les paquets réseau entre les différents réseaux.

Dans la couche liaison de données, nous avons donné l'exemple d'un bureau d'entreprise doté de dix ordinateurs, où la couche liaison de données est chargée d'assurer une connexion entre eux. Disons que cette entreprise dispose de plusieurs bureaux répartis dans différentes villes, pays ou même continents. La couche réseau est chargée de connecter les différents bureaux entre eux.

Le réseau ci-dessous montre que les ordinateurs A et B sont connectés, bien que sur des réseaux différents. Vous pouvez également remarquer deux chemins reliant les deux ordinateurs ; la couche réseau acheminera les paquets réseau via le chemin qu'elle juge le meilleur.

Adresses privées
Comme nous expliquons les adresses IP, il est utile de mentionner que pour la plupart des besoins pratiques, il existe deux types d'adresses IP :

    Adresses IP publiques
    Adresses IP privées

La RFC 1918 définit les trois plages suivantes d'adresses IP privées :

    10.0.0.0 - 10.255.255.255 (10/8)
    172.16.0.0 - 172.31.255.255 (172.16/12)
    192.168.0.0 - 192.168.255.255 (192.168/16)

Quelle couche est responsable de communication de bout en bout entre les applications en cours d'exécution ? : 4
Quelle couche est responsable du routage des paquets vers le réseau approprié ? : 3
Dans le modèle OSI, quelle couche est responsable de l’encodage des données de l’application ? : 6
Quelle couche est responsable du transfert de données entre hôtes sur le même segment de réseau ? : 2
À quelle couche appartient HTTP dans le modèle TCP/IP ? : couche d'application
Combien de couches du modèle OSI la couche application du modèle TCP/IP couvre-t-elle ? 3

Laquelle des adresses IP suivantes n’est pas une adresse IP privée ?

    192.168.250.125
    20/10/141.132
    49.69.147.197 -----> celle-ci
    172.23.182.251

Laquelle des adresses IP suivantes n’est pas une adresse IP valide ?

    192.168.250.15
    192.168.254.17
    192.168.305.19 -----> celle-ci
    192.168.199.13

Quel protocole nécessite une poignée de main à trois ? : tcp
Quel est le nombre approximatif de numéros de port (en milliers) ? : 65
Sur un WiFi, dans quel cas un paquet IP sera-t-il encapsulé ? : frame
Comment appelez-vous l’unité de données UDP qui encapsule les données de l’application ? : datagram
Comment appelez-vous l’unité de données qui encapsule les données d’application envoyées via TCP ? : segment


Objectifs d'apprentissage

Lorsque vous aurez terminé cette salle, vous aurez pris connaissance des protocoles suivants :

    WHOIS
    DNS
    HTTP et FTP
    SMTP, POP3, et IMAP

Tache 2 : DNS : memoriser les adresses

DNSfonctionne au niveau de la couche application, c'est-à-dire de la couche 7 du modèle ISO OSI. DNSutilisations du trafic UDPport 53 par défaut et TCP port 53 comme solution de secours par défaut. Il existe de nombreux types de DNSenregistrements ; cependant, dans cette tâche, nous nous concentrerons sur les quatre suivants :

    Un record: L'enregistrement A (Adresse) mappe un nom d'hôte à une ou plusieurs adresses IPv4. Par exemple, vous pouvez définir example.com se résoudre à 172.17.2.172.
    Enregistrement AAAA: L'enregistrement AAAA est similaire à l'enregistrement A, mais il est destiné à IPv6. N'oubliez pas qu'il s'agit de AAAA (quad-A), car AA et AAA feraient référence à la taille de la batterie ; de plus, AAA fait référence à Authentification, autorisation et comptabilité; aucun des deux ne relève du DNS.
    Enregistrement CNAME: L'enregistrement CNAME (Canonical Name) mappe un nom de domaine à un autre nom de domaine. Par exemple, www.example.com peut être mappé à example.com ou même à example.org.
    Enregistrement MX: L'enregistrement MX (Mail Exchange) spécifie le serveur de messagerie responsable de la gestion des e-mails pour un domaine.


nslookup : rechercher l'adresse IP d'un domaine 
whois :  rechercher les enregistrements de n'importe quel nom de domaine enregistré à l'aide de l'un des services en ligne
HTTP : signifie Hypertext Transfer Protocol 

Certaines des commandes ou méthodes que votre navigateur Web envoie généralement au serveur Web sur port 80 ou 443 sont :

    - GET : récupère des données d'un serveur, telles qu'un fichier HTML ou une image.
    - POST : nous permet de soumettre de nouvelles données au serveur, comme soumettre un formulaire ou télécharger un fichier.
    - PUTest : utilisé pour créer une nouvelle ressource sur le serveur et pour mettre à jour et écraser les informations existantes.
    - DELETE : comme son nom l'indique, est utilisé pour supprimer un fichier ou une ressource spécifié sur le serveur.à

HTTP et HTTPS utilisent généralement les ports TCP 80 et 443, respectivement, et moins fréquemment d'autres ports tels que 8080 et 8443.
telnet <IP-ADDRESS> <PORT> 
Protocole de transfert de fichiers (FTP)  : conçu pour transférer des fichiers sur port 21

Exemples de commandes définies par le FTPles protocoles sont les suivants sur port 21 :

    - USER : est utilisé pour saisir le nom d'utilisateur
    - PASS : est utilisé pour saisir le mot de passe
    - RETR(retrieve) : est utilisé pour télécharger un fichier du serveur FTP vers le client.
    - STOR(store) : est utilisé pour télécharger un fichier du client vers le FTPserveur.
 
Protocole simple de transfert de courrier (SMTP) : éfinit comment un client de messagerie communique avec un serveur de messagerie et comment un serveur de messagerie communique avec un autre.

Présentons quelques-unes des commandes utilisées par votre client de messagerie lorsqu'il transfère un e-mail à un SMTP serveur sur le port 25:

    - HELO ou EHLO : lance une session SMTP
    - MAIL FROM : spécifie l'adresse e-mail de l'expéditeur
    - RCPT TO : spécifie l'adresse e-mail du destinataire
    - DATA : indique que le client commencera à envoyer le contenu du message électronique
    - . : est envoyé sur une ligne à part pour indiquer la fin du message électronique

Le Protocole de la Poste version 3 (POP3) est conçu pour permettre au client de communiquer avec un serveur de messagerie et de récupérer des messages électroniques.

Quelques points communs POP3 les commandes sont les suivantes sur le port 110 : 

    - USER <username> : identifie l'utilisateur
    - PASS <password> : fournit le mot de passe de l'utilisateur
    - STAT : demande le nombre de messages et la taille totale
    - LIST : répertorie tous les messages et leurs tailles
    - RETR <message_number> : récupère le message spécifié
    - DELE <message_number> : marque un message à supprimer
    - QUIT : termine la session POP3 en appliquant des modifications, telles que des suppressions


IMAP (est le protocole d'accès aux messages Internet ) : permet de synchroniser les messages lus, déplacés et supprimés 

Le IMAPles commandes du protocole sont plus compliquées que les POP3commandes de protocole. Nous énumérons quelques exemples ci-dessous port 143:

    - LOGIN <username> <password> : authentifie l'utilisateur
    - SELECT <mailbox> : sélectionne le dossier de la boîte aux lettres avec lequel travailler
    - FETCH <mail_number> <data_item_name> : Exemple fetch 3 body[] pour récupérer le message numéro 3, l'en-tête et le corps.
    - MOVE <sequence_set> <mailbox> : déplace les messages spécifiés vers une autre boîte aux lettres
    - COPY <sequence_set> <data_item_name> : copie les messages spécifiés dans une autre boîte aux lettres
    - LOGOUT : se déconnecte

Quel type d’enregistrement DNS fait référence à IPv6 ? : AAAA
Quel type d’enregistrement DNS fait référence au serveur de messagerie ? : MX
Utilisation du client FTP ftp sur l'AttackBox, accédez au serveur FTP à MACHINE_IP et récupérer flag.txt. Quel est le drapeau trouvé ? : THM{FAST-FTP}
Quelle commande SMTP indique que le client démarrera le contenu du message électronique ? : DATA
Qu'envoie le client de messagerie pour indiquer que le message électronique a été entièrement saisi ? : .
En regardant l'échange de trafic, quel est le nom du serveur POP3 exécuté sur le serveur distant ? : Dovecot
Utiliser telnet se connecter à 10.67.178.91’s Serveur POP3. Quel est le drapeau contenu dans le quatrième message ? : THM{TELNET_RETR_EMAIL}
Quelle commande IMAP récupère le quatrième message électronique ? : FETCH 4 body[]





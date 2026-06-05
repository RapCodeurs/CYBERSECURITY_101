Tache 6 : Informations sur le systeme et reseau 


Get-ComputerInfo : cmdlet récupère des informations système complètes, notamment des informations sur le système d'exploitation, les spécifications matérielles, les détails du BIOS, etc. Il fournit un instantané de l'ensemble de la configuration du système en une seule commande. Son homologue traditionnel systeminfo récupère seulement un petit ensemble des mêmes détails.

Get-LocalUser : répertorie tous les comptes d'utilisateurs locaux sur le système. La sortie par défaut affiche, pour chaque utilisateur, le nom d'utilisateur, l'état du compte et la description.

Get-NetIPConfiguration : fournit des informations détaillées sur les interfaces réseau du système, y compris les adresses IP, les serveurs DNS et les configurations de passerelle.

Get-NetIPAddress : cmdlet affichera les détails de toutes les adresses IP configurées sur le système, y compris celles qui ne sont pas actuellement actives.
Outre votre utilisateur actuel et le compte « Administrateur » par défaut, quel autre utilisateur est activé sur la machine de laboratoire : net user ou get-localuser


Tache 7 : Analyse dus systeme en temps reel

Get-Process : fournit une vue détaillée de tous les processus en cours d'exécution
Get-Service : permet de récupérer des informations sur l'état des services sur la machine
Get-NetTCPConnection : affiche les connexions TCP actuelles
Get-FileHash : en tant qu'applet de commande utile pour générer des hachages de fichiers
(Get-FileHash .\big-treasure.txt).Hash : pour afficher la cle complete
Get-Item -Path "C:\House\house_log.txt" -Stream * : afficher les flux de données alternatifs joints à un fichier


Quelle propriété récupérée par défaut par Get-NetTCPConnection contient des informations sur le processus qui a démarré la connexion ? : OwningProcess
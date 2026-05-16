Tache 3 : Maintenir votre systeme, gestion de packages, journaux : Automatisation

Prenons l’exemple de la sauvegarde de fichiers : 0 */12 * * * cp -R /home/cmnatic/Documents /var/backups/

Un crontab est simplement un fichier spécial avec un formatage reconnu par le cron processus pour exécuter chaque ligne étape par étape. Les Crontabs nécessitent 6 valeurs spécifiques :

Valeur	                                                   Description
MIN	                                                    À quelle minute exécuter
HEURE	                                                À quelle heure exécuter
DOM	                                                    Quel jour du mois exécuter à
MON	                                                    À quel mois de l'année exécuter
DOW	                                                    Quel jour de la semaine exécuter à
CMD	                                                    La commande réelle qui sera exécutée.

ls /etc/crontab
cat /etc/crontab
crontab -l

Gestions des packages --> 

1-Téléchargeons la clé GPG et utilisons apt-key pour lui faire confiance :  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

Faut d'abord creer un fichier dans le dossier /etc/apt/sources.list.d

2-apt update

3-apt install sublime-text

4-apt remove sublime-text

Pour récapituler, cette salle vous a présenté les sujets suivants :

    -Utilisation des éditeurs de texte du terminal
    -Utilitaires généraux tels que le téléchargement et la diffusion de contenus à l'aide d'un serveur Web Python
    -Un regard sur les processus
    -Maintenir et automatiser votre système grâce à l'utilisation de crontabs, à la gestion des packages et à la révision des journaux
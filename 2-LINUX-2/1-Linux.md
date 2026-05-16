Tache 1 : Editeurs de texte et Telechargements de fichiers

nano : editeurs de texte
vim : editeurs de texte

wget : pour telecharger les fichiers, les programmes, et les sites webs


Travaillant sur un modèle de SOURCE et de DESTINATION, SCP vous permet de :

Copiez des fichiers et des répertoires de votre système actuel vers un système distant
Copiez des fichiers et des répertoires d'un système distant vers votre système actuel

Variable	                                                         Valeur
L'adresse IP du système distant :	                                 192.168.1.30
Utilisateur sur le système distant :	                             Ubuntu
Nom du fichier sur le système local	:                                important.txt
Nom sous lequel nous souhaitons 
stocker le fichier sur le système distant :	                         transféré.txt

scp important.txt ubuntu@192.168.1.30:/home/ubuntu/transferred.txt --> Transferer un fichier de mon ordinateur local pour un ordinateur distant

scp ubuntu@192.168.1.30:/home/ubuntu/documents.txt notes.txt --> Tranferer un fichier d'un ordinateur distant vers mon ordinateur local

python3 -m http.server : Lancer le server web

wget http://10.65.134.121:8000/myfile ---> port : 8000
                                            ip : 10.65.134.121
                                            myfile : le nom du fichier ou le server web est lancé a telechargée


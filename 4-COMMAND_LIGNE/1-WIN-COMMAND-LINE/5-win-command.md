Tache 5 : Gestion des taches et processus


tasklist : Nous pouvons lister les processus en cours d'exécution en utilisant
tasklist /? : 
tasklist /FI "imagename eq sshd.exe" : Disons que nous voulons rechercher des tâches liées à sshd.exe, nous pouvons le faire
taskkill /F /PID 1644 : forcer la fermeture d'un processus 

Quelle commande utiliseriez-vous pour trouver les processus en cours d’exécution liés à notepad.exe ? : tasklist /FI "imagename eq notepad.exe"
Quelle commande pouvez-vous utiliser pour arrêter le processus avec PID 1516 ? : taskkill /PID 1516


Nous les mentionnons ci-dessous afin que vous sachiez que la ligne de commande peut être utilisée pour d'autres tâches.

    - chkdsk: vérifie le système de fichiers et les volumes de disque pour détecter les erreurs et les secteurs défectueux.
    - driverquery: affiche une liste des pilotes de périphériques installés.
    - sfc /scannow: analyse les fichiers système pour détecter toute corruption et les répare si possible.

shutdown /s  : La commande peut arrêter un système
shutdown /r : la commande pourt redemmarer le systeme
shutdown /a : pour arreter ou interrompe un programme


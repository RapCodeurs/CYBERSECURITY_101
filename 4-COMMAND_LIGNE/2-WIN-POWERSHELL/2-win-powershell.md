Tache 4 : Naviguer dans le systeme de fichiers et travailler avec des fichiers

Semblable au dir commande dans l'invite de commande (ou ls dans les systèmes de type Unix), Get-ChildItem répertorie les fichiers et répertoires dans un emplacement spécifié avec le -Path paramètre. Il peut être utilisé pour explorer les répertoires et visualiser leur contenu. Si non Path est spécifié, l'applet de commande affichera le contenu du répertoire de travail actuel.

Pour créer un élément dans PowerShell, nous pouvons utiliser New-Item. Nous devrons spécifier le chemin de l'élément et son type (qu'il s'agisse d'un fichier ou d'un répertoire).

New-Item -Path "captain-wardrobe" -ItemType "Directory" : creation d'un dossier appelé captain-wardrobe
New-Item -Path ".\captain-cabin\captain-wardrobe\captain-boots.txt" -ItemType "File" : creation d'un fichier dans le dossier captain-wardrobe

De même, le Remove-Item cmdlet supprime à la fois les répertoires et les fichiers, alors que dans Windows CLI, nous avons des commandes distinctes rmdir et del.

Remove-Item -Path ".\captain-cabin\captain-wardrobe\captain-boots.txt"
Remove-Item -Path ".\captain-cabin\captain-wardrobe"


Copy-Item -Path .\captain-cabin\captain-hat.txt -Destination .\captain-cabin\captain-hat2.txt
Get-ChildItem -Path ".\captain-cabin\" : afficher le contenu du repertoire
Get-Content -Path ".\captain-hat.txt" : lire le contenu du fichier

Quelle applet de commande pouvez-vous utiliser à la place de la commande Windows traditionnelle type? : Get-Content
Quelle commande PowerShell utiliseriez-vous pour afficher le contenu du répertoire « C:\Users » ? [pour les besoins de cette question, évitez l'utilisation de guillemets (" ou ')dans votre réponse] :  Get-ChildItem -Path C:\Users

Combien d'éléments sont affichés par la commande décrite dans la question précédente ? 4
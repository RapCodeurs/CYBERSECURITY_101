Tache 2 : Timing-> a quel point est rapide

Une deuxième option utile est le nombre de sondes de service parallèles. Le nombre de sondes parallèles peut être contrôlé avec--min-parallelism <numprobes> et--max-parallelism <numprobes> . Ces options peuvent être utilisées pour définir un minimum et un maximum sur le nombre de sondes de port TCP et UDP actives simultanément pour un groupe hôte. Par défaut,nmap contrôlera automatiquement le nombre de sondes parallèles. Si le réseau fonctionne mal, c'est-à-dire en supprimant des paquets, le nombre de sondes parallèles peut tomber à un ; de plus, si le réseau fonctionne parfaitement, le nombre de sondes parallèles peut atteindre plusieurs centaines.

Une option similaire et utile est le--min-rate <number> et--max-rate <number> . Comme leurs noms l’indiquent, ils peuvent contrôler les débits minimum et maximum auxquels lesnmap paquets sont envoyés. Le débit est fourni sous forme de nombre de paquets par seconde. Il convient de mentionner que le débit spécifié s’applique à l’ensemble de l’analyse et non à un seul hôte.

La dernière option que nous aborderons dans cette tâche est--host-timeout <time> . Cette option spécifie le temps maximum que vous êtes prêt à attendre et convient aux hôtes lents ou aux hôtes disposant de connexions réseau lentes.

What is the non-numeric equivalent of -T4? -T aggressive

Tache 3 : Sortie -> Controlez ce que vous voyez

Cette tâche se concentre sur deux caractéristiques principales :

    - Affichage d'informations supplémentaires pendant qu'une analyse a lieu
    - Choisir le format de fichier pour enregistrer le rapport d'analyse

Très probablement, l-v'option est plus que suffisante pour une sortie verbeuse ; cependant, si vous n'êtes toujours pas satisfait, vous pouvez augmenter le niveau de verbosité en ajoutant un autre “v” tel que-vv ou même-vvvv . Vous pouvez également spécifier directement le niveau de verbosité, par exemple,-v2 et-v4 . Vous pouvez même augmenter le niveau de verbosité en appuyant sur “v” une fois le scan déjà démarré.

Si toute cette verbosité ne satisfait pas vos besoins, vous devez prendre en compte la-d sortie au niveau du débogage. De même, vous pouvez augmenter le niveau de débogage en ajoutant un ou plusieurs “d” ou en spécifiant directement le niveau de débogage. Le niveau maximum est ; avant-d9 de choisir cela, assurez-vous d'être prêt pour des milliers d'informations et de lignes de débogage.

Dans de nombreux cas, nous devrions enregistrer les résultats de l’analyse. Nmap nous donne différents formats. Les trois plus utiles sont la sortie normale (conviviale), la sortie XML et la sortie grepable, en référence à lagrep commande. Vous pouvez sélectionner le format du rapport d'analyse comme suit :

-oN <filename> :  Sortie normale
-oX <filename> :  Sortie XML
-oG <filename> -grep  : sortie possible (utile pourgrep etawk )
-oA <basename> :  Sortie dans tous les principaux formats

Quelle option devez-vous ajouter à votrenmap commande pour activer le débogage ? : nmap -sS <adresse ip> -d
What kind of scan will Nmap use if you run nmap 10.64.177.4 with local user privileges? : CONNECT SCAN

Objectifs d'apprentissage

    - Naviguer et configurer Wireshark
    - Inspectez les paquets et découvrez les informations des différentes couches de TCP/JE
    - Appliquer des filtres d'affichage

Wireshark est l’un des outils d’analyse du trafic les plus puissants disponibles dans la nature. Son utilisation a de multiples objectifs :

    - Détection et dépannage des problèmes de réseau, tels que les points de défaillance de charge du réseau et la congestion.
    - Détection d'anomalies de sécurité, telles que des hôtes malveillants, une utilisation anormale des ports et un trafic suspect.
    - Enquête et apprentissage des détails du protocole, tels que les codes de réponse et les données de charge utile.


Tache 1 : Filtrage des paquets

Wireshark dispose de deux types d'approches de filtrage : les filtres de capture et d'affichage.
    - Les filtres de capture sont utilisés pour  « capturer » uniquement les paquets valides pour le filtre utilisé.
    - Les filtres d'affichage sont utilisés pour  « visualiser » les paquets valides pour le filtre utilisé.

Les filtres sont des requêtes spécifiques conçues pour les protocoles disponibles dans la référence officielle du protocole de Wireshark. Bien que les filtres ne soient que l'option permettant d'étudier l'événement d'intérêt, il existe deux manières différentes de filtrer le trafic et de supprimer le bruit du fichier de capture. Le premier utilise des requêtes et le second utilise le menu du clic droit. Wireshark fournit un puissant INTERFACE GRAPHIQUE, et il existe une règle d'or pour les analystes qui ne veulent pas écrire de requêtes pour des tâches de base :  « Si vous pouvez cliquer dessus, vous pouvez le filtrer et le copier »

Utilisez le fichier « Exercise.pcapng » pour répondre aux questions. Afficher le paquet numéro 38. Quel langage de balisage est utilisé sous le protocole HTTP ? : eXtensible Markup Language ----> La derniere couche 
Quelle est la date d'arrivée du paquet ? (Format de réponse : Mois/Jour/Année) : 05/13/2004 ----> Frame
Quelle est la valeur TTL ? : 47 ----> Internet Protocol version
Quelle est la taille de la charge utile TCP ? : 424 ---> Transmission control protocol
Quelle est la valeur de l'e-tag ? (Par exemple : 82ecb-6321-9e904585) : 9a01a-4696-7e354b00 --> Hypertext tranfer protocol
Accédez au paquet 12 et lisez les commentaires du paquet. Quelle est la réponse ? (GO --> GO TO PACKET): 
Il y a un fichier « .txt » à l'intérieur du fichier de capture. Trouvez le fichier et lisez-le ; quel est le nom de l'extraterrestre ? (File ---> export objets --> HTTP --> TEXT FILTER ---> SAVE): PACKETMASTER
Consultez la section d’informations sur les experts. Quel est le nombre d'avertissements ?( Analyse --> expert information --> count) : 1636
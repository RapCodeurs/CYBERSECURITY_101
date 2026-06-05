Tache 5 : Tuyautage, filtrage et tri des données

Tuyauterie est une technique utilisée dans les environnements de ligne de commande qui permet d'utiliser la sortie d'une commande comme entrée pour une autre. Cela crée une séquence d’opérations où les données circulent d’une commande à l’autre. Représenté par le | symbole, la tuyauterie est largement utilisée dans la CLI Windows, comme introduit précédemment dans ce module, ainsi que dans les shells basés sur Unix

Get-ChildItem | Sort-Object Length : si vous souhaitez obtenir une liste de fichiers dans un répertoire, puis les trier par taille
Get-ChildItem | Where-Object -Property "Extension" -eq ".txt" : filtre les fichiers par leur Extension propriété, garantissant que seuls les fichiers avec extension sont égaux (-eq) à .txt sont répertoriés.
Get-ChildItem | Where-Object -Property "Name" -like "ship*" : un autre exemple montre que les objets peuvent également être filtrés en sélectionnant des propriétés qui correspondent (-like) un modèle spécifié
Get-ChildItem | Select-Object Name,Length : est utilisé pour sélectionner des propriétés spécifiques à partir d'objets ou limiter le nombre d'objets renvoyés.
Get-ChildItem | Sort-Object Length -Descending | Select-Object -First 1 : trier et filtrer la sortie dans le but d'afficher le plus gros fichier

Ici, Where-Object filtre les fichiers par leur Extension propriété, garantissant que seuls les fichiers avec extension sont égaux (-eq) à .txt sont répertoriés.

L'opérateur -eq (c'est-à-dire "égal à") fait partie d'un ensemble de opérateurs de comparaison qui sont partagés avec d'autres langages de script (par exemple Bash, Python). Pour montrer le potentiel du filtrage de PowerShell, nous avons sélectionné certains des opérateurs les plus utiles de cette liste :

    -ne: "pas égal". Cet opérateur peut être utilisé pour exclure des objets des résultats en fonction de critères spécifiés.
    -gt: "supérieur à". Cet opérateur filtrera uniquement les objets qui dépassent une valeur spécifiée. Il est important de noter qu’il s’agit d’une comparaison stricte, ce qui signifie que les objets égaux à la valeur spécifiée seront exclus des résultats.
    -ge: "supérieur ou égal à". Il s'agit de la version non stricte de l'opérateur précédent. Une combinaison de -gt et -eq.
    -lt: "inférieur à". Comme son homologue, « supérieur à », il s’agit d’un opérateur strict. Il inclura uniquement les objets strictement inférieurs à une certaine valeur.
    -le: "inférieur ou égal à". Tout comme son homologue -ge, il s'agit de la version non stricte de l'opérateur précédent. Une combinaison de -lt et -eq.

Comment récupéreriez-vous les éléments du répertoire actuel dont la taille est supérieure à 100 ? : Get-ChildItem | Where-Object -Property Length -gt 100
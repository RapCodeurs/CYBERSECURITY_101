Tache 1 : Termes de base

Objectifs d'apprentissage
Une fois cette salle terminée, vous apprenez à utiliser John pour :

        - Décryptage des hachages d'authentification Windows
        - Hach/etc/shadowages de fissures
        - Décryptage des fichiers Zip protégés par mot de passe
        - Décryptage des fichiers RAR protégés par mot de passe
        - Fissuration SSH clés

Que sont les hachages ?

Un hachage est un moyen de prendre une donnée de n'importe quelle longueur et de la représenter sous une autre forme de longueur fixe. Ce processus masque la valeur originale des données. La valeur de hachage est obtenue en exécutant les données d'origine via un algorithme de hachage. Il existe de nombreux algorithmes de hachage populaires, tels que MD4, MD5, SHA1 et NTLM

Qu'est-ce qui rend les hachages sécurisés ?
Les fonctions de hachage sont conçues comme des fonctions unidirectionnelles. En d’autres termes, il est facile de calculer la valeur de hachage d’une entrée donnée ; cependant, il est difficile de trouver l’entrée d’origine étant donné la valeur de hachage. En termes simples, un problème difficile devient rapidement irréalisable sur le plan informatique. Ce problème informatique trouve ses racines dans les mathématiques sous le nom de P vs NP.

En informatique, P et NP sont deux classes de problèmes qui nous aident à comprendre l'efficacité des algorithmes :

    - P (Polynomial Time) : La classe P couvre les problèmes dont la solution peut être trouvée en temps polynomial. Envisagez de trier une liste par ordre croissant. Plus la liste est longue, plus il faudra de temps pour la trier ; cependant, l’augmentation du temps n’est pas exponentielle.
    - NP (Non-deterministic Polynomial Time) : Les problèmes de la classe NP sont ceux pour lesquels une solution donnée peut être vérifiée rapidement, même si trouver la solution elle-même peut être difficile. En fait, nous ne savons pas s’il existe un algorithme rapide pour trouver la solution en premier lieu.

Bien qu’il s’agisse d’un concept mathématique fascinant qui s’avère fondamental pour l’informatique et la cryptographie, il sort totalement du cadre de cette salle. Mais de manière abstraite, l’algorithme pour hacher la valeur sera “P” et peut donc être calculé raisonnablement. Cependant, un algorithme “de non-hachage” serait “NP” et difficile à résoudre, ce qui signifie qu'il ne peut pas être calculé dans un délai raisonnable à l'aide d'ordinateurs standards.

Où John entre
Même si l’algorithme n’est pas réversible, cela ne signifie pas qu’il est impossible de déchiffrer les hachages. Si vous avez la version hachée d'un mot de passe, par exemple, et que vous connaissez l'algorithme de hachage, vous pouvez utiliser cet algorithme de hachage pour hacher un grand nombre de mots, appelé dictionnaire. Vous pouvez ensuite comparer ces hachages à celui que vous essayez de déchiffrer pour voir s'ils correspondent. S'ils le font, vous savez quel mot correspond à ce hachage, vous l'avez déchiffré !

Ce processus est appelé une attaque par dictionnaire, et Jean l'Éventreur, ou John comme il est communément abrégé, est un outil permettant de mener des attaques rapides par force brute sur différents types de hachage.

Tache 2 : Fissurage des hackages de base

La syntaxe de base de Jean l'Éventreurles commandes sont les suivantes. Nous aborderons les options et modificateurs spécifiques utilisés au fur et à mesure que nous les utilisons.

    john [options] [file path]

        - john: Invoque le programme John the Ripper
        - [options]: Spécifie les options que vous souhaitez utiliser
        - [file path]: Le fichier contenant le hachage que vous essayez de déchiffrer ; s'il se trouve dans le même répertoire, vous n'aurez pas besoin de nommer un chemin, juste le fichier.

Fissuration automatique
John dispose de fonctionnalités intégrées pour détecter le type de hachage qui lui est fourni et pour sélectionner les règles et formats appropriés pour le déchiffrer pour vous ; ce n'est pas toujours la meilleure idée car cela peut être peu fiable, mais si vous ne pouvez pas identifier le type de hachage avec lequel vous travaillez et que vous souhaitez essayer de le déchiffrer, cela peut être une bonne option ! Pour ce faire, nous utilisons la syntaxe suivante :

john --wordlist=[path to wordlist] [path to file]

    --wordlist=: Spécifie l'utilisation liste de motsmode, lecture à partir du fichier que vous fournissez dans le chemin fourni
    [path to wordlist]: Le chemin vers le liste de motsvous utilisez, comme décrit dans la tâche précédente

Exemple d'utilisation :

john --wordlist=/usr/share/wordlists/rockyou.txt hash_to_crack.txt

Identifier les

Parfois, John ne joue pas bien avec la reconnaissance et le chargement automatiques des hachages, mais ce n'est pas grave ! Nous pouvons utiliser d’autres outils pour identifier le hachage, puis définir John sur un format spécifique. Il existe plusieurs façons de procéder, comme l'utilisation d'un identifiant de hachage en ligne comme ce site(ouvre dans un nouvel onglet). J'aime utiliser un outil appelé hash-identifier(ouvre dans un nouvel onglet), un outil Python très simple à utiliser et qui vous indiquera quels sont les différents types de hachages susceptibles d'être celui que vous saisissez, vous offrant ainsi plus d'options si le premier échoue.

Pour utiliser hash-identifier, vous pouvez utiliserwget oucurl télécharger le fichier Pythonhash-id.py depuis sa page GitLab(ouvre dans un nouvel onglet). Ensuite, lancez-lepython3 hash-id.py et entrez le hachage que vous essayez d'identifier. Il vous donnera une liste des formats les plus probables. Ces deux étapes sont présentées dans le terminal ci-dessous. <Voir l'image jean1.png>

Fissuration spécifique au format

Une fois que vous avez identifié le hachage auquel vous avez affaire, vous pouvez dire à John de l'utiliser tout en craquant le hachage fourni en utilisant la syntaxe suivante :

john --format=[format] --wordlist=[path to wordlist] [path to file]

    --format=: C'est le drapeau pour dire à John que vous lui donnez un hachage d'un format spécifique et pour utiliser le format suivant pour le déchiffrer
    [format]: Le format dans lequel se trouve le hachage

Exemple d'utilisation :

john --format=raw-md5 --wordlist=/usr/share/wordlists/rockyou.txt hash_to_crack.txt

Tache 3 : Decryptage des hachages d'authentification windows

NT hash est le format de hachage utilisé par les machines modernes du système d'exploitation Windows pour stocker les mots de passe des utilisateurs et des services. On l'appelle aussi communément NTLM, qui fait référence à la version précédente du format Windows pour le hachage des mots de passe connue sous le nom de LM, donc NT/LM.

Tache 4 : Craqueage/etc/shadow Hashes

John peut être très précis sur les formats dans lesquels il a besoin de données pour pouvoir travailler avec lui ; pour cette raison, pour déchiffrer les/etc/shadow mots de passe, vous devez les combiner avec le/etc/passwd fichier pour que John comprenne les données qui lui sont fournies. Pour ce faire, nous utilisons un outil intégré à la suite d’outils John appeléunshadow . La syntaxe de base deunshadow est la suivante :

unshadow [path to passwd] [path to shadow]

    - unshadow: Invoque l'outil Unshadow
    - [path to passwd]: Le fichier qui contient la copie du/etc/passwd fichier que vous avez extrait de la machine de laboratoire
    - [path to shadow]: Le fichier qui contient la copie du/etc/shadow fichier que vous avez extrait de la machine de laboratoire

Exemple d'utilisation :

unshadow local_passwd local_shadow > unshadowed.txt

Tache 4 : Mode de fissure unique

Utilisation du mode crack unique
Pour utiliser le mode crack unique, nous utilisons à peu près la même syntaxe que celle que nous avons utilisée jusqu'à présent ; par exemple, si nous voulions déchiffrer le mot de passe de l'utilisateur nommé “Mike”, en utilisant le mode unique, nous utiliserions :

john --single --format=[format] [path to file]

    --single: Cet indicateur permet à John de savoir que vous souhaitez utiliser le mode de hachage unique
    --format=[format]: Comme toujours, il est essentiel d’identifier le format approprié.

Exemple d'utilisation :

john --single --format=raw-sha256 hashes.txt

Tache 5 : regles et personnnalisées

Règles douanières communes

De nombreuses organisations auront besoin d’un certain niveau de complexité des mots de passe pour tenter de lutter contre les attaques par dictionnaire. En d’autres termes, lors de la création d’un nouveau compte ou de la modification de votre mot de passe, si vous essayez un mot de passe commepolopassword, cela ne fonctionnera probablement pas. La raison en serait la complexité imposée du mot de passe. En conséquence, vous pouvez recevoir une invite vous indiquant que les mots de passe doivent contenir au moins un caractère de chacun des éléments suivants :

    - Lettre minuscule
    - Lettre majuscule
    - Nombre
    - Symbole

[List.Rules:THMRules]est utilisé pour définir le nom de votre règle ; c'est ce que vous utiliserez pour appeler votre règle personnalisée un argument de John.

Nous utilisons ensuite un modèle de correspondance de style regex pour définir où le mot sera modifié ; encore une fois, nous ne couvrirons ici que les modificateurs principaux et les plus courants :

    Az: Prend le mot et l'ajoute aux caractères que vous définissez
    A0: Prend le mot et le complète avec les caractères que vous définissez
    c: Met le caractère en majuscule positionnellement
    Ceux-ci peuvent être utilisés en combinaison pour définir où et quoi dans le mot que vous souhaitez modifier.

Enfin, nous devons définir quels caractères doivent être ajoutés, ajoutés au début ou inclus d’une autre manière. Nous le faisons en ajoutant des jeux de caractères entre crochets[ ] là où ils doivent être utilisés. Ceux-ci suivent les modèles de modificateurs entre guillemets doubles" ". Voici quelques exemples courants :

    [0-9]: Inclurea les nombres 0 à 9
    [0]: N'inclura que le chiffre 0
    [A-z]: Comprendra à la fois les majuscules et les minuscules
    [A-Z]: N'inclura que les lettres majuscules
    [a-z]: N'inclura que des lettres minuscules

Veuillez noter que:

    [a]: N'inclura que a

Tache 6 : Decryptage des fichiers ZIP protegés par mot de passe

Zip2John

De la même manière que l’outil que nousunshadow avons utilisé précédemment, nous utiliserons l’zip2johnoutil pour convertir le fichier Zip dans un format de hachage que John peut comprendre et, espérons-le, déchiffrer. L'utilisation principale est la suivante :

zip2john [options] [zip file] > [output file]

    - [options]: Vous permet de transmettre des options de somme de contrôle spécifiques àzip2john ; cela ne devrait pas souvent être nécessaire
    - [zip file]: Le chemin d'accès au fichier Zip dont vous souhaitez obtenir le hachage
    - >: Cela redirige la sortie de cette commande vers un autre fichier
    - [output file]: C'est le fichier qui stockera la sortie

Exemple d'utilisation

    - zip2john zipfile.zip > zip_hash.txt

Tache 7 : Decryptage des archives RAR protegés par mot de passe

Rar2John

Presque identique à lzip2john'outil, nous utiliserons lrar2john'outil pour convertir le fichier RAR dans un format de hachage que John peut comprendre. La syntaxe de base est la suivante :

rar2john [rar file] > [output file]

    - rar2john: Invoque lrar2john'outil
    - [rar file]: Le chemin d'accès au fichier RAR dont vous souhaitez obtenir le hachage
    - >: Cela redirige la sortie de cette commande vers un autre fichier
    - [output file]: Il s'agit du fichier qui stockera la sortie de la commande

Exemple d'utilisation

    /opt/john/rar2john rarfile.rar > rar_hash.txt

Tache 8 : Decryptage des clés SSH avec John

SSH2John

Qui aurait pu le deviner, un autre outil de conversion ? Eh bien, c'est ça travailler avec John. Comme son nom l'indique,ssh2john convertit laid_rsa clé privée, utilisée pour se connecter à la session SSH, en un format de hachage avec lequel John peut travailler. Blague à part, c'est un autre bel exemple de la polyvalence de John. La syntaxe correspond à peu près à ce à quoi vous vous attendez. Notez que si vous ne l'avez passsh2john installé, vous pouvez utiliserssh2john.py , situé dans le/opt/john/ssh2john.py . Si vous faites cela sur AttackBox, remplacez lassh2john commande parpython3 /opt/john/ssh2john.py ou sur Kali,python /usr/share/john/ssh2john.py .

ssh2john [id_rsa private key file] > [output file]

    - ssh2john: Invoque lssh2john'outil
    - [id_rsa private key file]: Le chemin d'accès au fichier id_rsa dont vous souhaitez obtenir le hachage
    - >: C'est le directeur de sortie. Nous l'utilisons pour rediriger la sortie de cette commande vers un autre fichier.
    - [output file]: C'est le fichier qui stockera la sortie

Exemple d'utilisation

    /opt/john/ssh2john.py id_rsa > id_rsa_hash.txt

Questions

Quelle est la version étendue la plus populaire de John the Ripper ? : Jumbo John
À partir de quelle violation du site Web la liste de mots a-t-elle étérockyou.txt créée ? : rockyou.com
Quel type de hachage est hash1.txt ? : Md5 <john hash1.txt>
Quelle est la valeur craquée de hash1.txt ? : biscuit <john --format=Raw-MD5 --wordlist=/usr/share/wordlists/rockyou.txt hash1.txt>
Quel type de hachage est hash2.txt ? : Sha1 <john hash2.txt>
Quelle est la valeur craquée de hash2.txt ? : kangeroo <john --format=Raw-Sha1 --wordlist=/usr/share/wordlists/rockyou.txt hash2.txt >
Quel type de hachage est hash3.txt ? : Sha256 <john hash3.txt>
Quelle est la valeur craquée de hash3.txt ? : microphone <john --format=Raw-Sha256 --wordlist=/usr/share/wordlists/rockyou.txt hash3.txt >
Quel type de hachage est hash4.txt ? : Sha256 <john hash4.txt>
Quelle est la valeur craquée de hash4.txt ? : colossal <john --format=whirlpool --wordlist=/usr/share/wordlists/rockyou.txt hash4.txt >
À quoi devons-nous définir le--format drapeau pour déchiffrer ce hachage ? : nt
Quelle est la valeur craquée de ce mot de passe ? : mushroom <john --format=nt --wordlist=/usr/share/wordlists/rockyou.txt ntlm.txt>
Quel est le mot de passe root ? : 1234 - Etape 1 --> <unshadow local_passwd local_shadow> unshadowed.txt On copie dans un fichier le contenu du fichier - Etape 2 --> john --wordlist=/usr/share/wordlists/rockyou.txt --format=sha512crypt unshadowed.txt
Quel est le mot de passe du Joker ? : Jok3r - Etape 1 : echo "Joker:$(cat hash07.txt)" > Joker.txt - Etape 2 : john --single --format=Raw-MD5 Joker.txt
Que nous permettent d’exploiter les règles personnalisées ? : la prévisibilité de la complexité des mots de passe.
Quelle règle utiliserions-nous pour ajouter toutes les majuscules à la fin du mot ? : Az"[A-Z]"
Quel indicateur utiliserions-nous pour appeler une règle personnalisée appeléeTHMRules ? : --rule=THMRules - john --wordlist=rockyou.txt --rule=THMRules hash.txt
Quel est le mot de passe du fichier secure.zip ? pass123 - Etape 1 : zip2john <chemin du fichier> > nouveau fichier ; zip2john secure.zip > zip_hash.txt - Etape 2 : john --wordlist=/usr/share/wordlists/rockyou.txt zip_hash.txt
Quel est le contenu du drapeau à l'intérieur du fichier zip ? THM{w3ll_d0n3_h4sh_r0y4l} - Etape 1 : unzip <chemin du fichier> - Etape 2 : cat <chemin du fichier>
Quel est le mot de passe du fichier secure.rar ? : password - Etape 1 : rar2john <chemin du fichier> > rar_hash.txt - Etape 2 : john --wordlist=/usr/share/wordlists/rockyou.txt rar_hash.txt
Quel est le contenu de l'indicateur à l'intérieur du fichier rar ? : THM{r4r_4rch1ve5_th15_t1m3} - Etape 1 : unrar e secure.rar - Etape 2 : cat <chemin du fichier>
Quel est le mot de passe de la clé privée SSH ? : mango - Etape 1 : /opt/john/ssh2john.py <chemin du fichier> > nouveau fichier - Etape 2 : john --wordlist=/usr/share/wordlists/rockyou.txt id_rsa_hash.txt

Tache 1 : Introduction

Une valeur de hachage est une chaîne ou des caractères de taille fixe calculés par une fonction de hachage. Une fonction de hachage prend une entrée d'une taille arbitraire et renvoie une sortie de longueur fixe, c'est-à-dire une valeur de hachage. Nous aborderons diverses utilisations passionnantes et intelligentes des fonctions et valeurs de hachage dans cette salle.

Objectifs d'apprentissage

Une fois cette salle terminée, vous en apprendrez davantage sur :

    - Fonctions de hachage et collisions
    - Le rôle du hachage dans les systèmes d'authentification
    - Reconnaître les valeurs de hachage stockées
    - Fissuration des valeurs de hachage
    - L'utilisation du hachage pour intégritéprotection

Le hachage joue un rôle essentiel dans notre utilisation quotidienne d’Internet. Comme d’autres fonctions cryptographiques, le hachage reste caché à l’utilisateur. Le hachage permet de protéger les données intégritéet assurer la confidentialité du mot de passe.

Tache 2 : Stockage de mots de passe non securisé pour l'authenfication

Nous visiterons trois pratiques non sécurisées en matière de mots de passe :

    - Stockage des mots de passe en texte clair
    - Stockage des mots de passe à l'aide d'un cryptage obsolète
    - Stockage des mots de passe à l'aide d'un algorithme de hachage non sécurisé

Tache 3 : Reconnaitre les hackages de mots de passe

Tache 4 : Decryptage de mot de passe

Nous avons déjà mentionné les tables arc-en-ciel comme méthode pour déchiffrer les hachages qui n'utilisent pas de sel, mais que se passe-t-il s'il y a un sel impliqué ?

Vous ne pouvez pas “décrypter” les hachages de mots de passe. Ils ne sont pas cryptés. Vous devez déchiffrer les hachages en hachant de nombreuses entrées différentes (par exemple parce qu'ilrockyou.txt couvre de nombreux mots de passe possibles), en ajoutant potentiellement le sel s'il y en a un et en le comparant au hachage cible. Une fois qu'il correspond, vous savez quel était le mot de passe. Des outils comme Hashcat(ouvre dans un nouvel onglet) et Jean l'Éventreur(ouvre dans un nouvel onglet)sont couramment utilisés à ces fins.

Hashcat utilise la syntaxe de base suivante :hashcat -m <hash_type> -a <attack_mode> hashfile wordlist , où :

    -m <hash_type> spécifie le type de hachage au format numérique. Par exemple, c'-m 1000est pour NTLM. Consultez la documentation officielle () et la page d'exempleman hashcat(ouvre dans un nouvel onglet)pour trouver le code de type de hachage à utiliser.
    -a <attack_mode> spécifie le mode d'attaque. Par exemple, c'est direct,-a 0 c'est-à-dire essayer un mot de passe de la liste de mots après l'autre.
    hashfileest le fichier contenant le hachage que vous souhaitez déchiffrer.
    wordlistest la liste de mots de sécurité que vous souhaitez utiliser dans votre attaque.

Tache 5 :

HMAC
HMAC (Keyed-Hash Message Authentication Code) est un type de code d'authentification de message (MAC) qui utilise une fonction de hachage cryptographique en combinaison avec une clé secrète pour vérifier l'authenticité et intégritéde données.

Un HMAC peut être utilisé pour garantir que la personne qui a créé le HMAC est bien celle qu'elle prétend être, c'est-à-dire que l'authenticité est confirmée ; de plus, il prouve que le message n'a pas été modifié ou corrompu, c'est-à-dire intégritéest maintenu. Ceci est réalisé grâce à l'utilisation d'une clé secrète pour prouver l'authenticité et d'un algorithme de hachage pour produire un hachage et prouver intégrité.

Les étapes suivantes vous donnent une bonne idée du fonctionnement de HMAC.

    1-La clé secrète est ajoutée à la taille du bloc de la fonction de hachage.
    2-La clé rembourrée est XORée avec une constante (généralement un bloc de zéros ou de uns).
    3-Le message est haché à l'aide de la fonction de hachage avec la clé XORed.
    4-Le résultat de l’étape 3 est ensuite haché à nouveau avec la même fonction de hachage mais en utilisant la clé complétée XORed avec une autre constante.
    5-La sortie finale est la valeur HMAC, généralement une chaîne de taille fixe.

Techniquement parlant, la fonction HMAC est calculée en utilisant l'expression suivante : HMAC(K,M) =  H((K⊕opad)||H((K⊕ipad)||M))

Quel est le hachage SHA256 dupassport.jpg fichier dans~/Hashing-Basics/Task-2 ? : 77148c6f605a8df855f2b764bcc3be749d7db814f5f79134d2aa539a64b61f02
Quelle est la taille de sortie en octets de la fonction de hachage MD5 ? : nombre d'hexadecimal / 2 = 16
Si vous avez une sortie de hachage de 8 bits, combien de valeurs de hachage possibles existe-t-il ? : 2 exposant 8 = 256
Quel est le 20ème mot de passe dansrockyou.txt ? : < head -20 rockyou.txt > <head -20 rockyou.txt rockyou.txt | tail -1> : qwerty
Vérifiez manuellement le hachage “4c5923b6a6fac7b7355f53bfe2b8f8c1” à l'aide du tableau arc-en-ciel ci-dessus. : inS3CyourP4$$
Craquez le hachage “5b31f93c09ad1d065c0491b764d04933” à l'aide d'un outil en ligne. <grace a CrackStation et Hashes.com > : tryhackme
Faut-il crypter les mots de passe dans les systèmes de vérification de mots de passe ? Ouais/Non : non
Quelle est la taille du hachage dans yescrypt ? : 256 bits
Quel est le mode de hachage répertorié pour Cisco-ASA MD5 ? : mode 2410
Quel algorithme de hachage est utilisé dans Cisco-IOS s'il commence par$9$ ? : scrypt

pour ces exercices la commande est hashcat -m <hash_type : valeur numerique> -a <attack_mode : valeur numerique> nom du fichier chemin du fichier de la liste de mots de passe

-m 3200
Utilisé hashcat pour casser le hachage,$2a$06$7yoU3Ng8dHTXphAg913cyO6Bjs3K5lBnwq5FJyA6d01pMSrddr1ZG , enregistré dans~/Hashing-Basics/Task-6/hash1.txt . : 85208520

-m 1400
hashcat Utilisé pour déchiffrer le hachage SHA2-256,9eb7ee7f551d2f0ac684981bd1f1e2fa4a37590199636753efe614d4db30e8e1 , enregistré dans enregistré dans~/Hashing-Basics/Task-6/hash2.txt . : halloween

-m 1800
Utiliséhashcat pour casser le hachage,$6$GQXVvW4EuM$ehD6jWiMsfNorxy5SINsgdlxmAEl3.yif0/c3NqzGLa0P.S7KRDYjycw5bnYkF5ZtB8wQy8KnskuWQS3Yr1wQ0 , enregistré dans~/Hashing-Basics/Task-6/hash3.txt . : spaceman

-m 0 = MD5 : hashcat -m 0 -a 0 hash4.txt /home/user/rockyou.txt -r /usr/share/hashcat/rules/best64.rule : <Faut forcer le cracage>
Craquez le hachage,b6b0d451bbf6fed658659a9e7e5598fe , enregistré dans~/Hashing-Basics/Task-6/hash4.txt : funforyou

Quel est le hachage SHA256libgcrypt-1.11.0.tar.bz2 trouvé dans~/Hashing-Basics/Task-7 ? : 09120c9867ce7f2081d6aaa1775386b98c2f2f246135761aae47d81f58685b9c
la formule est : sha256sum <le fichier dans le dossier ~/Hashing-Basics/Task-7>

À quoi sert le numéro de mode hashcatHMAC-SHA512 (key = $pass) ? 1750
Utiliserbase64 pour décoderRU5jb2RlREVjb2RlCg==, enregistré commedecode-this.txt dans~/Hashing-Basics/Task-8 . Quel est le mot original ? : BASE64 -D <NOM DU FICHIER>

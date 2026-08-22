Tache 1 : Introduction

Considérez le scénario suivant de la vie quotidienne. Disons que vous rencontrez un partenaire commercial autour d'un café et que vous discutez de plans d'affaires quelque peu confidentiels. Décomposons la réunion du point de vue de la sécurité.

    - Vous pouvez voir et entendre l’autre personne. Il est donc facile d’être sûr de leur identité. C'est de l'AUTHENTIFICATION, c'est-à-dire que vous confirmez l'identité de la personne avec qui vous parlez.

    - Vous pouvez également confirmer que ce que vous “entendez” vient de votre partenaire commercial. Vous pouvez savoir quels mots et phrases viennent de votre partenaire commercial et ce qui vient des autres. C'est de l'AUTHENTICITÉ, c'est-à-dire que vous vérifiez que le message provient véritablement d'un expéditeur spécifique.

    - De plus, vous savez que ce qu’ils disent vous parvient et qu’il n’y a aucune chance que quoi que ce soit change les propos de l’autre partie de l’autre côté de la table. C'est l'INTEGRITÉ, c'est-à-dire s'assurer que les données n'ont pas été modifiées ou falsifiées.

    - Enfin, vous pouvez choisir un siège éloigné des autres clients et garder la voix basse afin que seul votre partenaire commercial puisse vous entendre. C'est la CONFIDENTIALITÉ, c'est-à-dire que seules les parties autorisées peuvent accéder aux données.

Authentification : Vous voulez être sûr de communiquer avec la bonne personne, pas avec quelqu'un d'autre qui fait semblant.
Authenticité : Vous pouvez vérifier que les informations proviennent de la source revendiquée.
Intégrité: Vous devez vous assurer que personne ne modifie les données que vous échangez.
Confidentialité : Vous souhaitez empêcher une partie non autorisée d’écouter vos conversations.

Dans cette salle, nous aborderons divers cryptosystèmes asymétriques et applications qui les utilisent, tels que :

    RSA
    Diffie Hellman
    SSH
    SSL/TLSCertificats
    PGP et GPG

RSA : est un algorithme de cryptage à clé publique qui permet une transmission sécurisée de données sur des canaux non sécurisés. Avec un canal non sécurisé, nous nous attendons à ce que les adversaires l’écoutent.

Vous devez connaître les principales variables pour RSAdans les CTF : p, q, m, n, e, d et c. Selon notre exemple numérique :

Bob choisit deux nombres premiers : p = 157 et q = 199. Il calcule n =  p ×  q = 31243
Avec φ(n) = n − p − q + 1  = 31243 − 157 − 199 + 1 = 30888

    p et q sont de grands nombres premiers
    n est le produit de p et q
    La clé publique est n et e
    La clé privée est n et d
    m est utilisé pour représenter le message original, c'est-à-dire le texte en clair
    c représente le texte chiffré, c'est-à-dire le texte chiffré

Tache 2 : SSH

ssh-keygenest le programme habituellement utilisé pour générer des paires de clés. Il prend en charge divers algorithmes, comme indiqué sur sa page de manuel ci-dessous.

Ce qui suit est juste pour votre information. À ce stade, nous vous recommandons de reconnaître uniquement leurs noms.

    - DSA (Digital Signature Algorithm) est un algorithme de cryptographie à clé publique spécialement conçu pour les signatures numériques.
    - ECDSA (Elliptic Curve Digital Signature Algorithm) est une variante de DSA qui utilise la cryptographie à courbe elliptique pour fournir des tailles de clé plus petites pour une sécurité équivalente.
    - ECDSA-SK (ECDSA avec clé de sécurité) est une extension d'ECDSA. Il intègre des clés de sécurité matérielles pour une protection améliorée des clés privées.
    - Ed25519 est un système de signature à clé publique utilisant EdDSA (Edwards-curve Digital Signature Algorithm) avec Curve25519.
    - Ed25519-SK (Ed25519 avec clé de sécurité) est une variante d'Ed25519. Semblable à ECDSA-SK, il utilise une clé de sécurité matérielle pour améliorer la protection des clés privées.

ssh-keygen -t ed25519 ; La commande pour generer une paire de cle

Notez que la clé privée est partagée ci-dessus à des fins de démonstration et a ensuite été purgée. Partager une clé privée serait l’acte le plus dangereux que quiconque puisse commettre contre sa sécurité. D’un autre côté, si nous avions utilisé-t rsa, les clés résultantes auraient été beaucoup plus longues.

Tache 3 : Signature et certificats numeriques

Les signatures numériques permettent de vérifier l’authenticité et intégritéd'un message ou d'un document numérique.

Tache 4 : PGP & GPG

PGP signifie Pretty Good Privacy. Il s'agit d'un logiciel qui implémente le cryptage pour crypter des fichiers, effectuer des signatures numériques, etc. GnuPG ou GPG(ouvre dans un nouvel onglet)est une implémentation open source de la norme OpenPGP.
GPGest couramment utilisé dans le courrier électronique pour protéger la confidentialité des messages électroniques. De plus, il peut être utilisé pour signer un message électronique et confirmer son intégrité.
Disons que vous avez un nouvel ordinateur. Il vous suffit d'importer votre clé et vous pouvez recommencer à décrypter vos messages reçus :

    - Vous utiliseriezgpg --import backup.key pour importer votre clé depuis backup.key
    - Pour décrypter vos messages, vous devez émettre gpg --decrypt confidential_message.gpg
    - Pour generer un GPG on utilse la commande : gpg --full-gen-key

La cryptographie est la science de la sécurisation des communications et des données à l'aide de codes et de chiffrements.
La cryptanalyse est l'étude des méthodes permettant de briser ou de contourner les systèmes de sécurité cryptographiques sans connaître la clé.
Brute-Force Attack est une méthode d'attaque qui consiste à essayer toutes les clés ou mots de passe possibles pour décrypter un message.
Dictionary Attack est une méthode d'attaque dans laquelle l'attaquant essaie des mots du dictionnaire ou des combinaisons de ceux-ci.

Dans l’analogie présentée, quel objet réel est analogue à la clé publique ? : verrouiller
Sachant que p = 4391 et q = 6659. Qu'est-ce que n ? : 29239669
Sachant que p = 4391 et q = 6659. Qu'est-ce que φ(n) ? : 29228620

Considérons p = 29, g = 5, a = 12. Qu'est-ce que A ? : 7
Considérons p = 29, g = 5, b = 17. Qu'est-ce que B ? : 9
Sachant que p  = 29, a = 12, et que vous avez B de la deuxième question, quelle est la clé calculée par Bob ? (clé = Ba mod p) : 24
Sachant que p  = 29, b = 17, et que vous avez A de la première question, quelle est la clé calculée par Alice ? (clé = Ab mod p) : 24
Vérifiez la clé privée SSH dans~/Public-Crypto-Basics/Task-5 . Quel algorithme la clé utilise-t-elle ? : RSA
Qu'utilise un serveur Web distant pour faire ses preuves auprès du client ? : certificats
Qu'utiliseriez-vous pour obtenir un certificat TLS gratuit pour votre site Web ? : Let's Encrypt
Utilisez GPG pour décrypter le message dans~/Public-Crypto-Basics/Task-7 . Quel mot secret contient le message ? : Pineapple
1-Pour resourdre ce probleme il faut d'abord import la cle privee : gpg --import <nom de la cle privee dans le dossier>
2-Decrypter le message : gpg --decrypt <nom du fichier>

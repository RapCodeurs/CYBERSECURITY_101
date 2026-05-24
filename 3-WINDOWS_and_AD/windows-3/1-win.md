Tache 1 : Mise a jour, securité windows, protection contre les virus et menaces, pare-feu, securité des appareils, bitlocker


Windows Update est un service fourni par Microsoft pour fournir des mises à jour de sécurité, des améliorations de fonctionnalités et des correctifs pour le système d'exploitation Windows et d'autres produits Microsoft, tels que Microsoft Defender. Les mises à jour sont généralement publiées le 2e mardi de chaque mois. Ce jour s'appelle Mardi patch. Cela ne signifie pas nécessairement qu'une mise à jour/un correctif critique doit attendre la publication du prochain Patch Tuesday. Si la mise à jour est urgente, Microsoft transmettra la mise à jour via le service Windows Update aux appareils Windows.

Dans l'image ci-dessus, concentrez votre attention sur Zones de protection.

    - Protection contre les virus et les menaces
    - Pare-feu& protection du réseau
    - Contrôle des applications et du navigateur
    - Sécurité des appareils

La protection contre les virus et les menaces est divisée en deux parties :

    - Menaces actuelles
    - Paramètres de protection contre les virus et les menaces

Options de numérisation

    - Analyse rapide - Vérifie les dossiers de votre système où les menaces sont généralement trouvées.
    - Scan complet - Vérifie tous les fichiers et programmes en cours d'exécution sur votre disque dur. Cette analyse pourrait prendre plus d’une heure.
    - Analyse personnalisée - Choisissez les fichiers et les emplacements que vous souhaitez vérifier.

Historique des menaces

    - Dernier scan - Windows Defender Antivirus analyse automatiquement votre appareil à la recherche de virus et d'autres menaces pour assurer sa sécurité.
    - Menaces mises en quarantaine - Les menaces mises en quarantaine ont été isolées et empêchées de s'exécuter sur votre appareil. Ils seront périodiquement retirés.
    - Menaces autorisées - Les menaces autorisées sont des éléments identifiés comme des menaces, que vous avez autorisé à exécuter sur votre appareil. 


En vérifiant la section Sécurité de votre VM, quelle zone nécessite une attention immédiate ? : Virus & threat protection
Plus précisément, qu’est-ce qui est désactivé et que Windows vous avertit d’activer : Real-time protection

Qu'est-ce qu'un pare-feu?

Selon Microsoft, "Le trafic entre et sort des appareils via ce que nous appelons des ports. A pare-feu c'est ce qui contrôle ce qui est - et plus important encore n'est pas - autorisé à passer par ces ports. Vous pouvez le considérer comme un agent de sécurité debout à la porte, vérifiant l'identité de tout ce qui tente d'entrer ou de sortir".

Quelle est la différence entre les 3 (Domaine, Privé, et Public)?

Selon Microsoft, "Windows Pare-feuoffre trois pare-feuprofils : domaine, privé et public".

    - Domaine - Le profil de domaine s'applique aux réseaux où le système hôte peut s'authentifier auprès d'un contrôleur de domaine. 
    - Privé - Le profil privé est un profil attribué par l'utilisateur et est utilisé pour désigner des réseaux privés ou domestiques.
    - Public - Le profil par défaut est le profil public, utilisé pour désigner les réseaux publics tels que les points d'accès Wi-Fi dans les cafés, les aéroports et d'autres endroits.

Si vous étiez connecté au Wi-Fi de l'aéroport, quel sera très probablement le profil de pare-feu actif ? : Public network

Qu'est-ce que BitLocker?

Selon Microsoft, "BitLocker Drive Encryption est une fonctionnalité de protection des données qui s'intègre au système d'exploitation et répond aux menaces de vol ou d'exposition de données provenant d'ordinateurs perdus, volés ou mis hors service de manière inappropriée".

Nous devrions utiliser un lecteur amovible sur les systèmes sans une version TPM 1.2 ou ultérieure. Que contient ce lecteur amovible ? : startup key

Par Microsoft(ouvre dans un nouvel onglet), le Service de copie d'ombre de volume (VSS) coordonne les actions requises pour créer une copie fantôme cohérente (également appelée instantané ou copie ponctuelle) des données à sauvegarder. 

Si VSS est activé (Protection du système activé), vous pouvez effectuer les tâches suivantes depuis l'intérieur paramètres système avancés. 

    - Créer un point de restauration
    - Effectuer la restauration du système
    - Configurer les paramètres de restauration
    - Supprimer les points de restauration

Du point de vue de la sécurité, les auteurs de logiciels malveillants connaissent cette fonctionnalité Windows et écrivent du code dans leur logiciel malveillant pour rechercher ces fichiers et les supprimer. Cela rend impossible la récupération après une attaque de ransomware à moins de disposer d’une sauvegarde hors ligne/hors site.

Qu'est-ce que VSS ? : Volume Shadow Copy Service
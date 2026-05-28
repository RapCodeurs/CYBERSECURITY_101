Tache 3 : Gestion des utilisateurs dans AD


Nous pouvons voir certains serveurs, certains ordinateurs portables et certains PC correspondant aux utilisateurs de notre réseau. Avoir tous nos appareils là-bas n'est pas la meilleure idée car il est très probable que vous souhaitiez des politiques différentes pour vos serveurs et les machines que les utilisateurs réguliers utilisent quotidiennement.

Bien qu’il n’existe pas de règle d’or sur la façon d’organiser vos machines, un excellent point de départ consiste à séparer les appareils en fonction de leur utilisation. En général, on s'attendrait à voir des appareils divisés en au moins les trois catégories suivantes :

1. Postes de travail

Les postes de travail sont l’un des appareils les plus courants dans un domaine Active Directory. Chaque utilisateur du domaine se connectera probablement à un poste de travail. Il s’agit de l’appareil qu’ils utiliseront pour effectuer leur travail ou leurs activités de navigation normales. Ces appareils ne devraient jamais avoir d’utilisateur privilégié connecté.

2. Serveurs

Les serveurs sont le deuxième appareil le plus courant dans un domaine Active Directory. Les serveurs sont généralement utilisés pour fournir des services aux utilisateurs ou à d’autres serveurs.

3. Contrôleurs de domaine

Les contrôleurs de domaine sont le troisième appareil le plus courant dans un domaine Active Directory. Les contrôleurs de domaine vous permettent de gérer le domaine Active Directory. Ces appareils sont souvent considérés comme les appareils les plus sensibles du réseau car ils contiennent des mots de passe hachés pour tous les comptes utilisateurs de l’environnement.

Tache 4 : ÇNous pouvons voir certains serveurs, certains ordinateurs portables et certains PC correspondant aux utilisateurs de notre réseau. Avoir tous nos appareils là-bas n'est pas la meilleure idée car il est très probable que vous souhaitiez des politiques différentes pour vos serveurs et les machines que les utilisateurs réguliers utilisent quotidiennement.

Bien qu’il n’existe pas de règle d’or sur la façon d’organiser vos machines, un excellent point de départ consiste à séparer les appareils en fonction de leur utilisation. En général, on s'attendrait à voir des appareils divisés en au moins les trois catégories suivantes :

1. Postes de travail

Les postes de travail sont l’un des appareils les plus courants dans un domaine Active Directory. Chaque utilisateur du domaine se connectera probablement à un poste de travail. Il s’agit de l’appareil qu’ils utiliseront pour effectuer leur travail ou leurs activités de navigation normales. Ces appareils ne devraient jamais avoir d’utilisateur privilégié connecté.

2. Serveurs

Les serveurs sont le deuxième appareil le plus courant dans un domaine Active Directory. Les serveurs sont généralement utilisés pour fournir des services aux utilisateurs ou à d’autres serveurs.

3. Contrôleurs de domaine

Les contrôleurs de domaine sont le troisième appareil le plus courant dans un domaine Active Directory. Les contrôleurs de domaine vous permettent de gérer le domaine Active Directory. Ces appareils sont souvent considérés comme les appareils les plus sensibles du réseau car ils contiennent des mots de passe hachés pour tous les comptes utilisateurs de l’environnement.

Tache 4 : Politique de groupe

Objets de politique de groupe : GPO

Si vous souhaitez forcer un ordinateur particulier à synchroniser immédiatement ses GPO, vous pouvez toujours exécuter la commande suivante sur l'ordinateur souhaité : PS C:\> gpupdate /force
Quel est le nom du partage réseau utilisé pour distribuer les GPO aux machines de domaine ? : SYSVOL
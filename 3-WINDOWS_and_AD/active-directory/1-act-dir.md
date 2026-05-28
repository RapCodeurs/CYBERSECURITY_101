Objectifs de la chambre

Dans cette salle, nous découvrirons Active Directory et nous familiariserons avec les sujets suivants

    - Qu'est-ce qu'Active Directory
    - Qu'est-ce qu'un domaine Active Directory
    - Quels composants entrent dans un domaine Active Directory
    - Forêts et fiducie de domaine
    - Et bien plus encore !

Tache 2 : Domaines Windows

    un Domaine Windows est un groupe d'utilisateurs et d'ordinateurs sous l'administration d'une entreprise donnée. L'idée principale derrière un domaine est de centraliser l'administration des composants communs d'un réseau informatique Windows dans un référentiel unique appelé Active Directory (AD). Le serveur qui exécute les services Active Directory est connu sous le nom de Contrôleur de domaine (DC).

Les principaux avantages d’avoir un domaine Windows configuré sont :

    - Gestion centralisée des identités : Tous les utilisateurs du réseau peuvent être configurés à partir d’Active Directory avec un minimum d’effort.
    - Gestion des politiques de sécurité : Vous pouvez configurer les politiques de sécurité directement depuis Active Directory et les appliquer aux utilisateurs et aux ordinateurs du réseau selon vos besoins.

Dans un domaine Windows, les informations d'identification sont stockées dans un référentiel centralisé appelé... : Active Directory
Le serveur chargé d'exécuter les services Active Directory s'appelle... : Domain Controller

Tache 3 : Repertoire actif

Le cœur de tout domaine Windows est le Service de domaine Active Directory (AD DS). Ce service agit comme un catalogue qui contient les informations de tous les « objets » qui existent sur votre réseau. Parmi les nombreux objets soutenus par AD, nous avons des utilisateurs, des groupes, des machines, des imprimantes, des partages et bien d'autres.

Vous avez probablement déjà remarqué qu'il existe d'autres conteneurs par défaut en dehors du THM OU. Ces conteneurs sont créés automatiquement par Windows et contiennent les éléments suivants :

    Intégré : Contient des groupes par défaut disponibles pour n'importe quel hôte Windows.
    Ordinateurs: Toute machine rejoignant le réseau sera placée ici par défaut. Vous pouvez les déplacer si nécessaire.
    Contrôleurs de domaine : Par défaut OUqui contient les DC de votre réseau.
    Utilisateurs: Utilisateurs et groupes par défaut qui s'appliquent à un contexte à l'échelle du domaine.
    Comptes de services gérés : Détient les comptes utilisés par les services de votre domaine Windows.

Quel groupe administre normalement tous les ordinateurs et ressources d’un domaine ? : domain admins
Quel serait le nom du compte machine associé à une machine nommée TOM-PC ? : TOM-PC$
Supposons que notre entreprise crée un nouveau département d’assurance qualité. Quel type de conteneurs devrions-nous utiliser pour regrouper tous les utilisateurs de l’assurance qualité afin que les politiques puissent leur être appliquées de manière cohérente ? : Organizational Units
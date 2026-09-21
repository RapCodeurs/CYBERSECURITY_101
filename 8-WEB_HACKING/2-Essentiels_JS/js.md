Introduction

Objectifs d'apprentissage

    - Comprendre les bases de JS
    - Intégration de JS en HTML
    - Abuser de la fonction de dialogue
    - Contournement des instructions de flux de contrôle
    - Explorer les fichiers minifiés

Tache 1 : Presentation de JS

// Hello, World! program
console.log("Hello, World!");

    // Variable and Data Type
    let age = 25; // Number type

    // Control Flow Statement
    if (age >= 18) {
        console.log("You are an adult.");
    } else {
        console.log("You are a minor.");
    }

    // Function
    function greet(name) {
        console.log("Hello, " + name + "!");
    }

    // Calling the function
    greet("Bob");

Tache 2 : Integration de JS dans HTML

JS interne fait référence à intégration le code JS directement dans un document HTML. Cette méthode est préférable pour les débutants car elle leur permet de voir comment le script interagit avec le HTML. Le script est inséré entre les<script> balises. Ces balises peuvent être placées à l'intérieur de la section, généralement<head> utilisées pour les scripts qui doivent être chargés avant le rendu du contenu de la page, ou à l'intérieur de la<body> section, où le script peut être utilisé pour interagir avec les éléments lorsqu'ils sont chargés sur la page Web.

Tache 3 : Abuser des fonctiond de dialogue

L’un des principaux objectifs de JS est de fournir des boîtes de dialogue pour l’interaction avec les utilisateurs et de mettre à jour dynamiquement le contenu des pages Web. JS fournit des fonctions intégrées telles que ALERT ,PROMPT , et CONFIRM pour faciliter cette interaction. Ces fonctions permettent aux développeurs d'afficher des messages, de recueillir des entrées et d'obtenir la confirmation de l'utilisateur. Cependant, s'ils ne sont pas implémentés de manière sécurisée, les attaquants peuvent exploiter ces fonctionnalités pour exécuter des attaques telles que Cross-Site Scripting (XSS), que vous aborderez plus loin dans ce module.

Tache 4 : Contournement des instructions de flux de controle

Le flux de contrôle en JS fait référence à l'ordre dans lequel les instructions et les blocs de code sont exécutés en fonction de certaines conditions. JS fournit plusieurs structures de flux de contrôle telles que des instructions , pour prendre des décisions et des boucles telles que , , et pour répéter des actions. Une utilisation appropriée du flux de contrôle garantit qu'un programme peut gérer efficacement diverses conditions.if-elseswitchforwhiledo...while

Tache 5 : Explorer les fichiers minifiés

La minification en JS est le processus de compression des fichiers JS en supprimant tous les caractères inutiles, tels que les espaces, les sauts de ligne, les commentaires et même en raccourcissant les noms de variables. Cela permet de réduire la taille des fichiers et d’améliorer le temps de chargement des pages Web, en particulier dans les environnements de production. Les fichiers minifiés rendent le code plus compact et plus difficile à lire pour les humains, mais ils fonctionnent toujours exactement de la même manière.

tache 6 : Meilleures pratiques

Évitez de vous fier uniquement à la validation côté client

L’une des principales fonctions de JS est d’effectuer une validation côté client. Les développeurs l'utilisent parfois pour valider des formulaires et s'y fient entièrement, ce qui n'est pas une bonne pratique. Puisqu'un utilisateur peut désactiver/manipuler JS côté client, effectuer une validation côté serveur est également essentiel.

Évitez d'ajouter des bibliothèques non fiables

Comme indiqué dans les tâches précédentes, JS vous permet d’inclure n’importe quel autre script JS utilisant l’attribut à l’srcintérieur d’unescript balise. Mais avez-vous réfléchi à la question de savoir si la bibliothèque que nous incluons provient d’une source fiable ? De mauvais acteurs ont mis en ligne sur Internet un ensemble de bibliothèques dont les noms ressemblent à ceux légitimes. Ainsi, si vous incluez aveuglément une bibliothèque malveillante, vous exposerez votre application Web à des menaces.

Évitez les secrets codés en dur

Ne codez jamais en dur des données sensibles telles que des clés API, des jetons d'accès ou des informations d'identification dans votre code JS, car l'utilisateur peut facilement vérifier le code source et obtenir le mot de passe.

Minifiez et obscurcissez votre code JavaScript

La minimisation et l’obscurcissement du code JS réduisent sa taille, améliorent le temps de chargement et rendent plus difficile pour les attaquants de comprendre la logique du code. Par conséquent, mini fiez et obscurcissez toujours le code lorsque vous utilisez du code en production. L'attaquant peut éventuellement procéder à une ingénierie inverse, mais obtenir le code original demandera au moins quelques efforts.

Questions

What term allows you to run a code block multiple times as long as it is a condition? : loop
Is JavaScript a compiled or interpreted language? : interprete
Quel type d’intégration JavaScript place le code directement dans le document HTML ? : Internal
Quelle méthode est la meilleure pour réutiliser JS sur plusieurs pages Web ? : External
Quel est le nom du fichier JS externe appelé par external_test.html ? : thm_external.js
Quel attribut relie un fichier JS externe dans la balise <script> ? : src
Dans le fichier facture.html, combien de fois le code affiche-t-il l'alerte Piraté ? : 5
Lequel des éléments interactifs JS doit être utilisé pour afficher une boîte de dialogue demandant une saisie à l'utilisateur ? : prompt
Si l'utilisateur saisit Tesla, quelle valeur est stockée dans l'invite carName=("Quel est le nom de votre voiture ?") ? dans la variable carName ? : Tesla
Quel est le message affiché si vous entrez l'âge inférieur à 18 ans ? : You are a minor
Quel est le mot de passe de l'administrateur utilisateur ? : ComplexPassword
Quel est le message d'alerte affiché après l'exécution du fichier hello.html ? : Welcome to THM
Quelle est la valeur de la variable âge dans l’extrait de code obscurci suivant ? âge=0x1*0x247e+0x35*-0x2e+-0x1ae3 : 21
Est-ce une bonne pratique d’inclure aveuglément JS dans votre code à partir de n’importe quelle source (oui/non) ? : nay

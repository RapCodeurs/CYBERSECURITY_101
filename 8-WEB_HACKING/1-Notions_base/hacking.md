Introduction

Objectifs d'apprentissage
En complétant cette salle, vous allez :

    - Comprendre ce qu’est une application Web et comment elle s’exécute dans un navigateur Web.
    - Décomposez les composants d’une URL et voyez comment elle permet d’accéder aux ressources Web.
    - Découvrez comment fonctionnent les requêtes et réponses HTTP.
    - Familiarisez-vous avec les différents types de méthodes de requête HTTP.
    - Comprendre ce que signifient les différents codes de réponse HTTP.
    - Découvrez comment fonctionnent les en-têtes HTTP et pourquoi ils sont importants pour la sécurité.

Tache 1 : Presentation de l'application web

Front End
Le Front End peut être considéré comme similaire à la surface de la planète, les parties qu'un astronaute peut voir et avec lesquelles il peut interagir en fonction des lois de la nature. Une application Web demanderait à un utilisateur d'interagir avec elle et d'utiliser un certain nombre de technologies telles que HTML, CSS et JavaScript pour ce faire.

HTML (Hypertext Markup Language) est un aspect fondamental des applications Web. Il s'agit d'un ensemble d'instructions ou de codes qui indiquent à un navigateur Web ce qu'il doit afficher et comment l'afficher. On pourrait le comparer à des organismes simples vivant sur la planète ; ces organismes ont de l’ADN, qui est l’instruction sur la façon dont les organismes simples sont assemblés.

CSS (Cascading Style Sheets) dans les applications Web décrit une apparence standard, telle que certaines couleurs, types de texte et mises en page. Poursuivant l’analogie avec l’ADN, ceux-ci pourraient être comparés aux parties de l’ADN qui décrivent la couleur, la forme, la taille et la texture de l’organisme simple.

JS ( JavaScript) fait partie d'un front-end d'application Web qui permet une activité plus complexe dans le navigateur Web. Alors que HTML peut être considéré comme un simple ensemble d’instructions sur ce qu’il faut afficher, JavaScript est un ensemble d’instructions plus avancé qui permet de faire des choix et de prendre des décisions sur ce qu’il faut afficher. Dans l’analogie avec la planète, JavaScript peut être considéré comme le cerveau d’un organisme avancé, ce qui permet de prendre des décisions en fonction de quoi et de la manière dont quelque chose interagit avec lui.

back-end
Le back-end d'une application Web est constitué d'éléments que vous ne voyez pas dans un navigateur Web, mais qui sont importants pour le fonctionnement de l'application Web. Sur une planète, ce sont les choses non visuelles : les structures qui maintiennent un bâtiment debout, l’air et la gravité qui maintient les pieds au sol.

Une base de données est un endroit où les informations peuvent être stockées, modifiées et récupérées. Une application Web peut souhaiter stocker et récupérer des informations sur les préférences d'un visiteur sur ce qu'il doit afficher ou non ; celles-ci seraient stockées dans une base de données. Une planète peut avoir des habitants plus avancés qui stockent des informations sur les emplacements sur des cartes, écrivent des notes dans un journal ou placent des livres dans une bibliothèque et des dossiers dans un classeur.

De nombreux autres composants d'infrastructure sous-tendent les applications Web, tels que les serveurs Web, les serveurs d'applications, le stockage, divers périphériques réseau et d'autres logiciels prenant en charge l'application Web. Sur une planète, ce sont les routes qui sont présentes, les voitures qui circulent sur ces routes, le carburant qui alimente les voitures.

WAF (Application Web Pare-feu) est un composant optionnel pour les applications Web. Il permet de filtrer les requêtes dangereuses loin du serveur Web et fournit un élément de protection. Cela pourrait être considéré comme similaire à la façon dont l’atmosphère d’une planète peut protéger ses habitants des rayons UV nocifs.

Tache 2 : Localisation de ressources uniformes

Un Uniform Resource Locator (URL) est une adresse Web qui vous permet d'accéder à toutes sortes de contenus en ligne —qu'il s'agisse d'une page Web, d'une vidéo, d'une photo ou d'autres médias. Il guide votre navigateur au bon endroit sur Internet.

Schéma
Le schéma est le protocole utilisé pour accéder au site Web. Les plus courants sont HTTP (HyperText Transfer Protocol) et HTTPS (Hypertext Transfer Protocol Secure). HTTPS est plus sécurisé car il crypte la connexion, c'est pourquoi les navigateurs et les experts en cybersécurité le recommandent. Les sites Web appliquent souvent HTTPS pour une protection supplémentaire.

Utilisateur
Certaines URL peuvent inclure les informations de connexion d'un utilisateur (généralement un nom d'utilisateur) pour les sites nécessitant une authentification. Cela se produit principalement dans les URL qui nécessitent des informations d’identification pour accéder à certaines ressources. Cependant, c'est rare de nos jours car mettre les informations de connexion dans l'URL n'est pas très sûr —cela peut exposer des informations sensibles, ce qui constitue un risque pour la sécurité.

Hôte/Domaine
L'hôte ou le domaine est la partie la plus importante de l'URL car il vous indique à quel site Web vous accédez. Chaque nom de domaine doit être unique et est enregistré auprès des bureaux d'enregistrement de domaine. D'un point de vue de sécurité, recherchez des noms de domaine qui ressemblent presque à de vrais mais qui présentent de petites différences (c'est ce qu'on appelle typosquattage). Ces faux domaines sont souvent utilisés dans hameçonnageattaques visant à inciter les gens à divulguer des informations sensibles.

Port
Le numéro de port permet de diriger votre navigateur vers le bon service sur le serveur Web. C'est comme dire au serveur quelle porte utiliser pour la communication. Les numéros de port varient de 1 à 65 535, mais les plus courants sont 80 pour HTTP et 443 pour HTTPS.

Chemin
Le chemin pointe vers le fichier ou la page spécifique du serveur auquel vous essayez d'accéder. C'est comme une feuille de route qui montre au navigateur où aller. Les sites Web doivent sécuriser ces chemins pour garantir que seuls les utilisateurs autorisés peuvent accéder aux ressources sensibles.

Chaîne de requête
La chaîne de requête est la partie de l'URL qui commence par un point d'interrogation (?). Il est souvent utilisé pour des éléments tels que les termes de recherche ou les entrées de formulaire. Étant donné que les utilisateurs peuvent modifier ces chaînes de requête, il est important de les gérer en toute sécurité pour éviter les attaques telles que les injections, où du code malveillant pourrait être ajouté.

Fragment
Le fragment commence par un symbole de hachage (#) et permet de pointer vers une section spécifique d'une page Web —comme passer directement à un titre ou à un tableau particulier. Les utilisateurs peuvent également modifier cela, donc comme pour les chaînes de requête, il est important de vérifier et de nettoyer toutes les données ici pour éviter des problèmes tels que les attaques par injection

Tache 3 : Messages HTTPS

Il existe deux types de messages HTTP :

    Requêtes HTTP : envoyées par l'utilisateur pour déclencher des actions sur l'application Web.
    Réponses HTTP : envoyées par le serveur en réponse à la demande de l'utilisateur.

Chaque message suit un format spécifique qui aide l'utilisateur et le serveur à communiquer en douceur.

Ligne de départ
La ligne de départ est comme l’introduction du message. Il vous indique quel type de message est envoyé —s'il s'agit d'une demande de l'utilisateur ou d'une réponse du serveur. Cette ligne donne également des détails importants sur la manière dont le message doit être traité.

En-têtes
Les en-têtes sont constitués de paires clé-valeur qui fournissent des informations supplémentaires sur le message HTTP. Ils donnent des instructions au client et au serveur qui gèrent la demande ou la réponse. Ces en-têtes couvrent toutes sortes de choses, comme la sécurité, les types de contenu, etc., garantissant que tout se passe bien dans la communication.

Ligne vide
La ligne vide est un petit séparateur qui sépare l'en-tête du corps. C'est essentiel car cela montre où s'arrêtent les en-têtes et où commence le contenu réel du message. Sans cette ligne vide, le message pourrait être perturbé et le client ou le serveur pourrait le mal interpréter, provoquant des erreurs.

Corps
Le corps est l’endroit où les données réelles sont stockées. Dans une requête, le corps peut inclure des données que l'utilisateur souhaite envoyer au serveur (comme des données de formulaire). Dans une réponse, c'est là que le serveur met le contenu demandé par l'utilisateur (comme une page Web ou APIdonnées).

Pourquoi comprendre les messages HTTP est important

    - Ces messages constituent la base de la façon dont les applications Web communiquent. S'ils sont structurés correctement, tout fonctionne sans problème.
    - Connaître leur fonctionnement vous aidera à diagnostiquer les problèmes de communication Web, ce qui signifie de meilleures performances et une meilleure fiabilité pour votre application Web.
    - C'est également crucial pour la sécurité. Comprendre les messages HTTP vous aide à mettre en œuvre des mesures de sécurité solides pour protéger les données pendant la transmission.

Tache 5 : Requete http : ligne de requetes et methodes

Une requete HTTP est ce qu'un utilisateur envoie à un serveur Web pour interagir avec une application Web et faire en sorte que quelque chose se produise. Étant donné que ces requêtes constituent souvent le premier point de contact entre l'utilisateur et le serveur Web, il est très important de savoir comment elles fonctionnent —surtout si vous êtes intéressé par la cybersécurité.

Les attaquants tentent souvent de manipuler le chemin de l'URL pour exploiter les vulnérabilités, il est donc crucial de :

    - Valider le chemin d'URL pour empêcher tout accès non autorisé
    - Désinfectez le chemin pour éviter les attaques par injection
    - Protégez les données sensibles en effectuant des évaluations de la confidentialité et des risques

Version HTTP
La version HTTP affiche la version du protocole utilisée pour communiquer entre le client et le serveur. Voici un bref aperçu des plus courants :

HTTP/0.9 (1991)
La première version ne prenait en charge que les requêtes GET.

HTTP/1.0 (1996)
Ajout d'en-têtes et meilleure prise en charge de différents types de contenu, améliorant ainsi la mise en cache.

HTTP/1.1 (1997)
A apporté des connexions persistantes, un codage de transfert fragmenté et une meilleure mise en cache. Il est encore largement utilisé aujourd'hui.

HTTP/2 (2015)
Présentation de fonctionnalités telles que le multiplexage, la compression d'en-tête et la priorisation pour des performances plus rapides.

HTTP/3 (2022)
Construit sur HTTP/2, mais utilise un nouveau protocole (QUIC) pour des connexions plus rapides et plus sécurisées.

Bien que HTTP/2 et HTTP/3 offrent une meilleure vitesse et une meilleure sécurité, de nombreux systèmes utilisent encore HTTP/1.1 car il est bien pris en charge et fonctionne avec la plupart des configurations existantes. Cependant, la mise à niveau vers HTTP/2 ou HTTP/3 peut apporter des améliorations significatives en termes de performances et de sécurité à mesure que de plus en plus de systèmes les adoptent.

Tache 6 : Requetes Http en-tetes et corps

RL codée (application/x-www-form-urlencoded)
Un format où les données sont structurées en paires de clé et de valeur où (key=value). Plusieurs paires sont séparées par un symbole (&), tel que key1=value1&key2=value2 . Les caractères spéciaux sont codés en pourcentage.

Données de formulaire (multipart/form-data)
Permet d'envoyer plusieurs blocs de données où chaque bloc est séparé par une chaîne de limite. La chaîne de limite est l'en-tête défini de la requête elle-même. Ce type de formatage peut être utilisé pour envoyer des données binaires, par exemple lors du téléchargement de fichiers ou d'images sur un serveur

JSON (application/json)
Dans ce format, les données peuvent être envoyées en utilisant la structure JSON (JavaScript Object Notation). Les données sont formatées par paires nom : valeur. Plusieurs paires sont séparées par des virgules, toutes contenues dans des accolades { }.

XML (application/xml) Dans le formatage XML
les données sont structurées à l'intérieur d'étiquettes appelées balises, qui ont une ouverture et une fermeture. Ces étiquettes peuvent être imbriquées les unes dans les autres. Vous pouvez voir dans l'exemple ci-dessous l'ouverture et la fermeture des balises pour envoyer des détails sur un utilisateur appelé Aleksandra.

Tache 7 : requetes http ligne d'etat et codes d'etat

Ligne d'état
La première ligne de chaque réponse HTTP est appelée ligne d’état. Il vous donne trois informations clés :

    - Version HTTP : cela vous indique quelle version de HTTP est utilisée.
    - Code d'état : Un numéro à trois chiffres indiquant le résultat de votre demande.
    - Phrase de raison : un court message expliquant le code d'état en termes lisibles par l'homme.

Codes de statut et phrases de raison
Le code d'état est le numéro qui vous indique si la demande a réussi ou échoué, tandis que la phrase de raison explique ce qui s'est passé. Ces codes se répartissent en cinq catégories principales :

Réponses informationnelles (100-199)
Ces codes signifient que le serveur a reçu une partie de la requête et attend le repos. C'est un signal « continuez ».

Réponses réussies (200-299)
Ces codes signifient que tout a fonctionné comme prévu. Le serveur a traité la demande et renvoyé les données demandées.

Messages de redirection (300-399) Ces
codes vous indiquent que la ressource que vous avez demandée a été déplacée vers un emplacement différent, fournissant généralement la nouvelle URL.

Réponses aux erreurs du client (400-499)
Ces codes indiquent un problème avec la demande. Peut-être que l'URL est erronée ou qu'il vous manque certaines informations requises, comme l'authentification.

Réponses aux erreurs du serveur (500-599)
Ces codes signifient que le serveur a rencontré une erreur en essayant de répondre à la demande. Il s’agit généralement de problèmes côté serveur et non de la faute du client.

Codes d'état courants
Voici quelques-uns des codes d’état les plus fréquemment vus :

100 (Continuer)
Le serveur a reçu la première partie de la requête et est prêt pour le reste.

200 (OK)
La demande a réussi et le serveur renvoie la ressource demandée.

301 (Déplacé définitivement)
La ressource que vous demandez a été déplacée définitivement vers une nouvelle URL. Utilisez la nouvelle URL à partir de maintenant.

404 (Non trouvé) Le
serveur n'a pas pu trouver la ressource à l'URL donnée. Vérifiez que vous avez la bonne adresse.

500 (Erreur interne du serveur) Quelque
chose s'est mal passé du côté du serveur et il n'a pas pu traiter votre demande.

Tache 8 : Reponse http en-tetes et corps

En-têtes de réponse requis
Certains en-têtes de réponse sont essentiels pour garantir le bon fonctionnement de la réponse HTTP. Ils fournissent des informations essentielles dont le client et le serveur ont besoin pour tout traiter correctement. En voici quelques-uns importants :

Date : Exemple:Date: Fri, 23 Aug 2024 10:43:21 GMT
Cet en-tête affiche la date et l’heure exactes auxquelles la réponse a été générée par le serveur.

Type de contenu : Exemple :Content-Type: text/html; charset=utf-8
il indique au client quel type de contenu il reçoit, par exemple s'il s'agit de HTML, de JSON ou d'autre chose. Il inclut également le jeu de caractères (comme UTF-8) pour aider le navigateur à l'afficher correctement.

Serveur : Exemple :Server: nginx
cet en-tête indique quel type de logiciel serveur gère la demande. C'est bon pour le débogage, mais cela peut également révéler des informations sur le serveur qui pourraient être utiles aux attaquants, c'est pourquoi de nombreuses personnes suppriment ou obscurcissent celle-ci.

Autres en-têtes de réponse courants
Outre les éléments essentiels, il existe d’autres en-têtes courants qui donnent des instructions supplémentaires au client ou au navigateur et aident à contrôler la manière dont la réponse doit être gérée.

Set-Cookie : Exemple :Set-Cookie: sessionId=38af1337es7a8
Celui-ci envoie des cookies du serveur au client, que le client stocke ensuite et renvoie avec de futures requêtes. Pour sécuriser les choses, assurez-vous que les cookies sont définis avec l'indicateurHttpOnly (afin qu'ils ne soient pas accessibles par JavaScript) et lSecure'indicateur (afin qu'ils ne soient envoyés que via HTTPS).

Cache-Control : Exemple :Cache-Control: max-age=600
cet en-tête indique au client combien de temps il peut mettre en cache la réponse avant de vérifier à nouveau auprès du serveur. Il peut également empêcher la mise en cache d'informations sensibles si nécessaire (en utilisantno-cache ).

Emplacement : Exemple :Location: /index.html
Celui-ci est utilisé dans les réponses de redirection (3xx). Il indique au client où aller ensuite si la ressource a bougé. Si les utilisateurs peuvent modifier cet en-tête lors des requêtes, veillez à le valider et à le nettoyer —sinon, vous pourriez vous retrouver avec des vulnérabilités de redirection ouvertes, où les attaquants peuvent rediriger les utilisateurs vers des sites nuisibles.

Tache 9 : En-tete de securites

En-têtes de sécurité
HTTPLes en-têtes de sécurité contribuent à améliorer la sécurité globale de l'application Web en fournissant des mesures d'atténuation contre les attaques telles que les scripts intersites (XSS), le clickjacking et autres. Nous allons maintenant approfondir les en-têtes de sécurité suivants :

    - Politique de sécurité du contenu (CSP)
    - Sécurité stricte des transports (HSTS)
    - Options de type de contenu X
    - Politique de référence

Politique de sécurité du contenu (CSP)
Regardons un exemple d’en-tête CSP :

    Content-Security-Policy: default-src 'self'; script-src 'self' https://cdn.tryhackme.com; style-src 'self'

Nous voyons l'utilisation de :

    default-src- qui spécifie la politique par défaut de self, c'est-à-dire uniquement le site Web actuel.
    script-src- qui spécifie la politique à partir de laquelle les scripts peuvent être chargés, qui est self avec les scripts hébergés sur https://cdn.tryhackme.com
    style-src- qui spécifie la politique selon laquelle les feuilles de style CSS de style peuvent être chargées à partir du site Web actuel (self)

Sécurité stricte des transports (HSTS)
L'en-tête HSTS garantit que les navigateurs Web se connecteront toujours via HTTPS. Regardons un exemple de HSTS :

Strict-Transport-Security: max-age=63072000; includeSubDomains; preload

Voici une répartition de l'exemple d'en-tête HSTS par directive :

    max-age - Il s'agit du délai d'expiration en secondes pour ce paramètre
    includeSubDomains - Un paramètre facultatif qui demande au navigateur d'appliquer également ce paramètre à tous les sous-domaines.
    préchargement - Ce paramètre facultatif permet d'inclure le site Web dans les listes de préchargement. Les navigateurs peuvent utiliser des listes de préchargement pour appliquer HSTS avant même d'avoir leur première visite sur un site Web.

Options de type de contenu X
L'en-tête X-Content-Type-Options peut être utilisé pour demander aux navigateurs de ne pas deviner le type MIME d'une ressource mais d'utiliser uniquement l'en-tête Content-Type. Voici un exemple :

    X-Content-Type-Options: nosniff

Voici une répartition de l'en-tête X-Content-Type-Options par directives : nosniff - Cette directive demande au navigateur de ne pas renifler ou deviner le MIMEtaper.

Politique de référence
Cet en-tête contrôle la quantité d'informations envoyées au serveur Web de destination lorsqu'un utilisateur est redirigé depuis le serveur Web source, par exemple lorsqu'il clique sur un lien hypertexte. L'en-tête est disponible pour permettre à un administrateur Web de contrôler quelles informations sont partagées. Voici quelques exemples de politique de référence :

    Referrer-Policy: no-referrer
    Referrer-Policy: same-origin
    Referrer-Policy: strict-origin
    Referrer-Policy: strict-origin-when-cross-origin

Voici une répartition de l'en-tête Referrer-Policy par directives :

    no-referrer
    - Cela désactive complètement toute information envoyée sur le référent

    même origine
    - Cette politique n'enverra des informations de référence que lorsque la destination fait partie de la même origine. Ceci est utile lorsque vous souhaitez que les informations de référence soient transmises lorsque les hyperliens se trouvent sur le même site Web mais pas à l'extérieur vers des sites Web externes.

    strict-origin
    - Cette politique n'envoie le référent comme origine que lorsque le protocole reste le même. Ainsi, un référent est envoyé lorsqu'une connexion HTTPS passe à une autre connexion HTTPS.

    strict-origin-when-cross-origin- Ceci
    est similaire à strict-origin, sauf pour les requêtes de même origine, où il envoie le chemin d'URL complet dans l'en-tête d'origine.

Questions

Quel composant d’un ordinateur est responsable de l’hébergement et de la diffusion de contenu pour les applications Web ? : web server
Quel outil est utilisé pour accéder et interagir avec les applications Web ? : naviagteur web
Quel composant agit comme une couche protectrice, filtrant le trafic entrant pour bloquer les attaques malveillantes et garantissant la sécurité de l'application Web ? : waf (web application firewall)
Quel protocole fournit une communication cryptée pour assurer une transmission sécurisée des données entre un navigateur Web et un serveur Web ?: https
Quel terme décrit la pratique consistant à enregistrer des noms de domaine qui sont des variantes mal orthographiées de sites Web populaires pour exploiter les erreurs des utilisateurs et potentiellement se livrer à des activités frauduleuses ? : Typosquatting
Quelle partie d'une URL est utilisée pour transmettre des informations supplémentaires, telles que des termes de recherche ou des entrées de formulaire, au serveur Web : Query String
Quel message HTTP est renvoyé par le serveur Web après le traitement de la requête d'un client ? : http response
Qu'est-ce qui suit les en-têtes d'un message HTTP ? : Empty Line
Quelle version du protocole HTTP a été largement adoptée et reste la version la plus couramment utilisée pour la communication Web, connue pour introduire des fonctionnalités telles que les connexions persistantes et l'encodage par transfert fragmenté ? : http/1.1
Quelle méthode de requête HTTP décrit les options de communication pour la ressource cible, permettant aux clients de déterminer quelles méthodes HTTP sont prises en charge par le serveur Web ? : options
Dans une requête HTTP, quel composant spécifie la ressource ou le point de terminaison spécifique sur le serveur Web demandé par le client, apparaissant généralement après le nom de domaine dans l'URL ? : URL path
Quel en-tête de requête HTTP spécifie le nom de domaine du serveur Web auquel la requête est envoyée ? : host
Quel est le type de contenu par défaut pour les soumissions de formulaires dans une requête HTTP où les données sont codées sous forme de paires clé=valeur dans un format de chaîne de requête ? : application/x-www-form-urlencoded
Quelle partie d'une requête HTTP contient des informations supplémentaires telles que l'hôte, l'agent utilisateur et le type de contenu, guidant la manière dont le serveur Web doit traiter la requête ? : Request Headers
Quelle partie d'une réponse HTTP fournit la version HTTP, le code d'état et une brève explication du résultat de la réponse ? : status line
Quelle catégorie de codes de réponse HTTP indique que le serveur Web a rencontré un problème interne ou n'est pas en mesure de répondre à la demande du client ? : Server Error Responses
Quel code d’état HTTP indique que la ressource demandée n’a pas pu être trouvée sur le serveur Web ? : 404
Quel en-tête de réponse HTTP peut révéler des informations sur le logiciel et la version du serveur Web, l'exposant potentiellement à des risques de sécurité s'il n'est pas supprimé ? : server
Quel indicateur doit être ajouté aux cookies dans l'en-tête de réponse HTTP Set-Cookie pour garantir qu'ils ne sont transmis que via HTTPS, les protégeant ainsi de toute exposition lors de transmissions non cryptées ? : secure
Quel indicateur doit être ajouté aux cookies dans l'en-tête de réponse HTTP Set-Cookie pour empêcher leur accès via JavaScript, améliorant ainsi la sécurité contre les attaques XSS ? : httponly
Dans une configuration de politique de sécurité du contenu (CSP), quelle propriété peut être définie pour définir d'où les scripts peuvent être chargés ? : script-src
Lors de la configuration de l'en-tête Strict-Transport-Security (HSTS) pour garantir que tous les sous-domaines d'un site utilisent également HTTPS, quelle directive doit être incluse pour appliquer la politique de sécurité à la fois au domaine principal et à ses sous-domaines ? : includeSubDomains
Quelle directive d'en-tête HTTP est utilisée pour empêcher les navigateurs d'interpréter les fichiers comme un type MIME différent de celui spécifié par le serveur, atténuant ainsi les attaques de reniflage de type de contenu ? : nosniff
Faites une requête GET à . Quel est le drapeau ?/api/users : THM{YOU_HAVE_JUST_FOUND_THE_USER_LIST}
Faites une demande POST et mettez à jour le pays de Bob du Royaume-Uni aux États-Unis. Quel est le drapeau ?/api/user/2 : THM{YOU_HAVE_MODIFIED_THE_USER_DATA}
Faites une demande DELETE pour supprimer l'utilisateur. Quel est le drapeau ?/api/user/1 : THM{YOU_HAVE_JUST_DELETED_A_USER}

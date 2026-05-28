Tache 7 : Metthodes d'authentification

Deux protocoles peuvent être utilisés pour l'authentification réseau dans les domaines Windows :

    -Kerberos: Utilisé par n'importe quelle version récente de Windows. Il s’agit du protocole par défaut dans tout domaine récent.
    -NetNTLM : Protocole d'authentification hérité conservé à des fins de compatibilité.

KerberosAuthentification :

L'authentification Kerberos est le protocole d'authentification par défaut pour toute version récente de Windows. Utilisateurs qui se connectent à un service en utilisant Kerberosdes billets leur seront attribués. Considérez les tickets comme la preuve d’une authentification antérieure. Les utilisateurs disposant de tickets peuvent les présenter à un service pour démontrer qu'ils se sont déjà authentifiés sur le réseau auparavant et qu'ils sont donc autorisés à l'utiliser.

1-L'utilisateur envoie son nom d'utilisateur et un horodatage chiffrés à l'aide d'une clé dérivée de son mot de passe au Centre de distribution de clés (KDC), un service généralement installé sur le contrôleur de domaine chargé de créer Kerberosbillets sur le réseau.

Le KDC créera et renverra un Billet d'octroi de billet (TGT), ce qui permettra à l'utilisateur de demander des billets supplémentaires pour accéder à des services spécifiques. La nécessité d'un ticket pour obtenir plus de tickets peut sembler un peu étrange, mais elle permet aux utilisateurs de demander des tickets de service sans transmettre leurs informations d'identification à chaque fois qu'ils souhaitent se connecter à un service. Avec le TGT, un Clé de session est remis à l'utilisateur, dont il aura besoin pour générer les requêtes suivantes.

Lorsqu'un utilisateur souhaite se connecter à un service sur le réseau comme un partage, un site Web ou une base de données, il utilisera son TGTdemander au KDC pour un Service d'octroi de billets (TGS). TGSsont des tickets qui permettent de se connecter uniquement au service spécifique pour lequel ils ont été créés. Pour demander un TGS, l'utilisateur enverra son nom d'utilisateur et un horodatage cryptés à l'aide de la clé de session, ainsi que le TGT et un Nom du principal du service (SPN), qui indique le nom du service et du serveur auxquels nous avons l'intention d'accéder.

En conséquence, le KDCnous enverra un TGS avec un Clé de session de service, dont nous devrons nous authentifier auprès du service auquel nous souhaitons accéder. Le TGS est crypté à l'aide d'une clé dérivée du Hash du propriétaire du service. Le propriétaire du service est le compte utilisateur ou machine sous lequel le service s'exécute. Le TGScontient une copie de la clé de session de service sur son contenu crypté afin que le propriétaire du service puisse y accéder en décryptant le TGS.

Une version actuelle de Windows utilisera-t-elle NetNTLM comme protocole d’authentification préféré par défaut ? : non
Lorsque nous faisons référence à Kerberos, quel type de billet nous permet de demander d'autres billets appelés TGS ? : Ticket Granting Ticket
Lors de l'utilisation de NetNTLM, le mot de passe d'un utilisateur est-il transmis sur le réseau à un moment donné ? non

Tache 8 : Arbres, forets et fudicies


Arbres

Imaginez, par exemple, que soudainement votre entreprise s’étende dans un nouveau pays. Le nouveau pays dispose de lois et de réglementations différentes qui vous obligent à mettre à jour vos GPO pour vous y conformer. De plus, vous disposez désormais de personnel informatique dans les deux pays, et chaque équipe informatique doit gérer les ressources qui correspondent à chaque pays sans interférer avec l’autre équipe. Alors que vous pourriez créer un complexe OUstructurer et utiliser les délégations pour y parvenir, en ayant une énorme ADla structure peut être difficile à gérer et sujette aux erreurs humaines.

Heureusement pour nous, Active Directory prend en charge l’intégration de plusieurs domaines afin que vous puissiez partitionner votre réseau en unités pouvant être gérées indépendamment. Si vous avez deux domaines qui partagent la même chose espace de noms (thm.local dans notre exemple), ces domaines peuvent être joints en un Arbre.

Forêts

Les domaines que vous gérez peuvent également être configurés dans différents espaces de noms. Supposons que votre entreprise continue de croître et acquière éventuellement une autre société appelée MHT Inc. Lorsque les deux sociétés fusionneront, vous aurez probablement des arbres de domaines différents pour chaque société, chacun géré par son propre service informatique. L'union de plusieurs arbres avec des espaces de noms différents dans le même réseau est connue sous le nom de forêt.

Relations de confiance

Avoir plusieurs domaines organisés en arbres et en forêt permet d'avoir un joli réseau compartimenté en termes de gestion et de ressources. Mais à un certain moment, un utilisateur de THM UK peut avoir besoin d'accéder à un fichier partagé sur l'un des serveurs MHT ASIA. Pour que cela se produise, les domaines disposés en arbres et en forêts sont réunis par relations de confiance.

En termes simples, avoir une relation de confiance entre les domaines vous permet d'autoriser un utilisateur à quitter le domaine THM UK pour accéder aux ressources du domaine MHT EU.

La relation de confiance la plus simple qui puisse être établie est une relation de confiance à sens unique. Dans une fiducie à sens unique, si Domain AAA fiducies Domain BBB, cela signifie qu'un utilisateur sur BBB peut être autorisé à accéder aux ressources sur AAA 

What is a group of Windows domains that share the same namespace called? : Arbre
What should be configured between two domains for a user in Domain A to access a resource in Domain B? : a Trust Relationship
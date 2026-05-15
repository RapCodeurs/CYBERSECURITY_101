Tache 5 : Autorisation 101

ls -lh : lister les autorisations de tous les dossiers

Bien qu'intimidant, thCes trois colonnes sont très importantes pour déterminer certaines caractéristiques d’un fichier ou d’un dossier et si nous y avons accès ou non. Un fichier ou un dossier peut avoir plusieurs caractéristiques qui déterminent à la fois quelles actions sont autorisées et quel utilisateur ou groupe a la capacité d'effectuer l'action donnée, comme les suivantes :

Lire : R
Écrire : W
Exécuter : X

Basculer entre les utilisateurs sur une installation Linux est un travail facile grâce au SU commande. À moins que vous ne soyez l'utilisateur root (ou que vous utilisiez les autorisations root via sudo), vous devez connaître deux choses pour faciliter cette transition des comptes utilisateurs :

L'utilisateur vers lequel nous souhaitons passer
Le mot de passe de l'utilisateur

su -l 
su 

rwxrwxrwx

Les 3 premiers,	Propriétaire : rwx
Suivant 3, Groupe : rwx
Les 3 derniers,	Autres : rwx

Conversion des autorisations symboliques en nombres
Lire : R - 4
Écrire : W - 2
Exécuter : X - 1
le total = rwxrwxrwx = 777


Pourquoi cela est important
Comprendre les autorisations numériques est important car :

De nombreuses commandes Linux utilisent des valeurs numériques (par exemple chmod 755 file)
Vous pouvez rapidement identifier les risques de sécurité
Vous pouvez contrôler qui peut accéder aux fichiers sensibles


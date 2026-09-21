Introduction

Objectifs d'apprentissage :

    Comprendre ce que sont les bases de données, ainsi que les termes et concepts clés
    Comprendre les différents types de bases de données
    Comprendre ce qu'est SQL
    Comprendre et être capable d'utiliser les opérations SQL CRUD
    Comprendre et être capable d'utiliser les opérations de clauses SQL
    Comprendre et être capable d'utiliser les opérations SQL
    Comprendre et être capable d'utiliser les opérateurs SQL
    Comprendre et être capable d'utiliser les fonctions SQL

Tache 1 : Bases de données

Clés primaires : une clé primaire est utilisée pour garantir que les données collectées dans une certaine colonne sont uniques. Autrement dit, il doit y avoir un moyen d’identifier chaque enregistrement stocké dans une table, une valeur unique à cet enregistrement et qui n’est répétée par aucun autre enregistrement de cette table. Pensez aux numéros d’inscription dans une université ; ce sont des numéros attribués à un étudiant afin qu’ils puissent être identifiés de manière unique dans les dossiers (car parfois les étudiants peuvent avoir le même nom). Une colonne doit être choisie dans chaque tableau comme clé primaire ; dans notre exemple, “id” aurait le plus de sens car un identifiant a été créé de manière unique pour chaque livre où, comme les livres peuvent avoir la même date de publication ou (dans des cas plus rares) le même titre de livre. Notez qu'il ne peut y avoir qu'une seule colonne de clé primaire dans un tableau.

Clés étrangères : une clé étrangère est une colonne (ou des colonnes) dans une table qui existe également dans une autre table de la base de données et fournit donc un lien entre les deux tables. Dans notre exemple, pensez à ajouter un champ “author_id” à notre table “Books” ; cela agirait alors comme une clé étrangère car l'author_id dans notre table Books correspond à la colonne “id” dans la table author. Les clés étrangères sont ce qui permet les relations entre différentes tables dans les bases de données relationnelles. Notez qu'il peut y avoir plusieurs colonnes de clé étrangère dans un tableau.

Tache 2 : SQL

L'interaction entre l'utilisateur final et la base de données peut être effectuée à l'aide de SQL (Structured Query Language). SQL est un langage de programmation qui peut être utilisé pour interroger, définir et manipuler les données stockées dans une base de données relationnelle.

Les avantages de SQL et des bases de données relationnelles
SQL est presque aussi omniprésent que les bases de données elles-mêmes, et pour cause. Voici quelques-uns des avantages liés à l’apprentissage et à l’utilisation de SQL :

    C'est rapide : les bases de données relationnelles (c'est-à-dire celles pour lesquelles SQL est utilisé) peuvent renvoyer des lots massifs de données presque instantanément en raison du peu d'espace de stockage utilisé et des vitesses de traitement élevées.

    Facile à apprendre : contrairement à  de nombreux langages de programmation, SQL est écrit en anglais simple, ce qui le rend beaucoup plus facile à comprendre. La nature hautement lisible du langage signifie que les utilisateurs peuvent se concentrer sur l’apprentissage des fonctions et de la syntaxe.

    Fiable : Comme  mentionné précédemment, les bases de données relationnelles peuvent garantir un niveau de précision en matière de données en définissant une structure stricte dans laquelle les ensembles de données doivent tomber pour être insérés.

    Flexible : SQL offre toutes sortes  de fonctionnalités lorsqu'il s'agit d'interroger une base de données ; cela permet aux utilisateurs d'effectuer de vastes tâches d'analyse de données de manière très efficace.

Tache 3 : Declaration de base de données et de tableau

Maintenant, la partie amusante ! Il est temps de commencer à apprendre SQLet comment l'utiliser pour interagir avec les bases de données. Dans cette tâche, nous allons commencer par apprendre à utiliser les instructions de base de données et de table. Après tout, ce sont ces déclarations dont nous avons besoin dans un premier temps pour créer nos bases de données/tables et commencer.

Déclarations de base de données
CRÉER UNE BASE DE DONNÉES

Si une nouvelle base de données est nécessaire, la première étape à suivre est de la créer. Cela peut être fait en SQL à l'aide de l'CREATE DATABASEinstruction. Cela se ferait en utilisant la syntaxe suivante : CREATE DATABASE database_name;

    CREATE DATABASES --> Creer la base de données
    USE NAME DATABASE --> Utiliser la base de données avec laquelle on veut interagir
    DROP DATABASE NAME_DATABASE --> Supprimer la base de données
    CREATE TABLE book_inventiry (
        book_id INT AUTO_INCREMENT PRIMARY KEY,
        book_name VARCHAR(255) NOT NULL, publication_date DATE );
    alter table book_inventiry add page_count int; --> Pour ajouter une nouvelle colonne

ALTERL'instruction peut être utilisée pour apporter des modifications à une table, telles que renommer des colonnes, modifier le type de données dans une colonne ou supprimer une colonne.
GOUTTE
Similairement à la suppression d’une base de données, vous pouvez également supprimer des tables à l’aide de l’DROPinstruction. Nous n'avons pas besoin de faire cela, mais la syntaxe que vous utiliseriez pour cela est la suivante

Tache 4 : Operations CRUD

CRUD
CRUD signifie Créer, Lire, Mettre à jour et Supprimer, qui sont considérés comme les opérations de base de tout système gérant des données.

Créer une opération (INSÉRER)
L'opération Créer créera de nouveaux enregistrements dans une table. Dans MySQL, cela peut être réalisé en utilisant l'instruction, comme indiqué ci-dessous.INSERT INTO

INSERT INTO books (id, name, published_date, description)
VALUES (1, "Android Security Internals", "2014-10-14", "An In-Depth Guide to Android's Security Architecture");

Opération de lecture (SELECT)
L'opération Lire, comme son nom l'indique, est utilisée pour lire ou récupérer des informations d'une table. Nous pouvons récupérer une colonne ou toutes les colonnes d’une table avec l’instruction, comme indiqué dans l’exemple suivant.SELECT

SELECT name, description FROM books;

Opération de mise à jour (UPDATE)
L'opération de mise à jour modifie un enregistrement existant dans une table, et la même instruction, , peut être utilisée pour cela.UPDATE
L'instructionUPDATE spécifie le tableau, dans ce cas, les livres, puis nous pouvons utiliserSET suivi du nom de la colonne que nous allons mettre à jour. LaWHERE clause spécifie quelle ligne mettre à jour lorsque la clause est remplie, dans ce cas, celle avec l'ID 1.

Opération Supprimer (SUPPRIMER)
L'opération de suppression supprime les enregistrements d'une table. Nous pouvons y parvenir grâce à cette déclaration.DELETE

En résumé, les résultats des opérations CRUD sont fondamentaux pour les opérations de données et lors de l’interaction avec les bases de données. Les déclarations qui leur sont associées sont énumérées ci-dessous.

Créer (INSÉRER l'instruction) - Ajoute un nouvel enregistrement à la table.
Lire (instruction SELECT) - Récupère l'enregistrement de la table.
Mise à jour (instruction UPDATE) - Modifie les données existantes dans le tableau.
Supprimer (instruction DELETE) - Supprime l'enregistrement de la table.

Tache 5 : Clauses

Une clause est une partie d'une déclaration qui spécifie les critères des données manipulées, généralement par une déclaration initiale. Les clauses peuvent nous aider à définir le type de données et la manière dont elles doivent être récupérées ou triées.

Dans les tâches précédentes, nous avons déjà utilisé certaines clauses, telles queFROM celle utilisée pour spécifier la table à laquelle nous accédons avec notre instruction etWHERE , qui spécifie quels enregistrements doivent être utilisés.

Cette tâche se concentrera sur d’autres clauses :DISTINCT ,GROUP BY ,ORDER BY , et HAVING

Clause DISTINCTE
La clause DISTINCT est utilisée pour éviter les enregistrements en double lors d'une requête, en renvoyant uniquement des valeurs uniques.

GROUPE BY Clause
La clause GROUP BY regroupe les données de plusieurs enregistrements et regroupe les résultats de la requête en colonnes. Cela peut être utile pour agréger des fonctions.

ORDER BY Clause
La ORDER BY clause peut être utilisée pour trier les enregistrements renvoyés par une requête par ordre croissant ou décroissant. L’utilisation de fonctions telles que et peut nous aider à y parvenir, comme indiqué ci-dessous dans les deux exemples suivants.ASC, DESC

Clause HAVING
La clause est utilisée HAVING avec d’autres clauses pour filtrer des groupes ou des résultats d’enregistrements en fonction d’une condition. Dans le cas de GROUP BY , il évalue la condition àTRUE ouFALSE , contrairement à laWHERE clause HAVING filtre les résultats une fois l'agrégation effectuée.

Tache 6 : Operateurs

Opérateurs logiques
Ces opérateurs testent la vérité d'une condition et renvoient une valeur booléenne deTRUE ouFALSE . Explorons ensuite certains de ces opérateurs.

Opérateur LIKE
L'LIKEopérateur est couramment utilisé en conjonction avec des clauses telles queWHERE afin de filtrer des modèles spécifiques dans une colonne.
select \* from books where name like "%Android%" or name like "%ios%";

AND Opérateur
L'AND opérateur utilise plusieurs conditions dans une requête et renvoie TRUE si toutes sont vraies.
select \* from books where category = "Offensive Security" and name = "Bug bounty Bootcamp";

Opérateur OR
L'ORopérateur combine plusieurs conditions dans les requêtes et renvoieTRUE si au moins une de ces conditions est vraie.
select \* from books where name like "%Android%" or name like "%ios%";

NOT Opérateur
L'NOT opérateur inverse la valeur d'un opérateur booléen, ce qui nous permet d'exclure une condition spécifique
select \* from books where not description like "%guide%";

ENTRE Opérateur
L'BETWEEN opérateur nous permet de tester si une valeur existe dans une plage définie.
select \* from books where id between 2 and 4;

Égal à l'opérateur
L'= opérateur (Égal) compare deux expressions et détermine si elles sont égales, ou il peut vérifier si une valeur correspond à une autre dans une colonne spécifique.
select \* from books where name = "designing Secure Software";

Pas égal à Opérateur
L'!=opérateur (non égal) compare les expressions et teste si elles ne sont pas égales ; il vérifie également si une valeur diffère de celle d'une colonne.
select \* from books where category != "Offensive Security";

Moins qu'un opérateur
L'< opérateur (inférieur à) compare si l'expression avec une valeur donnée est inférieure à celle fournie.
select \* from books where published_date < "2020-01-01";

Plus grand que l'opérateur
L'>opérateur (supérieur à) compare si l'expression avec une valeur donnée est supérieure à celle fournie.
select \* from books where published_date > "2020-01-01";

Inférieur ou égal et supérieur ou égal aux opérateurs
L'<= opérateur (inférieur ou égal) compare si l'expression avec une valeur donnée est inférieure ou égale à celle fournie. D'autre part, l'>= opérateur (supérieur ou égal) compare si l'expression avec une valeur donnée est supérieure ou égale à celle fournie. Observons quelques exemples des deux ci-dessous.

Tache 7 : Fonctions

Fonction CONCAT()
Cette fonction est utilisée pour additionner deux ou plusieurs chaînes. Il est utile de combiner du texte provenant de différentes colonnes
select concat(name, "is a type of ", category, " book.") as book_info from books;

Fonction GROUP_CONCAT()
Cette fonction peut nous aider à concaténer les données de plusieurs lignes en un seul champ. Explorons un exemple de son utilisation
select category, group_concat(name separator ", ") as books from books group by category;

Fonction SUBSTRING()
Cette fonction récupérera une sous-chaîne d'une chaîne dans une requête, en commençant à une position déterminée. La longueur de cette sous-chaîne peut également être spécifiée.
select substring(published_date, 1, 4) as published_year from books;

Fonction LENGTH()
Cette fonction renvoie le nombre de caractères dans une chaîne. Cela inclut les espaces et la ponctuation. Nous pouvons trouver un exemple ci-dessous.
SELECT LENGTH(name) AS name_length FROM books;

Fonctions agrégées
Ces fonctions regroupent la valeur de plusieurs lignes dans un critère spécifié dans la requête ; elles peuvent combiner plusieurs valeurs en un seul résultat.
Fonction COUNT()
Cette fonction renvoie le nombre d'enregistrements dans une expression, comme le montre l'exemple ci-dessous.
select count(\*) as total_books from books;

Fonction SUM()
Cette fonction additionne toutes les valeurs (non NULL) d'une colonne déterminée.
SELECT SUM(price) AS total_price FROM books;

Fonction MAX()
Cette fonction calcule la valeur maximale dans une colonne fournie dans une expression.
SELECT MAX(published_date) AS latest_book FROM books;

Fonction MIN()
Cette fonction calcule la valeur minimale dans une colonne fournie dans une expression.
SELECT MIN(published_date) AS earliest_book FROM books;

Questions

Quel type de base de données devriez-vous envisager d’utiliser si les données que vous allez stocker varient considérablement dans leur format ? : Non-relational database
Quel type de base de données devriez-vous envisager d’utiliser si les données que vous allez stocker seront de manière fiable dans le même format structuré ? : relational database
Dans notre exemple, une fois qu'un enregistrement d'un livre est inséré dans notre table « Livres », il serait représenté par un \_\_\_ dans cette table ? : row
Quel type de clé fournit un lien d’une table à une autre ? : foreign key
quel type de clé garantit qu'un enregistrement est unique dans une table ? : primary key
Qu'est-ce qui sert d'interface entre une base de données et un utilisateur final ? : DBMS
Quel langage de requête peut être utilisé pour interagir avec une base de données relationnelle ? : SQL
À l’aide de la base de données,tools*db quel est le nom de l’outil duhacking_tools tableau qui peut être utilisé pour effectuer des attaques de type « man-in-the-middle » sur les réseaux sans fil ? : wi-fi pineapple
En utilisant la base de données, quelle est la catégorie partagée pour USB Rubber Ducky et Bash Bunny ? tools_db : usb attacks
Using the tools_db database, what is the total number of distinct categories in the hacking_tools table? : select category, count(*) from hacking*tools group by category;
En utilisant la base de tools_db données, quel est le premier outil (par nom) par ordre croissant à partir du tableau ? hacking_tools : select * from hacking*tools order by name asc;
En utilisant la base de tools_db données, quel est le premier outil (par nom) par ordre décroissant du tableau ? hacking_tools : select \* from hacking_tools order by name desc;
Using the tools_db database, which tool falls under the Multi-tool category and is useful for pentesters and geeks? : select * from hacking*tools where category = "Multi-tool" and description like "%pentesters%";
En utilisant la tools_db base de données, quelle est la catégorie d'outils dont le montant est supérieur ou égal à 300 ? : select * from hacking_tools where amount >= 300;
En utilisant la base de tools_db données, quel outil entre dans la catégorie Intelligence réseau avec un montant inférieur à 100 ? : SELECT name FROM hacking_tools WHERE category = 'Network intelligence' AND amount < 100;
À l’aide de la base de données tools_db , quel est l’outil avec le nom le plus long en fonction de la longueur des caractères ? : SELECT name FROM hacking_tools ORDER BY LENGTH(name) DESC LIMIT 1;
En utilisant la tools_db base de données, quelle est la somme totale de tous les outils ?: select sum(amount) from hacking_tools; : SELECT GROUP_CONCAT(name SEPARATOR ' & ') FROM hacking_tools WHERE amount % 10 != 0;

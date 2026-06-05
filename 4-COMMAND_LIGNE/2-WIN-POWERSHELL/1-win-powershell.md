Objectifs d'apprentissage

C'est la deuxième pièce du Ligne de commande module. C'est une salle d'introduction à PowerShell, le deuxième utilitaire de ligne de commande —uniquement historiquement— conçu pour le système d'exploitation Windows.

    Apprendre quoi PowerShellest et ses capacités.
    Comprendre la structure de base de PowerShell’langue s.
    Apprenez et exécutez quelques bases PowerShellcommandes.
    Comprendre PowerShell’de nombreuses applications dans le secteur de la cybersécurité.

PowerShellest un outil puissant de Microsoft conçu pour l'automatisation des tâches et la gestion de la configuration. Il combine une interface de ligne de commande et un langage de script construit sur le .Cadre NET. Contrairement aux anciens outils de ligne de commande textuels, PowerShellest orienté objet, ce qui signifie qu'il peut gérer des types de données complexes et interagir plus efficacement avec les composants du système. Initialement exclusif à Windows, PowerShells'est récemment étendu pour prendre en charge macOS et Linux, ce qui en fait une option polyvalente pour les professionnels de l'informatique sur différents systèmes d'exploitation.

Jeffrey Snover, un ingénieur de Microsoft, s'est rendu compte que Windows et Unix géraient les opérations système différemment—Windows utilisait des données structurées et des API, tandis qu'Unix traitait tout comme des fichiers texte. Cette différence rendait le portage des outils Unix vers Windows peu pratique. La solution de Snover a été de développer une approche orientée objet, combinant la simplicité des scripts avec la puissance du .Cadre NET. Sorti en 2006, PowerShell permettait aux administrateurs d'automatiser les tâches plus efficacement en manipulant des objets, offrant ainsi une intégration plus approfondie avec les systèmes Windows.

Comment appelle-t-on l’approche avancée utilisée pour développer PowerShell ? : Object-Oriented
Comment récupéreriez-vous une liste de commandes qui commencer par le verbe Remove? : Get-Command -Name Remove*
Quelle applet de commande a son homologue traditionnelle echo comme alias ? : Write-Output
Quelle est la commande pour récupérer un exemple d'utilisation de l'applet de commande New-LocalUser? : Get-Help New-LocalUser -Examples



Tache 1 : Notions de base sur Powershell

Pour faciliter la transition pour les professionnels de l'informatique, PowerShell inclut des alias —qui sont des raccourcis ou des noms alternatifs pour les applets de commande— pour de nombreuses commandes Windows traditionnelles. Indispensable pour les utilisateurs déjà familiarisés avec d'autres outils de ligne de commande, Get-Alias répertorie tous les alias disponibles. Par exemple, dir est un alias pour Get-ChildItem, et cd est un alias pour Set-Location.


Les Cmdlets suivent une cohérence Verb-Noun convention de dénomination. Cette structure permet de comprendre facilement ce que fait chaque applet de commande. Le Verb décrit l'action, et le Noun spécifie l'objet sur lequel l'action est effectuée. Par exemple:

    Get-Content: Récupère (obtient) le contenu d'un fichier et l'affiche dans la console.
    Set-Location: Modifie (définit) le répertoire de travail actuel.

PS : qui signifie PowerShell
Get-Command : affiche toutes les commandes 
Get-Command -CommandType "Function" : affiche toutes les commandes de type FUNCTIONS
Get-Alias : répertorie tous les alias disponibles
Find-Module -Name "PowerShell*"  :  rechercher des modules (collections d'applets de commande) dans des référentiels en ligne comme le PowerShell Galerie, nous pouvons y parvenir en filtrant le Name propriété et ajout d'un caractère générique (*) au nom partiel du module
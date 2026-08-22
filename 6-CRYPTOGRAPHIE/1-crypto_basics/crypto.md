Tache 1 : Introduction


Objectifs d'apprentissage

Après avoir terminé cette salle, vous apprendrez ce qui suit :

    Termes clés de la cryptographie
    Importance de la cryptographie
    Chiffre de César
    Chiffres symétriques standards
    Chiffres asymétriques courants
    Mathématiques de base couramment utilisées en cryptographie

Tache 2 : Importance de la cryptographie

Le but ultime de la cryptographie est d’assurer une communication sécurisée en présence d’adversaires. Le terme sécurisé inclut la confidentialité et intégritédes données communiquées. La cryptographie peut être définie comme la pratique et l’étude de techniques de communication sécurisée et de protection des données où l’on s’attend à la présence d’adversaires et de tiers. En d’autres termes, ces adversaires ne devraient pas être en mesure de divulguer ou de modifier le contenu des messages.

La cryptographie est utilisée pour protéger la confidentialité, intégrité, et authenticité. À notre époque, vous utilisez la cryptographie quotidiennement et vous lisez presque certainement ceci via une connexion cryptée. Considérez les scénarios suivants dans lesquels vous utiliseriez la cryptographie :

    - Lorsque vous vous connectez à TryHackMe, vos informations d'identification sont cryptées et envoyées au serveur afin que personne ne puisse les récupérer en espionnant votre connexion.
    - Lorsque vous vous connectez SSH, votre SSHle client et le serveur établissent un tunnel crypté afin que personne ne puisse écouter votre session.
    - Lorsque vous effectuez des opérations bancaires en ligne, votre navigateur vérifie le certificat du serveur distant pour confirmer que vous communiquez avec le serveur de votre banque et non avec celui d'un attaquant.
    - Lorsque vous téléchargez un fichier, comment vérifier s'il a été téléchargé correctement ? La cryptographie fournit une solution via des fonctions de hachage pour confirmer que votre fichier est identique à celui d'origine.

Nous venons d’introduire plusieurs nouveaux termes, et nous devons les apprendre pour comprendre tout texte sur la cryptographie. Les termes sont énumérés ci-dessous :

    - Le texte en clair est le message ou les données originales et lisibles avant qu'ils ne soient cryptés. Il peut s'agir d'un document, d'une image, d'un fichier multimédia ou de toute autre donnée binaire.
    - Le texte chiffré est la version brouillée et illisible du message après cryptage. Idéalement, nous ne pouvons obtenir aucune information sur le texte en clair original, à l’exception de sa taille approximative.
    - Le chiffrement est un algorithme ou une méthode permettant de convertir du texte en clair en texte chiffré et inversement. Un chiffrement est généralement développé par un mathématicien.
    - La clé est une chaîne de bits que le chiffrement utilise pour crypter ou décrypter les données. En général, le chiffrement utilisé est de notoriété publique ; cependant, la clé doit rester secrète à moins qu'il ne s'agisse de la clé publique du chiffrement asymétrique. Nous visiterons le cryptage asymétrique dans une tâche ultérieure.
    - Le chiffrement est le processus de conversion d'un texte en clair en texte chiffré à l'aide d'un chiffrement et d'une clé. Contrairement à la clé, le choix du chiffrement est divulgué.
    - Le décryptage est le processus inverse du cryptage, qui consiste à reconvertir le texte chiffré en texte clair à l'aide d'un chiffrement et d'une clé. Même si le chiffrement serait de notoriété publique, récupérer le texte en clair sans connaître la clé devrait être impossible (irréalisable).

Comment appelle-t-on le texte en clair crypté ? : ciphertext
Comment appelle-t-on le processus qui renvoie le texte en clair ? : decryption
Faut-il faire confiance à DES ? : non
Quand AES a-t-il été adopté comme norme de cryptage  : 2001
Qu'est-ce que 1001 ⊕ 1010 ? : 0011
Qu'est-ce que 60%12 ? : 0
Qu'est-ce que 118613842%9091 ? 3565



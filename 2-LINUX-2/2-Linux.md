Tache 2 : Processus 101

ps : liste des processus en cours d'exécution en tant que session de notre utilisateur et quelques informations supplémentaires telles que son code d'état


ps aux : Pour voir les processus exécutés par d'autres utilisateurs et ceux qui ne s'exécutent pas à partir d'une session (c'est-à-dire les processus système), nous devons fournir aux au ps commande comme ceci

top : Une autre excellente commande pour avoir un aperçu de votre système
kill  : Tuer le processus

Vous trouverez ci-dessous quelques-uns des signaux que nous pouvons envoyer à un processus lorsqu'il est tué :

SIGTERM - Tuez le processus, mais laissez-le effectuer certaines tâches de nettoyage au préalable
SIGKILL - Tuer le processus - ne fait aucun nettoyage après coup
SIGSTOP - Arrêter/suspendre un processus

Verifier les systemes qui tournent : systemctl list-units --type=service --state=running

Démarrage des processus/services au démarrage : systemctl -- Start
                                                            Stop
                                                            Enable
                                                            Disable
                                                            Status

fg : Pour mettre le processus en arriere plan

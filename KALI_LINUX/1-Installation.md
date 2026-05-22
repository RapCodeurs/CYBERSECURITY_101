Pour L'imstallation de Kali LINUX sur mon PC windows :

1ere etape :

        Sur L'invite de commande windows CMD :

        - dism.exe /online /eanble-feature /featurename:VirtualMachinePlatform /all /norestart
        - dism.exe /online /eanble-feature /featurename:Microsoft-windows-Subsystem-Linux /all

2eme etape :

        - telecharger le dernier package de mise a jour du noyau linux sur microsoft
        - Ensuite l'installer sur ta machine windows 11

3eme etape :

        Sur L'invite de commande windows CMD :
        
        - wsl --set-default-version 2  ----> choisir la verion de wsl
        - wsl.exe --list --online      ----> Lister toutes les versions linux sur le noyau
        - wsl --install -d kali-linux  ----> S'il ya une erreur faudra mettre a jour ( wsl --update ) et ensuite relancer

4eme etape :

        Pour l'installation de l'interface graphique 

        - sudo apt update
        - sudo apt install kali-win-kex
        - sudo kex --win -s  --------> Lancer le mode fenetre l'un des 3 modes graphique 

arreter kali linux 

        - kex --win --stop
        - wsl -t kali-linux

        
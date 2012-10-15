Free Backup
===========

Ce script permet de garder une sauvegarde à jour d'un site web hébergé sur pagespersos.free.fr.
A chaque lancement du script, les nouveaux fichiers ou les fichiers ayant subit des modifications seront téléchargés,
et les fichiers qui ne sont plus sur le serveur seront supprimés de la sauvegarde locale.

Un dump de la base de données sera téléchargé et daté.

Utilisation
-----------

    ./free_backup.sh <login> <password> <destination dir>

Exemple

    $ ./free_backup.sh monsiteperso toto ~/bakup_monsiteperso
      # Telecharge les fichiers du site perso (...)
      # Telecharge un dump de la base de donnees
    $ ls ~/backup_monsiteperso/
    db files
    $ ls ~/backup_monsiteperso/db
    15-10-2012_12-10.sql.gz
    $ ls ~/backup_monsiteperso/files
    index.html images/
    
    
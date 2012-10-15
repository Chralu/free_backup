#!/usr/bin/env bash
login=$1
password=$2
destination=$3

if [ $# -ne 3 ]
then
  echo "Usage : $0 <login> <password> <destination dir>"
  exit 1
fi

mkdir -p "$destination/files"
lftp ftp://$login:$password@ftpperso.free.fr -e "mirror -e / $destination/files/ ; quit"

mkdir -p "$destination/db"
lftp -e "open http://sql.free.fr ; set http:post-content-type application/x-www-form-urlencoded ; quote post /backup.php 'login='$login'&password='$password'&check=1&all=1' > $destination/db/`date +'%d-%m-%Y_%H-%M'`.sql.gz ; bye"


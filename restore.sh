NAME=$1

echo "[+] Restoring database from directory ./backups ..."

docker-compose exec db mongorestore --gzip --archive="/data/backups/$NAME"

echo "[+] Restore is successful!"

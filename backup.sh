NAME=$1
CURRENT_DATE=$(date +%Y_%m_%d_%H_%M)

echo "[+] Backup database to directory ./backups ..."

docker-compose exec db sh -c "mongodump --gzip --archive" > "./backups/${CURRENT_DATE}.dump"

echo "[+] Backup is successful!"

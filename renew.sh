cd /var/www/nextfree-web

certbot renew \
	--cert-name admin.nextfree.com.ua \
	--webroot-path /var/www/nextfree-web/https

/usr/local/bin/docker-compose restart proxy

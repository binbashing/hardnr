#!/bin/sh
set -e 
echo "dns_digitalocean_token = ${DIGITALOCEAN_TOKEN}" > /root/certbot-creds.ini
chmod 600 /root/certbot-creds.ini
certbot certonly -n \
        --agree-tos \
        --dns-digitalocean \
        --dns-digitalocean-credentials /root/certbot-creds.ini \
        --email ${EMAIL} \
        --domain *.${DOMAIN} \
        --deploy-hook="/certs/copy-certs.sh"

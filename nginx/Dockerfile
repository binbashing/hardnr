FROM owasp/modsecurity-crs:nginx-alpine

ADD https://raw.githubusercontent.com/mitchellkrogza/nginx-ultimate-bad-bot-blocker/master/install-ngxblocker /usr/local/sbin/install-ngxblocker
RUN apk add --update bind-tools && \
    ln -s /etc/nginx/conf.d /etc/nginx/sites-available && \
    cd /usr/local/sbin/ && \
    chmod +x install-ngxblocker && \
    ./install-ngxblocker -x && \
    ./setup-ngxblocker -x -e conf

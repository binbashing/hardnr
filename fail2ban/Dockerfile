FROM alpine

RUN apk update && \
	apk upgrade && \
	apk add git fail2ban && \
	rm /etc/fail2ban/jail.d/alpine-ssh.conf

ENTRYPOINT ["/usr/bin/fail2ban-server", "-f", "-x", "-v", "start" ]

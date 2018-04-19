FROM certbot/dns-google

RUN apk add --no-cache --update curl

RUN curl -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x /usr/local/bin/kubectl

COPY cert-deploy.sh /usr/local/bin

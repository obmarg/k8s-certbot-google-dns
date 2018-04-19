This repository contains a simple docker image that runs
certbot-google-cloud-dns, writes the resulting certificate to a kubernetes
secret, then updates a kubernetes ingress to use that certificate.

There's also some k8s yaml files that can be used as templates for deploying to
kubernetes.

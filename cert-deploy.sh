#!/bin/sh
set -euo pipefail
IFS=$'\n\t'

DATE=$(date +%Y-%m-%d)

kubectl create secret --namespace=$CERT_NAMESPACE generic $CERT_SECRET-$DATE --from-file=tls.crt=/etc/letsencrypt/live/$DOMAIN/fullchain.pem --from-file=tls.key=/etc/letsencrypt/live/$DOMAIN/privkey.pem
kubectl patch ingress --namespace=$CERT_NAMESPACE $INGRESS_NAME -p "{\"spec\": {\"tls\": [{\"secretName\": \"$CERT_SECRET-$DATE\"}]}}"

#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

kubectl create secret --namespace=certbot generic google-creds --from-file=creds.json=$1

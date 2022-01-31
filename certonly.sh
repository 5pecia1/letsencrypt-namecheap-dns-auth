#!/bin/bash

TEST_OPTION=""
if [[ "$DRY_RUN" == "true" ]]; then
    TEST_OPTION="--dry-run --debug"
fi
certbot $TEST_OPTION --text --agree-tos --email ${CERT_EMAIL} -d ${CERT_DOMAIN} --manual --preferred-challenges dns --expand --renew-by-default --non-interactive --manual-public-ip-logging-ok certonly --manual-auth-hook=/home/letsencrypt-namecheap-dns-auth.sh
#!/bin/bash

SLEEP_TIME=60d

TEST_OPTION=""
if [[ "$DRY_RUN" == "true" ]]; then
    TEST_OPTION="--dry-run --debug"
    SLEEP_TIME=1m
fi
trap exit TERM
while :; do
    certbot $TEST_OPTION --text --agree-tos --email ${CERT_EMAIL} --cert-name ${CERT_DOMAIN} --manual --preferred-challenges dns --expand --renew-by-default --non-interactive --manual-public-ip-logging-ok renew --manual-auth-hook=/home/letsencrypt-namecheap-dns-auth.sh
    echo sleep $SLEEP_TIME
    sleep $SLEEP_TIME
    # wait $${!}
done

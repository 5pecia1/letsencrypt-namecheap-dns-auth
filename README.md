# automatic letsencrypt namecheap dns auth with docker

This is an automation code for DNS challenge that can be used when HTTP challenge cannot be done while using namecheap.
In my case, I had no choice but to choose DNS challenge because the telecommunication carrier blocked port 80 from being used.

## Start

1. set namecheap api
2. `cp .env-namecheap-template .env-namecheap`
3. `cp .env-nginx-template .env-nginx`
3. edit `.env-namecheap`, `.env-nginx`
4. edit `DRY_RUN env` in docker-compse.yaml
4. `docker-compose up -d`

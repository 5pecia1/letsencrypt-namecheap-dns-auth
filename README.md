# automatic letsencrypt namecheap dns auth with docker

## Start

1. set namecheap api
2. `cp .env-namecheap-template .env-namecheap`
3. `cp .env-nginx-template .env-nginx`
3. edit `.env-namecheap`, `.env-nginx`
4. edit `DRY_RUN env` in docker-compse.yaml
4. `docker-compose up -d`

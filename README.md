[![GitHub release](https://img.shields.io/github/release/oliverlorenz/docker-nginx-proxy-external-service-companion.svg)](https://github.com/oliverlorenz/docker-nginx-proxy-external-service-companion/releases)
[![Image info](https://images.microbadger.com/badges/image/oliverlorenz/nginx-proxy-external-service-companion.svg)](https://hub.docker.com/r/oliverlorenz/nginx-proxy-external-service-companion "Click to view the image on Docker Hub")
[![Docker stars](https://img.shields.io/docker/stars/oliverlorenz/nginx-proxy-external-service-companion.svg)](https://hub.docker.com/r/oliverlorenz/nginx-proxy-external-service-companion "Click to view the image on Docker Hub")
[![Docker pulls](https://img.shields.io/docker/pulls/oliverlorenz/nginx-proxy-external-service-companion.svg)](https://hub.docker.com/r/oliverlorenz/nginx-proxy-external-service-companion "Click to view the image on Docker Hub")

# docker-nginx-proxy-external-service-companion

This project is a supplement to the integration of external servers in interaction with [jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy) mechanism.

## Usage

Let's say you want to redirect to a google cloud storage. First, make sure that the basic setup of the nginx proxy is running.

Then you can start this container. It doesn't do much more than configure the appropriate configuration. Example:

```
docker run -it -d \
  -e "UPSTREAM=https://storage.googleapis.com/<bucketname>" \
  -e "VIRTUAL_HOST=my.tdl" \
  --volumes-from="nginx-proxy" \
  oliverlorenz/nginx-proxy-external-service
```

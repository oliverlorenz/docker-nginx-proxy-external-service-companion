#!/bin/sh
envsubst "\${UPSTREAM}" < config.tmpl # > /etc/nginx/vhost.d/${VIRTUAL_HOST}

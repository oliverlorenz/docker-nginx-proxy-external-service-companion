#!/bin/sh
envsubst < config.tmpl > /etc/nginx/vhost.d/${VIRTUAL_HOST}

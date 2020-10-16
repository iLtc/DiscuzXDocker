FROM php:5-apache

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        unzip \
    ; \
    rm -rf /var/lib/apt/lists/*

RUN set -eux; \
    cd /tmp; \
    curl -fsSL -o DiscuzX.zip http://download.comsenz.com/DiscuzX/3.2/Discuz_X3.2_SC_GBK.zip ; \
    unzip DiscuzX.zip; \
    cp -r upload/* /var/www/html/; \
    

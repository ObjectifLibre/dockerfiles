FROM python:3.7-slim-buster

RUN  apt-get update \
    && apt-get install --no-install-recommends -y \
        apache2 \
        libapache2-mod-wsgi-py3 \
        gcc \
        python3-dev \
    && pip install cloudkitty \
    && mkdir /etc/cloudkitty \
    && apt-get purge -y \
        gcc \
        python3-dev \
    && apt-get clean -y \
    && rm -rf /var/cache/apt \
    && rm -rf /var/lib/apt/lists/*

COPY api_paste.ini /etc/cloudkitty/api_paste.ini

RUN  useradd cloudkitty --create-home --home-dir /home/cloudkitty \
    && mkdir -p /var/www/cloudkitty \
    && cp /usr/local/lib/python3.7/site-packages/cloudkitty/api/app.wsgi /var/www/cloudkitty \
    && chown -R cloudkitty:cloudkitty /var/www/cloudkitty \
    && chown -R cloudkitty:cloudkitty /etc/cloudkitty \
    && ln -sf /dev/stdout /var/log/apache2/cloudkitty_error.log \
    && ln -sf /dev/stdout /var/log/apache2/cloudkitty_access.log \
    && ln -sf /dev/stdout /var/log/apache2/error.log \
    && ln -sf /dev/stdout /var/log/apache2/access.log

COPY apache_cloudkitty.conf /etc/apache2/sites-enabled/cloudkitty.conf

COPY run_apache.sh /root/run_apache.sh

CMD ["/root/run_apache.sh"]
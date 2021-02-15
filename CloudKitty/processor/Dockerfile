FROM python:3.7-slim-buster

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        gcc \
        python3-dev \
    && pip install cloudkitty PyMySQL redis \
    && mkdir \
        /etc/cloudkitty \
        /etc/cloudkitty-config \
    && apt-get purge -y \
        gcc \
        python3-dev \
    && apt-get clean -y \
    && rm -rf /var/cache/apt \
    && rm -rf /var/lib/apt/lists/*

CMD [ "cloudkitty-processor" ]
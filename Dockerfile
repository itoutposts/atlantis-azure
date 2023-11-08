FROM ghcr.io/runatlantis/atlantis:v0.26.0

RUN apk add py3-pip
RUN apk add --no-cache -q --virtual=build gcc musl-dev python3-dev libffi-dev openssl-dev cargo make      && pip install --no-cache-dir azure-cli -q      && apk del --purge build

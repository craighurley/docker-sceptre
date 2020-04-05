FROM        python:3.8-alpine3.11

WORKDIR     /workdir

COPY        docker-entrypoint.sh /usr/local/bin/

RUN         apk update \
            && apk add --no-cache \
                git

RUN         chmod +x /usr/local/bin/docker-entrypoint.sh \
            && pip3 install --no-cache-dir \
                sceptre==2.3.0 \
                sceptre-date-resolver==1.0.0 \
                sceptre-kms-resolver==1.0.0 \
                sceptre-ssm-resolver==1.1.0 \
                git+https://git@github.com/craighurley/sceptre-terminationprotection-hook.git@1.0.0#egg=sceptre-terminationprotection-hook \
                git+https://git@github.com/craighurley/sceptre-myip-resolver.git@1.0.0#egg=sceptre-myip-resolver

ENTRYPOINT  [ "docker-entrypoint.sh" ]

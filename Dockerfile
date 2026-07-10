FROM stalwartlabs/stalwart:v0.16.10-alpine

USER root

RUN mkdir -p /etc/stalwart \
    && mkdir -p /opt/stalwart-mail/data

COPY config/config.toml /etc/stalwart/config.toml

ENTRYPOINT ["stalwart"]

CMD ["--config", "/etc/stalwart/config.toml"]
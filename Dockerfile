FROM stalwartlabs/stalwart:v0.16.10-alpine

USER root

RUN mkdir -p /opt/stalwart-mail/etc

COPY config/config.toml /opt/stalwart-mail/etc/config.toml

ENTRYPOINT ["stalwart"]

CMD ["--config", "/opt/stalwart-mail/etc/config.toml"]
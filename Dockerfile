FROM stalwartlabs/stalwart:v0.16.10-alpine

COPY config/config.toml /opt/stalwart-mail/config.toml

ENTRYPOINT ["stalwart"]

CMD ["--config", "/opt/stalwart-mail/config.toml"]
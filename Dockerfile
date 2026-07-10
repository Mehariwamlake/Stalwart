FROM stalwartlabs/stalwart:v0.16.10-alpine

RUN mkdir -p /etc/stalwart

COPY config/config.toml /etc/stalwart/config.toml

ENTRYPOINT ["stalwart"]

CMD ["--config", "/etc/stalwart/config.toml"]
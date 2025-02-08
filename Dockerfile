FROM registry.astralinux.ru/astra/ubi18
RUN apt update; apt install -y prometheus-node-exporter
EXPOSE      9100
USER        nobody
ENTRYPOINT  [ "/usr/bin/prometheus-node-exporter" ]

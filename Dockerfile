FROM debian:sid

COPY entrypoint.sh /scripts/entrypoint.sh

RUN apt-get update \
	&& apt-get install -y aria2 \
	&& rm -rf /var/lib/apt/lists/* \
	&& chmod +x /scripts/entrypoint.sh

EXPOSE 6800

ENTRYPOINT ["/scripts/entrypoint.sh"]

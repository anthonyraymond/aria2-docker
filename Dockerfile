FROM debian:buster-20191014

COPY entrypoint.sh /scripts/entrypoint.sh

RUN apt-get update \
	&& apt-get install -y aria2 gosu \
	&& rm -rf /var/lib/apt/lists/* \
	&& chmod +x /scripts/entrypoint.sh \
	&& groupadd -r aria \
	&& useradd -m -r -g aria aria -u 1000

EXPOSE 6800

ENTRYPOINT ["/scripts/entrypoint.sh"]

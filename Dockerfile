FROM debian:jessie
MAINTAINER Matt Bentley <mbentley@mbentley.net>

RUN (apt-get update && apt-get install -y curl unzip)
RUN (curl -OL https://dl.bintray.com/mitchellh/consul/0.5.2_linux_amd64.zip &&\
  unzip 0.5.2_linux_amd64.zip &&\
  mv consul /usr/local/bin/ &&\
  rm 0.5.2_linux_amd64.zip)

ENTRYPOINT ["/usr/local/bin/consul"]
CMD ["--help"]

FROM alpine:3.11

RUN apk --no-cache add jq ca-certificates openssh-client sed

ARG PACKER_VER=1.6.1

RUN wget -O /tmp/packer.zip \
    "https://releases.hashicorp.com/packer/1.6.1/packer_1.6.1_linux_amd64.zip" \
  && unzip -o /tmp/packer.zip -d /usr/local/bin \
  && rm -f /tmp/packer.zip

ADD bin /opt/resource

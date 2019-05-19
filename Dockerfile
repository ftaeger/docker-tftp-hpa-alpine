FROM alpine:latest
LABEL maintainer="Florian Taeger <florian@taeger.cc>" version=1.0
RUN apk add --no-cache tftp-hpa
EXPOSE 69/udp
VOLUME /var/tftpboot
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/var/tftpboot"]

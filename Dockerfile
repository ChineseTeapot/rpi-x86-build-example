FROM hypriot/rpi-alpine-scratch:v3.4  

MAINTAINER Phoenix Lv <phoenix.lv@dorry.io>

COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN apk update && \
    apk upgrade && \
    apk add python

WORKDIR /home

COPY src/index.html ./

EXPOSE 8000

ENTRYPOINT ["python", "-m", "SimpleHTTPServer"] 

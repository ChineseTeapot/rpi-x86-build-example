FROM hypriot/rpi-alpine-scratch:v3.4  

MAINTAINER Phoenix Lv <phoenix.lv@dorry.io>

COPY qemu-arm-static /usr/bin/qemu-arm-static

RUN apk update && apk upgrade

ENTRYPOINT [] 

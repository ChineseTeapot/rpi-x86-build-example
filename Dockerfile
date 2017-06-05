FROM hypriot/rpi-alpine-scratch:v3.4  

MAINTAINER Phoenix Lv <phoenix.lv@dorry.io>

RUN apk update && apk upgrade

WORKDIR /home

COPY src/index.html ./

ENTRYPOINT ["python", "-m", "SimpleHttpServer"] 

FROM hypriot/rpi-alpine-scratch:v3.4  

MAINTAINER Phoenix Lv <phoenix.lv@dorry.io>

RUN apk update && \
    apk upgrade && \
    apk add python

WORKDIR /home

COPY src/index.html ./

EXPOSE 8000

ENTRYPOINT ["python", "-m", "SimpleHTTPServer"] 

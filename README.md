# Build arm docker image through Travis CI

## Description

__It is a correct example building arm docker image on x86 machine using travis CI.__

* `src` is a folder including a simple html page called `index.html`.
* `Dockerfile` is used to build a docker image with python http server to display `index.html`.
* `build` is an excutable to build the docker image.  
* `start` is an excutable to start a container of docker image.
* `.travis.yml` is a travis configuration file


## Travis CI building process
On master branch, when the code on master branch is pushed, the building process will be triggered automatically, and the image will be delivered on docker hub `dorrybamboo/rpi-x86-ex`

## Start a container on arm
On arm machine, eg, raspberry pi 3
 
```
docker run -d -p 8000:8000 dorrybamboo/rpi-x86-ex
```

Visit `arm_machine_ip:8000` on the browser with html page displayed.

## Explaination

### Docker image delivery

In order to deliver the docker image built by travis CI, the travis CI has to know the username and password of docker hub account.

You can change your docker hub account by reconfiguring `.travis.yml` by following steps:

* Remove `secure` attributes on `env.global` in `.travis.yml`.
* Change the value of `DOCKER_NAME` and `DOCKER_PASS` in `.env`.
* `./set_docker_account`.

# Description

__It is a correct example building arm docker image on x86 machine.__

* `src` is a folder including a simple html page called `index.html`.
* `Dockerfile` is used to build a docker image with python http server to display `index.html`.
* `build` is an excutable to build the docker image.  
* `start` is an excutable to start a container of docker image.
* `.travis.yml` is a travis configuration file

# Build the docker image 

```
./build
```

__If you run `./build` on x86, the image CAN be built successfully.__

# Start a container

```
./start
```

Visit `localhost:8000` on the browser with html page displayed.


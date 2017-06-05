# Description


*It is an error example when building arm docker image on x86 machine.*

* `src` is a folder including a simple html page called `index.html`.
* `Dockerfile` is used to build a docker image with python http server to display `index.html`.
* `build` is an excutable to build the docker image.  

# Build the docker image 

```
./build
```

*If you run `./build` on x86, the image cannot be built with error log.*

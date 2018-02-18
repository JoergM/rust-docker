# rust-docker

This is a little example project for building Docker images based on rust source code.

It uses the official rust image to build the target. Then the result will be copied into
a debian-slim image in order to remove the source and to get a small size. This is done
in a multi-stage build.

By using a debian image it is still possible to use the GNU targets for rust. 

The Dockerfile basically consists of the following steps:

* Building a dummy project with the dependencies to cache them in Docker
* Running the tests
* Building the release binary
* Copying the binary into a new image

Credits to Isaac Whitfield for the Docker caching of the dependencies https://whitfin.io/speeding-up-rust-docker-builds/

## Using the Dockerfile for other projects

If you want to use the Dockerfile in your own projects you just need to copy it and
change the two lines:

```
ENV NAME=rust-docker
```

to the name of the other binary.

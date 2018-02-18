# rust-docker

This is a little example project for building Docker images based on rust source code.

It uses the official rust image to build the target. Then the result will be copied into
a debian-slim image in order to remove the source and to get a small size. This is done
in a multi-stage build.

By using a debian image it is still possible to use the GNU targets for rust. 


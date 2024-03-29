# use a node base image from Dockerhub
FROM node:8-onbuild

# set maintainer
LABEL maintainer "xtos"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# expose port on docker
EXPOSE 8000

RUN apt-get update

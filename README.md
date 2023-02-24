# Simple-Dockerized-Node-App :ship:
---

## Purpose
> - Practise writing Dockerfiles.
> - Build an image.
> - Run a container.

## Steps to create the image
> - Create javescript file with the following content `console.log("Hello world");`.
> - Create Dockerfile and specify the base image as node, <b>NodeJs is the execution environment for JavaScript <b>. `FROM node:18.14.2-alpine3.17`

| Image | node:18.14.2-alpine3.17 |
| ----------- | ----------- |

> - Change the working directory to the location where all the subsequent instructions in the Dockerfile will be run relatively.  `WORKDIR /usr/app`
> - Copy the app file ***index.js*** from host to the docker container. `COPY index.js .`
> - Run the app once a container is created. `CMD ["node","index.js"]`

## How to the use the Dockerfile on your machine to build an image
> - Clone this repo
> - Change the working directory to the cloned repo.
> - On your terminal run `docker build -t [chosen-image-name] . `
>  >  `.` &rarr; indecates the current working directory, where the Dockerfile can be found.
> - Now run `docker images` , and check for the created image.

## How to run a container from the image, that you have created
`docker run -it --rm --name [chosen-container-name] [chosen-image-name] `
- to map ports use `-p [host-port]:[container-port] `
- to attach volume `--mount source=[volume-name],target=[mount-point-in-container]`

NOTE: Volume can be created through `docker volume create [volume-name]`

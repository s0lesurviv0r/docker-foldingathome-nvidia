# Folding at home on Docker

Docker image for Folding@home on linux

Github : [![https://github.com/s0lesurviv0r/docker-foldingathome-nvidia](https://img.shields.io/badge/Github-s0lesurviv0r%2Fdocker--foldingathome--nvidia-lightgrey)](https://github.com/s0lesurviv0r/docker-foldingathome-nvidia)

Docker : [![https://hub.docker.com/r/s0lesurviv0r/foldingathome-nvidia](https://img.shields.io/badge/Docker-s0lesurviv0r%2Ffoldingathome--nvidia-blue)](https://hub.docker.com/r/s0lesurviv0r/foldingathome-nvidia)


## Availables tags

- [lastest (Dockerfile)](https://github.com/s0lesurviv0r/docker-foldingathome-nvidia/blob/master/Dockerfile) - ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/s0lesurviv0r/foldingathome-nvidia/latest)![GitHub last commit (branch)](https://img.shields.io/github/last-commit/s0lesurviv0r/docker-foldingathome-nvidia/master)

## How to run this image

Install Nvidia container runtime first: https://docs.docker.com/config/containers/resource_constraints/#gpu

Start folding with GPU and every CPU core (CPUS=0):

```
docker run -d --name foldingathome-nvidia \
    --gpus all \
    -e USER="yourusername" \
    -e TEAM="yourteam" \
    -e PASSKEY="yourpasskey" \
    s0lesurviv0r/foldingathome-nvidia
```

Start folding with no GPU and 1 CPU core (CPUS=1) :

```
docker run -d --name foldingathome-nvidia \
    -e USER="yourusername" \
    -e TEAM="yourteam" \
    -e PASSKEY="yourpasskey" \
    -e GPU="false" \
    -e CPUS="0" \
    s0lesurviv0r/foldingathome-nvidia
```

## What if I have no team ?

Feel free to join infraBuilder team : 236450

## How to generate a passkey :

Go to : https://apps.foldingathome.org/getpasskey

*More information on https://foldingathome.org/support/faq/points/passkey/*

## Statistics

Visit https://stats.foldingathome.org/donors

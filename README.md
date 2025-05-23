# GoBetween Docker Deployment

## Purpose

This repository provides a Docker setup for [GoBetween](https://github.com/yyyar/gobetween).

The container is designed to run with an external configuration file mounted as a volume, allowing for flexible forwarding of TCP traffic in both on-premise and cloud environments.

## Usage

1. Edit `gobetween.toml` with your desired configuration.

2. Build the Docker image:

```bash
docker build -t gobetween-custom .
```

3. Run Docker container:
```bash
docker run -d \
  -v $(pwd)/config/gobetween.toml:/etc/gobetween/conf/gobetween.toml \
  -p 10443:10443 \
  --name gobetween \
  gobetween-custom

```
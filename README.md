# GoBetween Docker Image for Idonia

## Purpose

This Docker image runs [GoBetween](https://github.com/yyyar/gobetween), a modern TCP-based load balancer. It is configured to forward DICOM traffic (via TCP) from on-premises DICOM nodes to cloud-based servers.

The container is designed to accept an external configuration file mounted as a volume.

## Usage

1. Edit `gobetween.toml` with your target endpoints.

2. Build the Docker image:

```bash
docker build -t gobetween-idonia .

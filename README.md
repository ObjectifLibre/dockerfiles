# dockerfiles

This repository contains the Dockerfiles for Objectif Libre's official images.

## CloudKitty

If you wish to configure CloudKitty, the configuration files are located here :

- `/etc/cloudkitty/metrics.yml`
- `/etc/cloudkitty/cloudkitty.conf`

Please, refer to the [documentation of cloudkitty](https://docs.openstack.org/cloudkitty/latest/admin/configuration/configuration.html) if you don't know how to use theses files.

### api

Contains the Dockerfile for CloudKitty's API and its dependencies.

### processor

Contains the Dockerfile for CloudKitty's processor.

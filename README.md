Dockerfile for Hydra Network Utilities
======================================

This project contains files and scripts to build the a docker image containing
Hydra network utilities. A `Makefile` is provided to build and tag the image with
the git hash of this repository. `pipenv` is used to lock the installation to specific
versions of `hydra_network_utils`. This should ensure the image
can be reproduced exactly for each tag.

Building the image
==================

To build the image simply invoke the `Makefile`.

```bash
make
``` 


Registering the app/image
=========================

Once built in order to use the image with Hydra one must register the apps associated 
with `hydra-network-utils`.

The image has the ability to self register by executing `hydra-network-utils` as a container. 
The two commands below show how to do these two steps respecitvely. Note that you
will have to edit these commands to fit in with you particular docker configuration. 
For example specifying the correct docker volume and network if required.

```bash
docker run -v ${HYDRA_VOLUME}:/root/.hydra ${IMG} hydra-network-utils register ${IMG}
```
